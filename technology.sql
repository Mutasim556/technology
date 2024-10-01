-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2024 at 01:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `technology`
--

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `total_qty` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adjustments`
--

INSERT INTO `adjustments` (`id`, `reference_no`, `warehouse_id`, `document`, `total_qty`, `product_id`, `note`, `action`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'adj-1707363761', 1, 'admin/inventory/file/product/file/ADJUSTMENT_FILE1707363761.jpg', '0', '1', 'Test', '+', 1, 1, '2024-02-08 03:42:41', '2024-02-08 03:42:41'),
(2, 'adj-1707364735', 1, 'admin/inventory/file/product/file/ADJUSTMENT_FILE1707364735.jpg', '2', '1', 'TEest', '-', 1, 1, '2024-02-08 03:58:55', '2024-02-08 03:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=Inactive 1=Active',
  `delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Not Deleted 1=Deleted',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `username`, `image`, `email_verified_at`, `password`, `status`, `delete`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mutasim', 'admin@admin.com', '01724698392', 'mutasim', NULL, NULL, '$2y$12$HLtGGizRif/tkCXGwEBvXuAn6Z7nku05xQ6aIi65xZYQ8yZbhNPjC', 1, 0, 'Nktxlv8ek7SPfjski5CXBVmj7baggDL72L8quHTRCwKRnmrRqYAaYn5IyCe6', '2023-12-27 21:23:43', '2024-01-01 03:35:27'),
(2, 'Admin', 'ad@ad.com', '01724698393', 'ad', NULL, NULL, '$2y$12$j0lXSaKyr/SMfajg6sUMw.yNiX0a5b02NbCsqsSttuGB.erujxR3C', 1, 0, '302326', '2023-12-28 04:26:30', '2024-02-04 09:50:05'),
(3, 'Test', 'test@gmail.com', '32165498778', 'test123', NULL, NULL, '$2y$12$aQCUleyTP3eV0iZfW4DJTeCmecThDtauS4Ju9pUls2/vKcSFtUFRy', 1, 0, '803426', '2023-12-30 21:12:48', '2024-01-11 04:34:22'),
(4, 'Test2', 'test2@gmail.com', '32145678985', 'test2', NULL, NULL, '$2y$12$zS91mUSExngJkXSXeeFR2.OjeyF9rCntzn1nWzYfYuyqPHSI8of1W', 0, 1, NULL, '2023-12-31 08:59:38', '2023-12-31 09:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

CREATE TABLE `api_keys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_keys`
--

INSERT INTO `api_keys` (`id`, `api_key`, `created_at`, `updated_at`) VALUES
(1, 'fdd77a90f3msh8a9f787264252d4p1cb68ejsn41d6ad25230e', '2024-01-01 09:40:17', '2024-01-01 10:05:06');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_image` varchar(255) DEFAULT NULL,
  `brand_status` tinyint(1) NOT NULL DEFAULT 1,
  `brand_create_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_image`, `brand_status`, `brand_create_by`, `created_at`, `updated_at`) VALUES
(1, 'Hikvision', '', 1, 1, '2024-09-23 03:52:55', '2024-09-23 03:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) DEFAULT NULL,
  `category_status` tinyint(1) NOT NULL DEFAULT 1,
  `category_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Not Deleted 1=Deleted',
  `category_added_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_category_id`, `category_name`, `category_image`, `category_status`, `category_delete`, `category_added_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Network Cameras', '', 1, 0, 1, '2024-09-23 03:54:25', '2024-09-23 03:54:25'),
(2, 1, 'Network Video Recorders', '', 1, 0, 1, '2024-09-23 03:56:30', '2024-09-23 03:56:30'),
(3, 1, 'PTZ Cameras', '', 1, 0, 1, '2024-09-23 03:57:41', '2024-09-23 03:57:41'),
(4, 1, 'DeepinMind Intelligence', '', 1, 0, 1, '2024-09-23 03:57:55', '2024-09-23 03:57:55'),
(5, 1, 'Explosion-Proof and Anti-Corrosion Series', '', 1, 0, 1, '2024-09-23 03:58:12', '2024-09-23 03:58:12'),
(6, 1, 'Servers', '', 1, 0, 1, '2024-09-23 03:58:24', '2024-09-23 03:58:24'),
(7, 1, 'Storage', '', 1, 0, 1, '2024-09-23 03:58:39', '2024-09-23 03:58:39'),
(8, 1, 'Kits', '', 1, 0, 1, '2024-09-23 03:58:55', '2024-09-23 03:58:55'),
(9, 2, 'Turbo HD Cameras', '', 1, 0, 1, '2024-09-23 03:59:42', '2024-09-23 03:59:42'),
(10, 2, 'DVR', '', 1, 0, 1, '2024-09-23 03:59:59', '2024-09-23 03:59:59'),
(11, 2, 'PTZ Cameras', '', 1, 0, 1, '2024-09-23 04:00:16', '2024-09-23 04:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `default` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `lang`, `slug`, `default`, `status`, `delete`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'en', 1, 1, 0, '2024-01-01 04:36:10', '2024-01-01 06:21:12'),
(2, 'Bangla', 'bn', 'bn', 0, 1, 0, '2024-01-01 04:55:16', '2024-01-01 05:02:27'),
(3, 'Persian', 'fa', 'fa', 0, 0, 1, '2024-01-01 05:02:45', '2024-01-01 05:02:54'),
(4, 'Hindi', 'hi', 'hi', 0, 1, 0, '2024-01-01 06:27:57', '2024-01-01 06:27:57');

-- --------------------------------------------------------

--
-- Table structure for table `maintenances`
--

CREATE TABLE `maintenances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `secret_code` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `mail_option` varchar(255) NOT NULL,
  `mail_subject` varchar(255) NOT NULL,
  `mail_body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_27_095019_create_permission_tables', 1),
(6, '2023_12_27_101553_create_admins_table', 1),
(7, '2024_01_01_094807_create_languages_table', 2),
(8, '2024_01_01_145421_create_api_keys_table', 3),
(10, '2024_01_10_122602_create_maintenances_table', 4),
(11, '2024_01_14_115552_create_units_table', 5),
(12, '2024_01_15_154038_create_brands_table', 6),
(13, '2024_01_16_113225_create_sizes_table', 7),
(15, '2024_01_16_152135_create_parent_categories_table', 8),
(17, '2024_01_17_101945_create_categories_table', 9),
(18, '2024_01_17_151142_create_products_table', 10),
(20, '2024_01_21_114916_create_product_variants_table', 11),
(23, '2024_01_28_102931_create_warehouses_table', 13),
(24, '2024_01_21_130843_create_warehouse_prices_table', 14),
(25, '2024_01_30_121027_create_sessions_table', 15),
(26, '2023_06_07_000001_create_pulse_tables', 16),
(28, '2024_02_04_134433_create_adjustments_table', 17),
(30, '2024_09_22_153121_create_sub_categories_table', 18),
(31, '2024_09_23_090943_add_parent_category_id_to_products_table', 19),
(32, '2024_09_24_160434_create_solution_parent_categories_table', 20),
(33, '2024_09_24_160215_create_solution_categories_table', 21),
(34, '2024_09_24_160614_create_solution_sub_categories_table', 22),
(37, '2024_09_25_151127_create_support_parent_categories_table', 23),
(38, '2024_09_25_151134_create_support_categories_table', 23),
(39, '2024_09_26_113519_create_partner_parent_categories_table', 24),
(40, '2024_09_26_113526_create_partner_categories_table', 24),
(41, '2024_10_01_160113_add_product_group_to_products_table', 25),
(42, '2024_10_01_164301_add_short_description_to_products_table', 26);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(2, 'App\\Models\\Admin', 2),
(2, 'App\\Models\\Admin', 3),
(2, 'App\\Models\\Admin', 4);

-- --------------------------------------------------------

--
-- Table structure for table `parent_categories`
--

CREATE TABLE `parent_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_category_name` varchar(255) NOT NULL,
  `parent_category_image` varchar(255) DEFAULT NULL,
  `parent_category_status` tinyint(1) NOT NULL DEFAULT 1,
  `parent_category_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Not Deleted 1=Deleted',
  `parent_category_added_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parent_categories`
--

INSERT INTO `parent_categories` (`id`, `parent_category_name`, `parent_category_image`, `parent_category_status`, `parent_category_delete`, `parent_category_added_by`, `created_at`, `updated_at`) VALUES
(1, 'Network Products', '', 1, 0, 1, '2024-09-23 03:53:48', '2024-09-23 03:53:48'),
(2, 'Turbo HD Products', '', 1, 0, 1, '2024-09-23 03:54:02', '2024-09-23 03:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `partner_categories`
--

CREATE TABLE `partner_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) DEFAULT NULL,
  `category_status` tinyint(1) NOT NULL DEFAULT 1,
  `category_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Not Deleted 1=Deleted',
  `category_added_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_categories`
--

INSERT INTO `partner_categories` (`id`, `parent_category_id`, `category_name`, `category_image`, `category_status`, `category_delete`, `category_added_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hik-Partner Pro', '', 1, 0, 1, '2024-09-30 11:02:01', '2024-09-30 11:02:09'),
(2, 1, 'Find A Distributor', '', 1, 0, 1, '2024-09-30 11:10:33', '2024-09-30 11:10:33'),
(3, 2, 'Technology Partner Portal', '', 1, 0, 1, '2024-09-30 11:10:54', '2024-09-30 11:10:54'),
(4, 2, 'Find A Technology Partner', '', 1, 0, 1, '2024-09-30 11:11:15', '2024-09-30 11:11:15'),
(5, 2, 'Hikvision Embedded Open Platform 2.0 (HEOP)', '', 1, 0, 1, '2024-09-30 11:11:48', '2024-09-30 11:11:48');

-- --------------------------------------------------------

--
-- Table structure for table `partner_parent_categories`
--

CREATE TABLE `partner_parent_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_category_name` varchar(255) NOT NULL,
  `parent_category_image` varchar(255) DEFAULT NULL,
  `parent_category_status` tinyint(1) NOT NULL DEFAULT 1,
  `parent_category_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Not Deleted 1=Deleted',
  `parent_category_added_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_parent_categories`
--

INSERT INTO `partner_parent_categories` (`id`, `parent_category_name`, `parent_category_image`, `parent_category_status`, `parent_category_delete`, `parent_category_added_by`, `created_at`, `updated_at`) VALUES
(1, 'Channel Partners', '', 1, 0, 1, '2024-09-30 10:55:44', '2024-09-30 10:55:44'),
(2, 'Technology Partners', '', 1, 0, 1, '2024-09-30 10:56:25', '2024-09-30 10:56:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('admin@admin.com', '$2y$12$e1LyZZhyq8sEB828u6m1h.FpHdgkfLr5f6aULRHCWxAwKaEd6rry6', '2024-01-10 07:09:02');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'user-index', 'admin', 'User Permissions', '2023-12-27 21:23:42', '2023-12-27 21:23:42'),
(2, 'user-create', 'admin', 'User Permissions', '2023-12-27 21:23:43', '2023-12-27 21:23:43'),
(3, 'user-update', 'admin', 'User Permissions', '2023-12-27 21:23:43', '2023-12-27 21:23:43'),
(4, 'user-delete', 'admin', 'User Permissions', '2023-12-27 21:23:43', '2023-12-27 21:23:43'),
(5, 'role-permission-index', 'admin', 'Roles And Permissions', '2023-12-31 10:35:34', '2023-12-31 10:35:34'),
(6, 'role-permission-create', 'admin', 'Roles And Permissions', '2023-12-31 10:35:34', '2023-12-31 10:35:34'),
(7, 'role-permission-update', 'admin', 'Roles And Permissions', '2023-12-31 10:35:34', '2023-12-31 10:35:34'),
(8, 'role-permission-delete', 'admin', 'Roles And Permissions', '2023-12-31 10:35:34', '2023-12-31 10:35:34'),
(9, 'language-index', 'admin', 'Language Permissions', '2024-01-01 04:15:40', '2024-01-01 04:15:40'),
(10, 'language-create', 'admin', 'Language Permissions', '2024-01-01 04:15:40', '2024-01-01 04:15:40'),
(11, 'language-update', 'admin', 'Language Permissions', '2024-01-01 04:15:40', '2024-01-01 04:15:40'),
(12, 'language-delete', 'admin', 'Language Permissions', '2024-01-01 04:15:40', '2024-01-01 04:15:40'),
(13, 'backend-string-generate', 'admin', 'Backend Language Permissions', '2024-01-01 07:49:20', '2024-01-01 07:49:20'),
(14, 'backend-string-translate', 'admin', 'Backend Language Permissions', '2024-01-01 07:49:20', '2024-01-01 07:49:20'),
(15, 'backend-string-update', 'admin', 'Backend Language Permissions', '2024-01-01 07:49:20', '2024-01-01 07:49:20'),
(16, 'backend-string-index', 'admin', 'Backend Language Permissions', '2024-01-01 07:55:45', '2024-01-01 07:55:45'),
(17, 'backend-api-accesskey', 'admin', 'Backend Language Permissions', '2024-01-01 07:55:45', '2024-01-01 07:55:45'),
(18, 'specific-permission-create', 'admin', 'Roles And Permissions', '2024-01-02 09:27:44', '2024-01-02 09:27:44'),
(19, 'maintenance-mode-index', 'admin', 'Settings Permissions', '2024-01-10 05:11:32', '2024-01-10 05:11:32'),
(20, 'unit-index', 'admin', 'Product Units Permissions', '2024-01-14 06:20:59', '2024-01-14 06:20:59'),
(21, 'unit-store', 'admin', 'Product Units Permissions', '2024-01-14 07:46:45', '2024-01-14 07:46:45'),
(22, 'unit-update', 'admin', 'Product Units Permissions', '2024-01-14 07:46:45', '2024-01-14 07:46:45'),
(23, 'unit-delete', 'admin', 'Product Units Permissions', '2024-01-14 07:46:45', '2024-01-14 07:46:45'),
(24, 'brand-index', 'admin', 'Product Brands Permissions', '2024-01-15 09:57:25', '2024-01-15 09:57:25'),
(25, 'brand-store', 'admin', 'Product Brands Permissions', '2024-01-15 09:57:25', '2024-01-15 09:57:25'),
(26, 'brand-update', 'admin', 'Product Brands Permissions', '2024-01-15 09:57:25', '2024-01-15 09:57:25'),
(27, 'brand-delete', 'admin', 'Product Brands Permissions', '2024-01-15 09:57:25', '2024-01-15 09:57:25'),
(28, 'size-index', 'admin', 'Product Sizes Permissions', '2024-01-16 06:54:24', '2024-01-16 06:54:24'),
(29, 'size-store', 'admin', 'Product Sizes Permissions', '2024-01-16 06:54:24', '2024-01-16 06:54:24'),
(30, 'size-update', 'admin', 'Product Sizes Permissions', '2024-01-16 06:54:24', '2024-01-16 06:54:24'),
(31, 'size-delete', 'admin', 'Product Sizes Permissions', '2024-01-16 06:54:24', '2024-01-16 06:54:24'),
(32, 'parent-category-index', 'admin', 'Product Parent Category Permissions', '2024-01-16 09:31:49', '2024-01-16 09:31:49'),
(33, 'parent-category-store', 'admin', 'Product Parent Category Permissions', '2024-01-16 09:31:49', '2024-01-16 09:31:49'),
(34, 'parent-category-update', 'admin', 'Product Parent Category Permissions', '2024-01-16 09:31:49', '2024-01-16 09:31:49'),
(35, 'parent-category-delete', 'admin', 'Product Parent Category Permissions', '2024-01-16 09:31:49', '2024-01-16 09:31:49'),
(36, 'category-index', 'admin', 'Product Category Permissions', '2024-01-17 04:39:19', '2024-01-17 04:39:19'),
(37, 'category-store', 'admin', 'Product Category Permissions', '2024-01-17 04:39:20', '2024-01-17 04:39:20'),
(38, 'category-update', 'admin', 'Product Category Permissions', '2024-01-17 04:39:20', '2024-01-17 04:39:20'),
(39, 'category-delete', 'admin', 'Product Category Permissions', '2024-01-17 04:39:20', '2024-01-17 04:39:20'),
(40, 'product-index', 'admin', 'Product Permissions', '2024-01-17 09:44:12', '2024-01-17 09:44:12'),
(41, 'product-store', 'admin', 'Product Permissions', '2024-01-17 09:44:12', '2024-01-17 09:44:12'),
(42, 'warehouse-index', 'admin', 'Warehouse Permissions', '2024-01-28 03:30:38', '2024-01-28 03:30:38'),
(43, 'warehouse-store', 'admin', 'Warehouse Permissions', '2024-01-28 03:30:39', '2024-01-28 03:30:39'),
(44, 'warehouse-update', 'admin', 'Warehouse Permissions', '2024-01-28 03:30:39', '2024-01-28 03:30:39'),
(45, 'warehouse-delete', 'admin', 'Warehouse Permissions', '2024-01-28 03:30:39', '2024-01-28 03:30:39'),
(46, 'product-update', 'admin', 'Product Permissions', '2024-01-29 03:19:31', '2024-01-29 03:19:31'),
(47, 'product-delete', 'admin', 'Product Permissions', '2024-01-29 03:19:31', '2024-01-29 03:19:31'),
(48, 'print-barcode', 'admin', 'Product Permissions', '2024-02-01 05:17:55', '2024-02-01 05:17:55'),
(49, 'adjustment-index', 'admin', 'Product Permissions', '2024-02-04 10:11:43', '2024-02-04 10:11:43'),
(50, 'adjustment-store', 'admin', 'Product Permissions', '2024-02-04 10:11:43', '2024-02-04 10:11:43'),
(52, 'adjustment-delete', 'admin', 'Product Permissions', '2024-02-04 10:11:43', '2024-02-04 10:11:43'),
(53, 'sub-category-index', 'admin', 'Product Sub Category Permissions', '2024-09-22 09:48:30', '2024-09-22 09:48:30'),
(54, 'sub-category-store', 'admin', 'Product Sub Category Permissions', '2024-09-22 09:48:31', '2024-09-22 09:48:31'),
(55, 'sub-category-update', 'admin', 'Product Sub Category Permissions', '2024-09-22 09:48:31', '2024-09-22 09:48:31'),
(56, 'sub-category-delete', 'admin', 'Product Sub Category Permissions', '2024-09-22 09:48:31', '2024-09-22 09:48:31'),
(57, 'solution-category-index', 'admin', 'Product Solution Category Permissions', '2024-09-24 10:15:05', '2024-09-24 10:15:05'),
(58, 'solution-category-store', 'admin', 'Product Solution Category Permissions', '2024-09-24 10:15:05', '2024-09-24 10:15:05'),
(59, 'solution-category-update', 'admin', 'Product Solution Category Permissions', '2024-09-24 10:15:06', '2024-09-24 10:15:06'),
(60, 'solution-category-delete', 'admin', 'Product Solution Category Permissions', '2024-09-24 10:15:06', '2024-09-24 10:15:06'),
(61, 'solution-sub-category-index', 'admin', 'Product Solution Sub Category Permissions', '2024-09-24 10:16:36', '2024-09-24 10:16:36'),
(62, 'solution-sub-category-store', 'admin', 'Product Solution Sub Category Permissions', '2024-09-24 10:16:36', '2024-09-24 10:16:36'),
(63, 'solution-sub-category-update', 'admin', 'Product Solution Sub Category Permissions', '2024-09-24 10:16:36', '2024-09-24 10:16:36'),
(64, 'solution-sub-category-delete', 'admin', 'Product Solution Sub Category Permissions', '2024-09-24 10:16:36', '2024-09-24 10:16:36'),
(65, 'solution-parent-category-index', 'admin', 'Product Solution Parent Category Permissions', '2024-09-24 10:20:01', '2024-09-24 10:20:01'),
(66, 'solution-parent-category-store', 'admin', 'Product Solution Parent Category Permissions', '2024-09-24 10:20:01', '2024-09-24 10:20:01'),
(67, 'solution-parent-category-update', 'admin', 'Product Solution Parent Category Permissions', '2024-09-24 10:20:01', '2024-09-24 10:20:01'),
(68, 'solution-parent-category-delete', 'admin', 'Product Solution Parent Category Permissions', '2024-09-24 10:20:01', '2024-09-24 10:20:01'),
(69, 'support-parent-category-index', 'admin', 'Support Parent Category Permissions', '2024-09-25 06:00:24', '2024-09-25 06:00:24'),
(70, 'support-parent-category-store', 'admin', 'Support Parent Category Permissions', '2024-09-25 06:00:24', '2024-09-25 06:00:24'),
(71, 'support-parent-category-update', 'admin', 'Support Parent Category Permissions', '2024-09-25 06:00:24', '2024-09-25 06:00:24'),
(72, 'support-parent-category-delete', 'admin', 'Support Parent Category Permissions', '2024-09-25 06:00:24', '2024-09-25 06:00:24'),
(73, 'support-category-index', 'admin', 'Support Category Permissions', '2024-09-25 06:00:24', '2024-09-25 06:00:24'),
(74, 'support-category-store', 'admin', 'Support Category Permissions', '2024-09-25 06:00:24', '2024-09-25 06:00:24'),
(75, 'support-category-update', 'admin', 'Support Category Permissions', '2024-09-25 06:00:24', '2024-09-25 06:00:24'),
(76, 'support-category-delete', 'admin', 'Support Category Permissions', '2024-09-25 06:00:24', '2024-09-25 06:00:24'),
(77, 'partner-parent-category-index', 'admin', 'Partner Parent Category Permissions', '2024-09-26 06:32:36', '2024-09-26 06:32:36'),
(78, 'partner-parent-category-store', 'admin', 'Partner Parent Category Permissions', '2024-09-26 06:32:36', '2024-09-26 06:32:36'),
(79, 'partner-parent-category-update', 'admin', 'Partner Parent Category Permissions', '2024-09-26 06:32:36', '2024-09-26 06:32:36'),
(80, 'partner-parent-category-delete', 'admin', 'Partner Parent Category Permissions', '2024-09-26 06:32:36', '2024-09-26 06:32:36'),
(81, 'partner-category-index', 'admin', 'Partner Category Permissions', '2024-09-26 06:32:36', '2024-09-26 06:32:36'),
(82, 'partner-category-store', 'admin', 'Partner Category Permissions', '2024-09-26 06:32:36', '2024-09-26 06:32:36'),
(83, 'partner-category-update', 'admin', 'Partner Category Permissions', '2024-09-26 06:32:36', '2024-09-26 06:32:36'),
(84, 'partner-category-delete', 'admin', 'Partner Category Permissions', '2024-09-26 06:32:36', '2024-09-26 06:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `barcode_symbology` varchar(255) NOT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_group` varchar(255) DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_size` int(11) NOT NULL,
  `cartoon_size` int(11) NOT NULL,
  `purchase_unit_id` int(11) DEFAULT NULL,
  `sale_unit_id` int(11) DEFAULT NULL,
  `cost` double NOT NULL,
  `price` double NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `daily_sale_objective` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(255) DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `is_embeded` tinyint(4) DEFAULT NULL,
  `is_variant` tinyint(4) DEFAULT NULL,
  `is_batch` tinyint(4) DEFAULT NULL,
  `is_diffPrice` tinyint(4) DEFAULT NULL,
  `is_imei` tinyint(4) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(255) DEFAULT NULL,
  `variant_list` varchar(255) DEFAULT NULL,
  `qty_list` varchar(255) DEFAULT NULL,
  `price_list` varchar(255) DEFAULT NULL,
  `product_details` text DEFAULT NULL,
  `variant_option` varchar(255) DEFAULT NULL,
  `variant_value` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= Not Deleted & 1=Deleted',
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `short_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `product_group`, `unit_id`, `unit_size`, `cartoon_size`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `daily_sale_objective`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_embeded`, `is_variant`, `is_batch`, `is_diffPrice`, `is_imei`, `featured`, `product_list`, `variant_list`, `qty_list`, `price_list`, `product_details`, `variant_option`, `variant_value`, `status`, `delete`, `created_by`, `updated_by`, `created_at`, `updated_at`, `parent_category_id`, `sub_category_id`, `short_description`) VALUES
(1, 'DS-2CE76D0T-LMFS', '87714964', 'standard', 'C128', 1, 9, 'New', 1, 1, 12, 1, 1, 120, 120, NULL, 1, 4, 0, NULL, NULL, NULL, 1, 1, 'public/admin/inventory/file/product/PRODUCT-1727780605288.png,public/admin/inventory/file/product/PRODUCT-1727780610594.png', NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '<ul>\r\n	<li>High quality imaging with 2 MP, 1920×1080 resolution</li>\r\n	<li>Up to 30 m IR distance for bright night imaging</li>\r\n	<li>2.8 mm, 3.6 mm fixed focal lens</li>\r\n	<li>One port for four switchable signals (TVI/AHD/CVI/CVBS）</li>\r\n	<li>Up to 20 m white light distance for bright night imaging</li>\r\n	<li>High quality audio with audio over coaxial cable, built-in mic</li>\r\n	<li>Water and dust resistant (IP67)</li>\r\n	<li>Smart-Hybrid light, optimize your security with flexible lighting options</li>\r\n</ul>', 'Model', 'DS-2CE76D0T-LMFS(2.8mm),DS-2CE76D0T-LMFS(3.6mm)', 1, 0, 1, 1, '2024-10-01 10:49:58', '2024-10-01 11:03:34', 2, 2, '2MP Smart Hybrid Light Audio Indoor Fixed Turret Camera');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `item_code` varchar(255) NOT NULL,
  `additional_cost` double DEFAULT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Not Deleted and 1= Not Deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `variant_id`, `position`, `item_code`, `additional_cost`, `additional_price`, `qty`, `created_by`, `updated_by`, `delete`, `created_at`, `updated_at`) VALUES
(11, 1, 1, 1, 'DS-2CE76D0T-LMFS(2.8mm)-87714964', 0, 0, 0, 1, 1, 0, '2024-10-01 11:03:34', '2024-10-01 11:03:34'),
(12, 1, 2, 2, 'DS-2CE76D0T-LMFS(3.6mm)-87714964', 0, 0, 0, 1, 1, 0, '2024-10-01 11:03:34', '2024-10-01 11:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `pulse_aggregates`
--

CREATE TABLE `pulse_aggregates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bucket` int(10) UNSIGNED NOT NULL,
  `period` mediumint(8) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `key` mediumtext NOT NULL,
  `key_hash` binary(16) GENERATED ALWAYS AS (unhex(md5(`key`))) VIRTUAL,
  `aggregate` varchar(255) NOT NULL,
  `value` decimal(20,2) NOT NULL,
  `count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pulse_aggregates`
--

INSERT INTO `pulse_aggregates` (`id`, `bucket`, `period`, `type`, `key`, `aggregate`, `value`, `count`) VALUES
(1, 1706595960, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2, 1706595840, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3, 1706595840, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(4, 1706594400, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 15.00, NULL),
(5, 1706596020, 60, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:8\"]', 'count', 1.00, NULL),
(6, 1706595840, 360, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:8\"]', 'count', 1.00, NULL),
(7, 1706595840, 1440, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:8\"]', 'count', 2.00, NULL),
(8, 1706594400, 10080, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:8\"]', 'count', 2.00, NULL),
(9, 1706596020, 60, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:8\"]', 'max', 1706596058.00, NULL),
(10, 1706595840, 360, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:8\"]', 'max', 1706596058.00, NULL),
(11, 1706595840, 1440, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:8\"]', 'max', 1706596393.00, NULL),
(12, 1706594400, 10080, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:8\"]', 'max', 1706596393.00, NULL),
(13, 1706596260, 60, 'user_request', '1', 'count', 1.00, NULL),
(14, 1706596200, 360, 'user_request', '1', 'count', 4.00, NULL),
(15, 1706595840, 1440, 'user_request', '1', 'count', 9.00, NULL),
(16, 1706594400, 10080, 'user_request', '1', 'count', 9.00, NULL),
(17, 1706596260, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Auth\\\\RegisteredUserController.php:42\"]', 'count', 1.00, NULL),
(18, 1706596200, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Auth\\\\RegisteredUserController.php:42\"]', 'count', 1.00, NULL),
(19, 1706595840, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Auth\\\\RegisteredUserController.php:42\"]', 'count', 1.00, NULL),
(20, 1706594400, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Auth\\\\RegisteredUserController.php:42\"]', 'count', 1.00, NULL),
(21, 1706596260, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Auth\\\\RegisteredUserController.php:42\"]', 'max', 1706596312.00, NULL),
(22, 1706596200, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Auth\\\\RegisteredUserController.php:42\"]', 'max', 1706596312.00, NULL),
(23, 1706595840, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Auth\\\\RegisteredUserController.php:42\"]', 'max', 1706596312.00, NULL),
(24, 1706594400, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Auth\\\\RegisteredUserController.php:42\"]', 'max', 1706596312.00, NULL),
(25, 1706596320, 60, 'user_request', '1', 'count', 2.00, NULL),
(33, 1706596320, 60, 'exception', '[\"BadMethodCallException\",\"app\\\\Providers\\\\AuthServiceProvider.php:34\"]', 'count', 2.00, NULL),
(34, 1706596200, 360, 'exception', '[\"BadMethodCallException\",\"app\\\\Providers\\\\AuthServiceProvider.php:34\"]', 'count', 2.00, NULL),
(35, 1706595840, 1440, 'exception', '[\"BadMethodCallException\",\"app\\\\Providers\\\\AuthServiceProvider.php:34\"]', 'count', 2.00, NULL),
(36, 1706594400, 10080, 'exception', '[\"BadMethodCallException\",\"app\\\\Providers\\\\AuthServiceProvider.php:34\"]', 'count', 2.00, NULL),
(37, 1706596320, 60, 'exception', '[\"BadMethodCallException\",\"app\\\\Providers\\\\AuthServiceProvider.php:34\"]', 'max', 1706596366.00, NULL),
(38, 1706596200, 360, 'exception', '[\"BadMethodCallException\",\"app\\\\Providers\\\\AuthServiceProvider.php:34\"]', 'max', 1706596366.00, NULL),
(39, 1706595840, 1440, 'exception', '[\"BadMethodCallException\",\"app\\\\Providers\\\\AuthServiceProvider.php:34\"]', 'max', 1706596366.00, NULL),
(40, 1706594400, 10080, 'exception', '[\"BadMethodCallException\",\"app\\\\Providers\\\\AuthServiceProvider.php:34\"]', 'max', 1706596366.00, NULL),
(49, 1706596380, 60, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:27\"]', 'count', 1.00, NULL),
(50, 1706596200, 360, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:27\"]', 'count', 1.00, NULL),
(51, 1706595840, 1440, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:27\"]', 'count', 1.00, NULL),
(52, 1706594400, 10080, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:27\"]', 'count', 1.00, NULL),
(53, 1706596380, 60, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:27\"]', 'max', 1706596381.00, NULL),
(54, 1706596200, 360, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:27\"]', 'max', 1706596381.00, NULL),
(55, 1706595840, 1440, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:27\"]', 'max', 1706596381.00, NULL),
(56, 1706594400, 10080, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:27\"]', 'max', 1706596381.00, NULL),
(57, 1706596380, 60, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:8\"]', 'count', 1.00, NULL),
(58, 1706596200, 360, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:8\"]', 'count', 1.00, NULL),
(61, 1706596380, 60, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:8\"]', 'max', 1706596393.00, NULL),
(62, 1706596200, 360, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:8\"]', 'max', 1706596393.00, NULL),
(65, 1706596440, 60, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:19\"]', 'count', 1.00, NULL),
(66, 1706596200, 360, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:19\"]', 'count', 1.00, NULL),
(67, 1706595840, 1440, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:19\"]', 'count', 1.00, NULL),
(68, 1706594400, 10080, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:19\"]', 'count', 1.00, NULL),
(69, 1706596440, 60, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:19\"]', 'max', 1706596440.00, NULL),
(70, 1706596200, 360, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:19\"]', 'max', 1706596440.00, NULL),
(71, 1706595840, 1440, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:19\"]', 'max', 1706596440.00, NULL),
(72, 1706594400, 10080, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:19\"]', 'max', 1706596440.00, NULL),
(73, 1706596440, 60, 'exception', '[\"Error\",\"resources\\\\views\\\\backend\\\\shared\\\\nav\\\\admin_sidebar.blade.php:7\"]', 'count', 1.00, NULL),
(74, 1706596200, 360, 'exception', '[\"Error\",\"resources\\\\views\\\\backend\\\\shared\\\\nav\\\\admin_sidebar.blade.php:7\"]', 'count', 1.00, NULL),
(75, 1706595840, 1440, 'exception', '[\"Error\",\"resources\\\\views\\\\backend\\\\shared\\\\nav\\\\admin_sidebar.blade.php:7\"]', 'count', 1.00, NULL),
(76, 1706594400, 10080, 'exception', '[\"Error\",\"resources\\\\views\\\\backend\\\\shared\\\\nav\\\\admin_sidebar.blade.php:7\"]', 'count', 1.00, NULL),
(77, 1706596440, 60, 'exception', '[\"Error\",\"resources\\\\views\\\\backend\\\\shared\\\\nav\\\\admin_sidebar.blade.php:7\"]', 'max', 1706596460.00, NULL),
(78, 1706596200, 360, 'exception', '[\"Error\",\"resources\\\\views\\\\backend\\\\shared\\\\nav\\\\admin_sidebar.blade.php:7\"]', 'max', 1706596460.00, NULL),
(79, 1706595840, 1440, 'exception', '[\"Error\",\"resources\\\\views\\\\backend\\\\shared\\\\nav\\\\admin_sidebar.blade.php:7\"]', 'max', 1706596460.00, NULL),
(80, 1706594400, 10080, 'exception', '[\"Error\",\"resources\\\\views\\\\backend\\\\shared\\\\nav\\\\admin_sidebar.blade.php:7\"]', 'max', 1706596460.00, NULL),
(81, 1706596500, 60, 'user_request', '1', 'count', 1.00, NULL),
(85, 1706596560, 60, 'user_request', '1', 'count', 2.00, NULL),
(86, 1706596560, 360, 'user_request', '1', 'count', 5.00, NULL),
(93, 1706596620, 60, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:28\"]', 'count', 5.00, NULL),
(94, 1706596560, 360, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:28\"]', 'count', 5.00, NULL),
(95, 1706595840, 1440, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:28\"]', 'count', 5.00, NULL),
(96, 1706594400, 10080, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:28\"]', 'count', 5.00, NULL),
(97, 1706596620, 60, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:28\"]', 'max', 1706596647.00, NULL),
(98, 1706596560, 360, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:28\"]', 'max', 1706596647.00, NULL),
(99, 1706595840, 1440, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:28\"]', 'max', 1706596647.00, NULL),
(100, 1706594400, 10080, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:28\"]', 'max', 1706596647.00, NULL),
(133, 1706596680, 60, 'user_request', '1', 'count', 1.00, NULL),
(137, 1706596740, 60, 'user_request', '1', 'count', 2.00, NULL),
(145, 1706597700, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(146, 1706597640, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(147, 1706597280, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 12.00, NULL),
(149, 1706597820, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(153, 1706598060, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(154, 1706598000, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(161, 1706598120, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(165, 1706598240, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(173, 1706598300, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(177, 1706598360, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(178, 1706598360, 360, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(181, 1706598420, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(189, 1706598480, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(193, 1706598720, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(194, 1706598720, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(195, 1706598720, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(196, 1706594400, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(197, 1706598780, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(198, 1706598720, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(199, 1706598720, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(205, 1706605440, 60, 'cache_miss', 'spatie.permission.cache', 'count', 4.00, NULL),
(206, 1706605200, 360, 'cache_miss', 'spatie.permission.cache', 'count', 4.00, NULL),
(207, 1706604480, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 4.00, NULL),
(208, 1706604480, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 4.00, NULL),
(209, 1706605440, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(210, 1706605200, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(211, 1706604480, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(212, 1706604480, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(233, 1706679360, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(234, 1706679360, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(235, 1706679360, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(236, 1706675040, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 2.00, NULL),
(237, 1706679960, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(238, 1706679720, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(239, 1706679360, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(240, 1706675040, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 46.00, NULL),
(241, 1706679960, 60, 'exception', '[\"Illuminate\\\\Routing\\\\Exceptions\\\\UrlGenerationException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Exceptions\\\\UrlGenerationException.php:35\"]', 'count', 1.00, NULL),
(242, 1706679720, 360, 'exception', '[\"Illuminate\\\\Routing\\\\Exceptions\\\\UrlGenerationException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Exceptions\\\\UrlGenerationException.php:35\"]', 'count', 1.00, NULL),
(243, 1706679360, 1440, 'exception', '[\"Illuminate\\\\Routing\\\\Exceptions\\\\UrlGenerationException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Exceptions\\\\UrlGenerationException.php:35\"]', 'count', 1.00, NULL),
(244, 1706675040, 10080, 'exception', '[\"Illuminate\\\\Routing\\\\Exceptions\\\\UrlGenerationException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Exceptions\\\\UrlGenerationException.php:35\"]', 'count', 1.00, NULL),
(245, 1706679960, 60, 'exception', '[\"Illuminate\\\\Routing\\\\Exceptions\\\\UrlGenerationException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Exceptions\\\\UrlGenerationException.php:35\"]', 'max', 1706679989.00, NULL),
(246, 1706679720, 360, 'exception', '[\"Illuminate\\\\Routing\\\\Exceptions\\\\UrlGenerationException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Exceptions\\\\UrlGenerationException.php:35\"]', 'max', 1706679989.00, NULL),
(247, 1706679360, 1440, 'exception', '[\"Illuminate\\\\Routing\\\\Exceptions\\\\UrlGenerationException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Exceptions\\\\UrlGenerationException.php:35\"]', 'max', 1706679989.00, NULL),
(248, 1706675040, 10080, 'exception', '[\"Illuminate\\\\Routing\\\\Exceptions\\\\UrlGenerationException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Exceptions\\\\UrlGenerationException.php:35\"]', 'max', 1706679989.00, NULL),
(249, 1706680020, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(253, 1706680200, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(254, 1706680080, 360, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(261, 1706680260, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(269, 1706681160, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(270, 1706681160, 360, 'cache_hit', 'spatie.permission.cache', 'count', 8.00, NULL),
(271, 1706680800, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 24.00, NULL),
(277, 1706681220, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(289, 1706681340, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(293, 1706681400, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(301, 1706681640, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(302, 1706681520, 360, 'cache_hit', 'spatie.permission.cache', 'count', 8.00, NULL),
(317, 1706681700, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(329, 1706681760, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(333, 1706681880, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(334, 1706681880, 360, 'cache_hit', 'spatie.permission.cache', 'count', 8.00, NULL),
(337, 1706681880, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:146\"]', 'count', 1.00, NULL),
(338, 1706681880, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:146\"]', 'count', 2.00, NULL),
(339, 1706680800, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:146\"]', 'count', 2.00, NULL),
(340, 1706675040, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:146\"]', 'count', 2.00, NULL),
(345, 1706681880, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:146\"]', 'max', 1706681935.00, NULL),
(346, 1706681880, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:146\"]', 'max', 1706681945.00, NULL),
(347, 1706680800, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:146\"]', 'max', 1706681945.00, NULL),
(348, 1706675040, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:146\"]', 'max', 1706681945.00, NULL),
(349, 1706681940, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(350, 1706681940, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:146\"]', 'count', 1.00, NULL),
(357, 1706681940, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:146\"]', 'max', 1706681945.00, NULL),
(361, 1706682000, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(365, 1706682120, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(373, 1706682180, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(377, 1706682180, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:147\"]', 'count', 1.00, NULL),
(378, 1706681880, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:147\"]', 'count', 1.00, NULL),
(379, 1706680800, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:147\"]', 'count', 1.00, NULL),
(380, 1706675040, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:147\"]', 'count', 2.00, NULL),
(385, 1706682180, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:147\"]', 'max', 1706682221.00, NULL),
(386, 1706681880, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:147\"]', 'max', 1706682221.00, NULL),
(387, 1706680800, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:147\"]', 'max', 1706682221.00, NULL),
(388, 1706675040, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:147\"]', 'max', 1706682296.00, NULL),
(389, 1706682240, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(390, 1706682240, 360, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(391, 1706682240, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 16.00, NULL),
(392, 1706682240, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:147\"]', 'count', 1.00, NULL),
(393, 1706682240, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:147\"]', 'count', 1.00, NULL),
(394, 1706682240, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:147\"]', 'count', 1.00, NULL),
(397, 1706682240, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:147\"]', 'max', 1706682296.00, NULL),
(398, 1706682240, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:147\"]', 'max', 1706682296.00, NULL),
(399, 1706682240, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:147\"]', 'max', 1706682296.00, NULL),
(401, 1706682480, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(402, 1706682480, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:158\"]', 'count', 1.00, NULL),
(403, 1706682240, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:158\"]', 'count', 1.00, NULL),
(404, 1706682240, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:158\"]', 'count', 1.00, NULL),
(405, 1706675040, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:158\"]', 'count', 1.00, NULL),
(409, 1706682480, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:158\"]', 'max', 1706682530.00, NULL),
(410, 1706682240, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:158\"]', 'max', 1706682530.00, NULL),
(411, 1706682240, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:158\"]', 'max', 1706682530.00, NULL),
(412, 1706675040, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:158\"]', 'max', 1706682530.00, NULL),
(413, 1706682540, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(421, 1706682600, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(422, 1706682600, 360, 'cache_hit', 'spatie.permission.cache', 'count', 9.00, NULL),
(437, 1706682780, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(449, 1706682840, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(453, 1706682900, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(457, 1706682960, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(458, 1706682960, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(459, 1706682240, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(461, 1706682960, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(462, 1706682960, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(465, 1706683020, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(473, 1706685180, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(474, 1706685120, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(475, 1706685120, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 17.00, NULL),
(476, 1706685120, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 41.00, NULL),
(477, 1706685300, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(481, 1706685660, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(482, 1706685480, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(485, 1706685720, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(493, 1706685780, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(505, 1706685840, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(506, 1706685840, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(509, 1706686080, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(517, 1706686200, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(518, 1706686200, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(519, 1706686200, 60, 'exception', '[\"TypeError\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\helpers.php:124\"]', 'count', 1.00, NULL),
(520, 1706686200, 360, 'exception', '[\"TypeError\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\helpers.php:124\"]', 'count', 1.00, NULL),
(521, 1706685120, 1440, 'exception', '[\"TypeError\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\helpers.php:124\"]', 'count', 1.00, NULL),
(522, 1706685120, 10080, 'exception', '[\"TypeError\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\helpers.php:124\"]', 'count', 1.00, NULL),
(525, 1706686200, 60, 'exception', '[\"TypeError\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\helpers.php:124\"]', 'max', 1706686230.00, NULL),
(526, 1706686200, 360, 'exception', '[\"TypeError\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\helpers.php:124\"]', 'max', 1706686230.00, NULL),
(527, 1706685120, 1440, 'exception', '[\"TypeError\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\helpers.php:124\"]', 'max', 1706686230.00, NULL),
(528, 1706685120, 10080, 'exception', '[\"TypeError\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\helpers.php:124\"]', 'max', 1706686230.00, NULL),
(529, 1706686200, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\edit.blade.php:614\"]', 'count', 1.00, NULL),
(530, 1706686200, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\edit.blade.php:614\"]', 'count', 1.00, NULL),
(531, 1706685120, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\edit.blade.php:614\"]', 'count', 1.00, NULL),
(532, 1706685120, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\edit.blade.php:614\"]', 'count', 1.00, NULL),
(537, 1706686200, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\edit.blade.php:614\"]', 'max', 1706686257.00, NULL),
(538, 1706686200, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\edit.blade.php:614\"]', 'max', 1706686257.00, NULL),
(539, 1706685120, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\edit.blade.php:614\"]', 'max', 1706686257.00, NULL),
(540, 1706685120, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\edit.blade.php:614\"]', 'max', 1706686257.00, NULL),
(541, 1706686320, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(553, 1706686380, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(557, 1706686560, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(558, 1706686560, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(559, 1706686560, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(560, 1706685120, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 2.00, NULL),
(561, 1706686560, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(562, 1706686560, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(563, 1706686560, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(565, 1706686620, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(569, 1706686680, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(577, 1706686740, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(581, 1706691420, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(582, 1706691240, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(583, 1706690880, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(585, 1706691420, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(586, 1706691240, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(587, 1706690880, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 19.00, NULL),
(593, 1706691480, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(597, 1706691540, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(605, 1706691660, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(606, 1706691600, 360, 'cache_hit', 'spatie.permission.cache', 'count', 12.00, NULL),
(613, 1706691720, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(621, 1706691840, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(629, 1706691900, 60, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(653, 1706692020, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(654, 1706691960, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(661, 1706696220, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(662, 1706695920, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(663, 1706695200, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(664, 1706695200, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(665, 1706696280, 60, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(666, 1706696280, 360, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(667, 1706695200, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(668, 1706695200, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 10.00, NULL),
(693, 1706699040, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(694, 1706698800, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(695, 1706698080, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(705, 1706764560, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(706, 1706764320, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(707, 1706764320, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 2.00, NULL),
(708, 1706755680, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 2.00, NULL),
(709, 1706764560, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(710, 1706764320, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(711, 1706764320, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 24.00, NULL),
(712, 1706755680, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 24.00, NULL),
(717, 1706764620, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(721, 1706764980, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(722, 1706764680, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(725, 1706765340, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(726, 1706765040, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(745, 1706765460, 60, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(746, 1706765400, 360, 'cache_hit', 'spatie.permission.cache', 'count', 16.00, NULL),
(773, 1706765520, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(781, 1706765580, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(793, 1706765640, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(805, 1706765700, 60, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'count', 1.00, NULL),
(806, 1706765400, 360, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'count', 1.00, NULL),
(807, 1706764320, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'count', 1.00, NULL),
(808, 1706755680, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'count', 1.00, NULL),
(809, 1706765700, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(810, 1706765700, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 1.00, NULL),
(811, 1706765400, 360, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 1.00, NULL),
(812, 1706764320, 1440, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 1.00, NULL),
(813, 1706755680, 10080, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 1.00, NULL),
(817, 1706765700, 60, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'max', 1067.00, NULL),
(818, 1706765400, 360, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'max', 1067.00, NULL),
(819, 1706764320, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'max', 1067.00, NULL),
(820, 1706755680, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'max', 1067.00, NULL),
(821, 1706765700, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1706765715.00, NULL),
(822, 1706765400, 360, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1706765715.00, NULL),
(823, 1706764320, 1440, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1706765715.00, NULL),
(824, 1706755680, 10080, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1706765715.00, NULL),
(825, 1706765820, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(826, 1706765760, 360, 'cache_hit', 'spatie.permission.cache', 'count', 19.00, NULL),
(827, 1706765760, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 30.00, NULL),
(828, 1706765760, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 86.00, NULL),
(833, 1706765880, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(845, 1706765940, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(849, 1706765940, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 1.00, NULL),
(850, 1706765760, 360, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 1.00, NULL),
(851, 1706765760, 1440, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 2.00, NULL),
(852, 1706765760, 10080, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 2.00, NULL),
(857, 1706765940, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1706765943.00, NULL),
(858, 1706765760, 360, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1706765943.00, NULL),
(859, 1706765760, 1440, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1706766163.00, NULL),
(860, 1706765760, 10080, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1706766163.00, NULL),
(861, 1706766000, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(877, 1706766060, 60, 'cache_hit', 'spatie.permission.cache', 'count', 8.00, NULL),
(909, 1706766120, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 1.00, NULL),
(910, 1706766120, 360, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 1.00, NULL),
(913, 1706766120, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1706766163.00, NULL),
(914, 1706766120, 360, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1706766163.00, NULL),
(917, 1706766180, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(918, 1706766120, 360, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(925, 1706766240, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(933, 1706766300, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(937, 1706766360, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(938, 1706766360, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\barcode\\\\index.blade.php:184\"]', 'count', 1.00, NULL),
(939, 1706766120, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\barcode\\\\index.blade.php:184\"]', 'count', 1.00, NULL),
(940, 1706765760, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\barcode\\\\index.blade.php:184\"]', 'count', 1.00, NULL),
(941, 1706765760, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\barcode\\\\index.blade.php:184\"]', 'count', 1.00, NULL),
(945, 1706766360, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\barcode\\\\index.blade.php:184\"]', 'max', 1706766367.00, NULL),
(946, 1706766120, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\barcode\\\\index.blade.php:184\"]', 'max', 1706766367.00, NULL),
(947, 1706765760, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\barcode\\\\index.blade.php:184\"]', 'max', 1706766367.00, NULL),
(948, 1706765760, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\barcode\\\\index.blade.php:184\"]', 'max', 1706766367.00, NULL),
(953, 1706766540, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(954, 1706766480, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(957, 1706766660, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(961, 1706766780, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(965, 1706767080, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(966, 1706766840, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(969, 1706767200, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(970, 1706767200, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(971, 1706767200, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 10.00, NULL),
(973, 1706767800, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(974, 1706767560, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(981, 1706768100, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(982, 1706767920, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(985, 1706768220, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(989, 1706768400, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(990, 1706768280, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(1001, 1706768460, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1005, 1706768520, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1009, 1706768640, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1010, 1706768640, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1011, 1706768640, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1012, 1706765760, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1013, 1706768700, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1014, 1706768640, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(1015, 1706768640, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 22.00, NULL),
(1017, 1706768820, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1021, 1706768880, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1029, 1706768940, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1033, 1706769180, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1034, 1706769000, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(1037, 1706769240, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1045, 1706769420, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1046, 1706769360, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(1053, 1706769480, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1057, 1706769540, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(1069, 1706769720, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1070, 1706769720, 360, 'cache_hit', 'spatie.permission.cache', 'count', 8.00, NULL),
(1077, 1706769840, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1085, 1706769900, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1093, 1706770020, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1101, 1706770140, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1102, 1706770080, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1103, 1706770080, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 19.00, NULL),
(1105, 1706770260, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1109, 1706770680, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(1110, 1706770440, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(1121, 1706770740, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1129, 1706770800, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1130, 1706770800, 360, 'cache_hit', 'spatie.permission.cache', 'count', 8.00, NULL),
(1133, 1706770860, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1141, 1706770920, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1149, 1706770980, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(1161, 1706771220, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1162, 1706771160, 360, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(1165, 1706771340, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1173, 1706771400, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1177, 1706772120, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1178, 1706771880, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(1179, 1706771520, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(1185, 1706772180, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(1197, 1706773200, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 'count', 1.00, NULL),
(1198, 1706772960, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 'count', 3.00, NULL),
(1199, 1706772960, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 'count', 3.00, NULL),
(1200, 1706765760, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 'count', 3.00, NULL),
(1201, 1706773200, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 'max', 1706773240.00, NULL),
(1202, 1706772960, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 'max', 1706773286.00, NULL),
(1203, 1706772960, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 'max', 1706773286.00, NULL),
(1204, 1706765760, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 'max', 1706773286.00, NULL),
(1205, 1706773200, 60, 'exception', '[\"Milon\\\\Barcode\\\\WrongCheckDigitException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 'count', 1.00, NULL),
(1206, 1706772960, 360, 'exception', '[\"Milon\\\\Barcode\\\\WrongCheckDigitException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 'count', 1.00, NULL),
(1207, 1706772960, 1440, 'exception', '[\"Milon\\\\Barcode\\\\WrongCheckDigitException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 'count', 1.00, NULL),
(1208, 1706765760, 10080, 'exception', '[\"Milon\\\\Barcode\\\\WrongCheckDigitException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 'count', 1.00, NULL),
(1209, 1706773200, 60, 'exception', '[\"Milon\\\\Barcode\\\\WrongCheckDigitException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 'max', 1706773259.00, NULL),
(1210, 1706772960, 360, 'exception', '[\"Milon\\\\Barcode\\\\WrongCheckDigitException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 'max', 1706773259.00, NULL),
(1211, 1706772960, 1440, 'exception', '[\"Milon\\\\Barcode\\\\WrongCheckDigitException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 'max', 1706773259.00, NULL),
(1212, 1706765760, 10080, 'exception', '[\"Milon\\\\Barcode\\\\WrongCheckDigitException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 'max', 1706773259.00, NULL),
(1213, 1706773260, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 'count', 2.00, NULL),
(1217, 1706773260, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 'max', 1706773286.00, NULL),
(1229, 1706773320, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:221\"]', 'count', 1.00, NULL),
(1230, 1706773320, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:221\"]', 'count', 1.00, NULL),
(1231, 1706772960, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:221\"]', 'count', 1.00, NULL),
(1232, 1706765760, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:221\"]', 'count', 1.00, NULL),
(1233, 1706773320, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:221\"]', 'max', 1706773377.00, NULL),
(1234, 1706773320, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:221\"]', 'max', 1706773377.00, NULL),
(1235, 1706772960, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:221\"]', 'max', 1706773377.00, NULL),
(1236, 1706765760, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:221\"]', 'max', 1706773377.00, NULL),
(1237, 1706773380, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 'count', 1.00, NULL),
(1238, 1706773320, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 'count', 1.00, NULL),
(1239, 1706772960, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 'count', 1.00, NULL),
(1240, 1706765760, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 'count', 1.00, NULL),
(1241, 1706773380, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 'max', 1706773391.00, NULL),
(1242, 1706773320, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 'max', 1706773391.00, NULL);
INSERT INTO `pulse_aggregates` (`id`, `bucket`, `period`, `type`, `key`, `aggregate`, `value`, `count`) VALUES
(1243, 1706772960, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 'max', 1706773391.00, NULL),
(1244, 1706765760, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 'max', 1706773391.00, NULL),
(1245, 1706773380, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 'count', 1.00, NULL),
(1246, 1706773320, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 'count', 1.00, NULL),
(1247, 1706772960, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 'count', 1.00, NULL),
(1248, 1706765760, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 'count', 1.00, NULL),
(1249, 1706773380, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 'max', 1706773405.00, NULL),
(1250, 1706773320, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 'max', 1706773405.00, NULL),
(1251, 1706772960, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 'max', 1706773405.00, NULL),
(1252, 1706765760, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 'max', 1706773405.00, NULL),
(1253, 1707019920, 60, 'user_request', '1', 'count', 1.00, NULL),
(1254, 1707019920, 360, 'user_request', '1', 'count', 1.00, NULL),
(1255, 1707019200, 1440, 'user_request', '1', 'count', 1.00, NULL),
(1256, 1707017760, 10080, 'user_request', '1', 'count', 1.00, NULL),
(1257, 1707019920, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1258, 1707019920, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1259, 1707019200, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1260, 1707017760, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 3.00, NULL),
(1261, 1707019920, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1262, 1707019920, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1263, 1707019200, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(1264, 1707017760, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 49.00, NULL),
(1265, 1707020220, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1269, 1707020340, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1270, 1707020280, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1277, 1707023040, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1278, 1707022800, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1279, 1707022080, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(1281, 1707023160, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1282, 1707023160, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1285, 1707023220, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1289, 1707023580, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1290, 1707023520, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1291, 1707023520, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1293, 1707023580, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1294, 1707023520, 360, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(1295, 1707023520, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 11.00, NULL),
(1297, 1707023640, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1301, 1707023700, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1305, 1707023760, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1313, 1707023820, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1321, 1707023880, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1322, 1707023880, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1325, 1707023940, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1329, 1707024480, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1330, 1707024240, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1333, 1707024480, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 'count', 1.00, NULL),
(1334, 1707024240, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 'count', 3.00, NULL),
(1335, 1707023520, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 'count', 3.00, NULL),
(1336, 1707017760, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 'count', 3.00, NULL),
(1337, 1707024480, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 'max', 1707024513.00, NULL),
(1338, 1707024240, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 'max', 1707024596.00, NULL),
(1339, 1707023520, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 'max', 1707024596.00, NULL),
(1340, 1707017760, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 'max', 1707024596.00, NULL),
(1341, 1707024540, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 'count', 2.00, NULL),
(1345, 1707024540, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 'max', 1707024596.00, NULL),
(1357, 1707024600, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 'count', 1.00, NULL),
(1358, 1707024600, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 'count', 2.00, NULL),
(1359, 1707023520, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 'count', 2.00, NULL),
(1360, 1707017760, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 'count', 2.00, NULL),
(1361, 1707024600, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 'max', 1707024610.00, NULL),
(1362, 1707024600, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 'max', 1707024660.00, NULL),
(1363, 1707023520, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 'max', 1707024660.00, NULL),
(1364, 1707017760, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 'max', 1707024660.00, NULL),
(1365, 1707024660, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 'count', 1.00, NULL),
(1369, 1707024660, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 'max', 1707024660.00, NULL),
(1373, 1707024720, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:226\"]', 'count', 1.00, NULL),
(1374, 1707024600, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:226\"]', 'count', 1.00, NULL),
(1375, 1707023520, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:226\"]', 'count', 1.00, NULL),
(1376, 1707017760, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:226\"]', 'count', 1.00, NULL),
(1377, 1707024720, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:226\"]', 'max', 1707024764.00, NULL),
(1378, 1707024600, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:226\"]', 'max', 1707024764.00, NULL),
(1379, 1707023520, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:226\"]', 'max', 1707024764.00, NULL),
(1380, 1707017760, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:226\"]', 'max', 1707024764.00, NULL),
(1381, 1707024900, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1382, 1707024600, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1385, 1707024960, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1386, 1707024960, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(1387, 1707024960, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 12.00, NULL),
(1389, 1707025020, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1393, 1707025080, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1401, 1707025140, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1405, 1707025320, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1406, 1707025320, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(1409, 1707025380, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1413, 1707025440, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1417, 1707025500, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1421, 1707025560, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1429, 1707025680, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1430, 1707025680, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1433, 1707026760, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1434, 1707026760, 360, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(1435, 1707026400, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 19.00, NULL),
(1437, 1707026820, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1441, 1707026880, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1445, 1707027000, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(1457, 1707027060, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1461, 1707027120, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1462, 1707027120, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(1465, 1707027180, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1469, 1707027240, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1470, 1707027120, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1471, 1707026400, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1473, 1707027240, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1477, 1707027360, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1485, 1707027480, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1486, 1707027480, 360, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(1489, 1707027540, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1493, 1707027600, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1497, 1707027720, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1501, 1707027780, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(1513, 1707027840, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1514, 1707027840, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(1515, 1707027840, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 14.00, NULL),
(1516, 1707027840, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 35.00, NULL),
(1521, 1707027960, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1529, 1707028020, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1533, 1707028080, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1537, 1707028200, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1538, 1707028200, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(1541, 1707028260, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1545, 1707028380, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1549, 1707028620, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1550, 1707028560, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(1557, 1707028680, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(1569, 1707030000, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1570, 1707030000, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1571, 1707029280, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1577, 1707030720, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1578, 1707030720, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1579, 1707030720, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1581, 1707031920, 60, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\RuntimeException\",\"vendor\\\\symfony\\\\console\\\\Input\\\\ArgvInput.php:125\"]', 'count', 1.00, NULL),
(1582, 1707031800, 360, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\RuntimeException\",\"vendor\\\\symfony\\\\console\\\\Input\\\\ArgvInput.php:125\"]', 'count', 1.00, NULL),
(1583, 1707030720, 1440, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\RuntimeException\",\"vendor\\\\symfony\\\\console\\\\Input\\\\ArgvInput.php:125\"]', 'count', 1.00, NULL),
(1584, 1707027840, 10080, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\RuntimeException\",\"vendor\\\\symfony\\\\console\\\\Input\\\\ArgvInput.php:125\"]', 'count', 1.00, NULL),
(1585, 1707031920, 60, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\RuntimeException\",\"vendor\\\\symfony\\\\console\\\\Input\\\\ArgvInput.php:125\"]', 'max', 1707031970.00, NULL),
(1586, 1707031800, 360, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\RuntimeException\",\"vendor\\\\symfony\\\\console\\\\Input\\\\ArgvInput.php:125\"]', 'max', 1707031970.00, NULL),
(1587, 1707030720, 1440, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\RuntimeException\",\"vendor\\\\symfony\\\\console\\\\Input\\\\ArgvInput.php:125\"]', 'max', 1707031970.00, NULL),
(1588, 1707027840, 10080, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\RuntimeException\",\"vendor\\\\symfony\\\\console\\\\Input\\\\ArgvInput.php:125\"]', 'max', 1707031970.00, NULL),
(1589, 1707031980, 60, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\RuntimeException\",\"vendor\\\\symfony\\\\console\\\\Input\\\\ArgvInput.php:238\"]', 'count', 1.00, NULL),
(1590, 1707031800, 360, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\RuntimeException\",\"vendor\\\\symfony\\\\console\\\\Input\\\\ArgvInput.php:238\"]', 'count', 1.00, NULL),
(1591, 1707030720, 1440, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\RuntimeException\",\"vendor\\\\symfony\\\\console\\\\Input\\\\ArgvInput.php:238\"]', 'count', 1.00, NULL),
(1592, 1707027840, 10080, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\RuntimeException\",\"vendor\\\\symfony\\\\console\\\\Input\\\\ArgvInput.php:238\"]', 'count', 1.00, NULL),
(1593, 1707031980, 60, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\RuntimeException\",\"vendor\\\\symfony\\\\console\\\\Input\\\\ArgvInput.php:238\"]', 'max', 1707031996.00, NULL),
(1594, 1707031800, 360, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\RuntimeException\",\"vendor\\\\symfony\\\\console\\\\Input\\\\ArgvInput.php:238\"]', 'max', 1707031996.00, NULL),
(1595, 1707030720, 1440, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\RuntimeException\",\"vendor\\\\symfony\\\\console\\\\Input\\\\ArgvInput.php:238\"]', 'max', 1707031996.00, NULL),
(1596, 1707027840, 10080, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\RuntimeException\",\"vendor\\\\symfony\\\\console\\\\Input\\\\ArgvInput.php:238\"]', 'max', 1707031996.00, NULL),
(1597, 1707032700, 60, 'slow_request', '[\"GET\",\"\\/admin\\/role\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Role\\\\RoleAndPermissionController@index\"]', 'count', 1.00, NULL),
(1598, 1707032520, 360, 'slow_request', '[\"GET\",\"\\/admin\\/role\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Role\\\\RoleAndPermissionController@index\"]', 'count', 1.00, NULL),
(1599, 1707032160, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/role\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Role\\\\RoleAndPermissionController@index\"]', 'count', 1.00, NULL),
(1600, 1707027840, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/role\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Role\\\\RoleAndPermissionController@index\"]', 'count', 1.00, NULL),
(1601, 1707032700, 60, 'slow_query', '[\"select * from `admins` where `id` = ? limit 1\",\"app\\\\Http\\\\Middleware\\\\Admin\\\\AdminLoginmiddleware.php:19\"]', 'count', 1.00, NULL),
(1602, 1707032520, 360, 'slow_query', '[\"select * from `admins` where `id` = ? limit 1\",\"app\\\\Http\\\\Middleware\\\\Admin\\\\AdminLoginmiddleware.php:19\"]', 'count', 1.00, NULL),
(1603, 1707032160, 1440, 'slow_query', '[\"select * from `admins` where `id` = ? limit 1\",\"app\\\\Http\\\\Middleware\\\\Admin\\\\AdminLoginmiddleware.php:19\"]', 'count', 1.00, NULL),
(1604, 1707027840, 10080, 'slow_query', '[\"select * from `admins` where `id` = ? limit 1\",\"app\\\\Http\\\\Middleware\\\\Admin\\\\AdminLoginmiddleware.php:19\"]', 'count', 1.00, NULL),
(1605, 1707032700, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1606, 1707032520, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1607, 1707032160, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1608, 1707027840, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 2.00, NULL),
(1609, 1707032700, 60, 'slow_request', '[\"GET\",\"\\/admin\\/role\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Role\\\\RoleAndPermissionController@index\"]', 'max', 7875.00, NULL),
(1610, 1707032520, 360, 'slow_request', '[\"GET\",\"\\/admin\\/role\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Role\\\\RoleAndPermissionController@index\"]', 'max', 7875.00, NULL),
(1611, 1707032160, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/role\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Role\\\\RoleAndPermissionController@index\"]', 'max', 7875.00, NULL),
(1612, 1707027840, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/role\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Role\\\\RoleAndPermissionController@index\"]', 'max', 7875.00, NULL),
(1613, 1707032700, 60, 'slow_query', '[\"select * from `admins` where `id` = ? limit 1\",\"app\\\\Http\\\\Middleware\\\\Admin\\\\AdminLoginmiddleware.php:19\"]', 'max', 7047.00, NULL),
(1614, 1707032520, 360, 'slow_query', '[\"select * from `admins` where `id` = ? limit 1\",\"app\\\\Http\\\\Middleware\\\\Admin\\\\AdminLoginmiddleware.php:19\"]', 'max', 7047.00, NULL),
(1615, 1707032160, 1440, 'slow_query', '[\"select * from `admins` where `id` = ? limit 1\",\"app\\\\Http\\\\Middleware\\\\Admin\\\\AdminLoginmiddleware.php:19\"]', 'max', 7047.00, NULL),
(1616, 1707027840, 10080, 'slow_query', '[\"select * from `admins` where `id` = ? limit 1\",\"app\\\\Http\\\\Middleware\\\\Admin\\\\AdminLoginmiddleware.php:19\"]', 'max', 7047.00, NULL),
(1617, 1707032700, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(1618, 1707032520, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(1619, 1707032160, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 16.00, NULL),
(1637, 1707033180, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1638, 1707032880, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1641, 1707033360, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1642, 1707033240, 360, 'cache_hit', 'spatie.permission.cache', 'count', 10.00, NULL),
(1645, 1707033420, 60, 'cache_hit', 'spatie.permission.cache', 'count', 8.00, NULL),
(1665, 1707033420, 60, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(1666, 1707033240, 360, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(1667, 1707032160, 1440, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(1668, 1707027840, 10080, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(1669, 1707033420, 60, 'slow_outgoing_request', '[\"POST\",\"https:\\/\\/microsoft-translator-text.p.rapidapi.com\\/translate?to%5B0%5D=bn&api-version=3.0&profanityAction=NoAction&textType=plain\"]', 'count', 1.00, NULL),
(1670, 1707033240, 360, 'slow_outgoing_request', '[\"POST\",\"https:\\/\\/microsoft-translator-text.p.rapidapi.com\\/translate?to%5B0%5D=bn&api-version=3.0&profanityAction=NoAction&textType=plain\"]', 'count', 1.00, NULL),
(1671, 1707032160, 1440, 'slow_outgoing_request', '[\"POST\",\"https:\\/\\/microsoft-translator-text.p.rapidapi.com\\/translate?to%5B0%5D=bn&api-version=3.0&profanityAction=NoAction&textType=plain\"]', 'count', 1.00, NULL),
(1672, 1707027840, 10080, 'slow_outgoing_request', '[\"POST\",\"https:\\/\\/microsoft-translator-text.p.rapidapi.com\\/translate?to%5B0%5D=bn&api-version=3.0&profanityAction=NoAction&textType=plain\"]', 'count', 1.00, NULL),
(1677, 1707033420, 60, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2669.00, NULL),
(1678, 1707033240, 360, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2669.00, NULL),
(1679, 1707032160, 1440, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2669.00, NULL),
(1680, 1707027840, 10080, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2669.00, NULL),
(1681, 1707033420, 60, 'slow_outgoing_request', '[\"POST\",\"https:\\/\\/microsoft-translator-text.p.rapidapi.com\\/translate?to%5B0%5D=bn&api-version=3.0&profanityAction=NoAction&textType=plain\"]', 'max', 2202.00, NULL),
(1682, 1707033240, 360, 'slow_outgoing_request', '[\"POST\",\"https:\\/\\/microsoft-translator-text.p.rapidapi.com\\/translate?to%5B0%5D=bn&api-version=3.0&profanityAction=NoAction&textType=plain\"]', 'max', 2202.00, NULL),
(1683, 1707032160, 1440, 'slow_outgoing_request', '[\"POST\",\"https:\\/\\/microsoft-translator-text.p.rapidapi.com\\/translate?to%5B0%5D=bn&api-version=3.0&profanityAction=NoAction&textType=plain\"]', 'max', 2202.00, NULL),
(1684, 1707027840, 10080, 'slow_outgoing_request', '[\"POST\",\"https:\\/\\/microsoft-translator-text.p.rapidapi.com\\/translate?to%5B0%5D=bn&api-version=3.0&profanityAction=NoAction&textType=plain\"]', 'max', 2202.00, NULL),
(1693, 1707033480, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1697, 1707037200, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1698, 1707037200, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1699, 1707036480, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1701, 1707037320, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1702, 1707037200, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1703, 1707036480, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1709, 1707039300, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1710, 1707039000, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1711, 1707037920, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1712, 1707037920, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 18.00, NULL),
(1713, 1707039360, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(1714, 1707039360, 360, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(1715, 1707039360, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 13.00, NULL),
(1717, 1707039360, 60, 'cache_miss', 'spatie.permission.cache', 'count', 2.00, NULL),
(1718, 1707039360, 360, 'cache_miss', 'spatie.permission.cache', 'count', 2.00, NULL),
(1719, 1707039360, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 3.00, NULL),
(1720, 1707037920, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 7.00, NULL),
(1737, 1707039420, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1741, 1707039480, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1749, 1707040200, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1750, 1707040080, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1753, 1707040200, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1754, 1707040080, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(1761, 1707040320, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1769, 1707040380, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1777, 1707041460, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1778, 1707041160, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1779, 1707040800, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(1780, 1707041460, 60, 'cache_miss', 'spatie.permission.cache', 'count', 3.00, NULL),
(1781, 1707041160, 360, 'cache_miss', 'spatie.permission.cache', 'count', 3.00, NULL),
(1782, 1707040800, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 4.00, NULL),
(1785, 1707041580, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1786, 1707041520, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1789, 1707041580, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1790, 1707041520, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1797, 1707044340, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1798, 1707044040, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1799, 1707043680, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1801, 1707125280, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1802, 1707125040, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1803, 1707124320, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1804, 1707118560, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1805, 1707125340, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(1806, 1707125040, 360, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(1807, 1707124320, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 12.00, NULL),
(1808, 1707118560, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 13.00, NULL),
(1821, 1707125460, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(1822, 1707125400, 360, 'cache_hit', 'spatie.permission.cache', 'count', 8.00, NULL),
(1833, 1707125520, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(1845, 1707125580, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1849, 1707125580, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\index.blade.php:146\"]', 'count', 1.00, NULL),
(1850, 1707125400, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\index.blade.php:146\"]', 'count', 1.00, NULL),
(1851, 1707124320, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\index.blade.php:146\"]', 'count', 1.00, NULL),
(1852, 1707118560, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\index.blade.php:146\"]', 'count', 1.00, NULL),
(1857, 1707125580, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\index.blade.php:146\"]', 'max', 1707125631.00, NULL),
(1858, 1707125400, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\index.blade.php:146\"]', 'max', 1707125631.00, NULL),
(1859, 1707124320, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\index.blade.php:146\"]', 'max', 1707125631.00, NULL),
(1860, 1707118560, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\index.blade.php:146\"]', 'max', 1707125631.00, NULL),
(1861, 1707125760, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1862, 1707125760, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1863, 1707125760, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1865, 1707275220, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1866, 1707275160, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1867, 1707274080, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1868, 1707269760, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1869, 1707275400, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1870, 1707275160, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1871, 1707274080, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1872, 1707269760, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 46.00, NULL),
(1873, 1707275400, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\create.blade.php:184\"]', 'count', 1.00, NULL),
(1874, 1707275160, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\create.blade.php:184\"]', 'count', 1.00, NULL),
(1875, 1707274080, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\create.blade.php:184\"]', 'count', 1.00, NULL),
(1876, 1707269760, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\create.blade.php:184\"]', 'count', 1.00, NULL),
(1877, 1707275400, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\create.blade.php:184\"]', 'max', 1707275444.00, NULL),
(1878, 1707275160, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\create.blade.php:184\"]', 'max', 1707275444.00, NULL),
(1879, 1707274080, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\create.blade.php:184\"]', 'max', 1707275444.00, NULL),
(1880, 1707269760, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\create.blade.php:184\"]', 'max', 1707275444.00, NULL),
(1881, 1707275580, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1882, 1707275520, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(1883, 1707275520, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 27.00, NULL),
(1885, 1707275640, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1893, 1707275700, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1901, 1707275760, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1905, 1707275940, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1906, 1707275880, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(1909, 1707276120, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1917, 1707276240, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1918, 1707276240, 360, 'cache_hit', 'spatie.permission.cache', 'count', 9.00, NULL),
(1921, 1707276360, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(1933, 1707276420, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1937, 1707276480, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1945, 1707276540, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1953, 1707276600, 60, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(1954, 1707276600, 360, 'cache_hit', 'spatie.permission.cache', 'count', 9.00, NULL),
(1977, 1707276720, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1978, 1707276720, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\create.blade.php:274\"]', 'count', 1.00, NULL),
(1979, 1707276600, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\create.blade.php:274\"]', 'count', 1.00, NULL),
(1980, 1707275520, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\create.blade.php:274\"]', 'count', 1.00, NULL),
(1981, 1707269760, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\create.blade.php:274\"]', 'count', 1.00, NULL),
(1985, 1707276720, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\create.blade.php:274\"]', 'max', 1707276761.00, NULL),
(1986, 1707276600, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\create.blade.php:274\"]', 'max', 1707276761.00, NULL),
(1987, 1707275520, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\create.blade.php:274\"]', 'max', 1707276761.00, NULL),
(1988, 1707269760, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\create.blade.php:274\"]', 'max', 1707276761.00, NULL),
(1989, 1707276780, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1993, 1707276840, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(1997, 1707277320, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(1998, 1707277320, 360, 'cache_hit', 'spatie.permission.cache', 'count', 8.00, NULL),
(1999, 1707276960, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 15.00, NULL),
(2013, 1707277440, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2017, 1707277500, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2021, 1707277560, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2025, 1707277620, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2029, 1707277800, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2030, 1707277680, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(2037, 1707277860, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2045, 1707277920, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2049, 1707278280, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2050, 1707278040, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2053, 1707278340, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2057, 1707278400, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2058, 1707278400, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2059, 1707278400, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2065, 1707278460, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2069, 1707286800, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2070, 1707286680, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2071, 1707285600, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2072, 1707279840, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2073, 1707287040, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2074, 1707287040, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2075, 1707287040, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 9.00, NULL),
(2076, 1707279840, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 20.00, NULL),
(2077, 1707287220, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2081, 1707287220, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:84\"]', 'count', 1.00, NULL),
(2082, 1707287040, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:84\"]', 'count', 1.00, NULL),
(2083, 1707287040, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:84\"]', 'count', 1.00, NULL),
(2084, 1707279840, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:84\"]', 'count', 1.00, NULL),
(2085, 1707287220, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:84\"]', 'max', 1707287267.00, NULL),
(2086, 1707287040, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:84\"]', 'max', 1707287267.00, NULL),
(2087, 1707287040, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:84\"]', 'max', 1707287267.00, NULL),
(2088, 1707279840, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:84\"]', 'max', 1707287267.00, NULL),
(2089, 1707287460, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'count', 1.00, NULL),
(2090, 1707287400, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'count', 3.00, NULL),
(2091, 1707287040, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'count', 3.00, NULL),
(2092, 1707279840, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'count', 3.00, NULL),
(2093, 1707287460, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'max', 1707287488.00, NULL),
(2094, 1707287400, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'max', 1707287600.00, NULL),
(2095, 1707287040, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'max', 1707287600.00, NULL),
(2096, 1707279840, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'max', 1707287600.00, NULL),
(2097, 1707287520, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'count', 1.00, NULL),
(2098, 1707287400, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'count', 1.00, NULL),
(2099, 1707287040, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'count', 1.00, NULL),
(2100, 1707279840, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'count', 1.00, NULL),
(2101, 1707287520, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'max', 1707287523.00, NULL),
(2102, 1707287400, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'max', 1707287523.00, NULL),
(2103, 1707287040, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'max', 1707287523.00, NULL),
(2104, 1707279840, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'max', 1707287523.00, NULL),
(2105, 1707287520, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'count', 1.00, NULL),
(2109, 1707287520, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'max', 1707287560.00, NULL),
(2113, 1707287580, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'count', 1.00, NULL),
(2117, 1707287580, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 'max', 1707287600.00, NULL),
(2121, 1707288120, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2122, 1707288120, 360, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(2125, 1707288240, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2129, 1707288300, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2133, 1707288360, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2141, 1707288420, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2149, 1707288480, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2150, 1707288480, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(2151, 1707288480, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 11.00, NULL),
(2153, 1707288540, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2157, 1707288600, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2161, 1707288720, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2165, 1707288780, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2169, 1707288840, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2170, 1707288840, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2173, 1707288960, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2177, 1707289320, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2178, 1707289200, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2181, 1707289380, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2185, 1707289440, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2189, 1707289800, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2190, 1707289560, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2193, 1707289920, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2194, 1707289920, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2195, 1707289920, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(2196, 1707289920, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 30.00, NULL),
(2197, 1707290160, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2201, 1707290340, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2202, 1707290280, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(2213, 1707290400, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2214, 1707290280, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2215, 1707289920, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2216, 1707289920, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 2.00, NULL),
(2217, 1707290460, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2221, 1707290520, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2225, 1707291360, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(2226, 1707291360, 360, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(2227, 1707291360, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 8.00, NULL),
(2241, 1707291960, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2242, 1707291720, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2245, 1707292020, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2253, 1707292140, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2254, 1707292080, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2257, 1707297960, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2258, 1707297840, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2259, 1707297120, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2261, 1707298020, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(2262, 1707297840, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(2263, 1707297120, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(2277, 1707298080, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2281, 1707298140, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2282, 1707298140, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:55\"]', 'count', 1.00, NULL),
(2283, 1707297840, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:55\"]', 'count', 1.00, NULL),
(2284, 1707297120, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:55\"]', 'count', 1.00, NULL),
(2285, 1707289920, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:55\"]', 'count', 1.00, NULL),
(2289, 1707298140, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:55\"]', 'max', 1707298154.00, NULL),
(2290, 1707297840, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:55\"]', 'max', 1707298154.00, NULL),
(2291, 1707297120, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:55\"]', 'max', 1707298154.00, NULL),
(2292, 1707289920, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:55\"]', 'max', 1707298154.00, NULL),
(2293, 1707298200, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2294, 1707298200, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2297, 1707299280, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2298, 1707299280, 360, 'cache_hit', 'spatie.permission.cache', 'count', 8.00, NULL),
(2299, 1707298560, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 8.00, NULL),
(2300, 1707299280, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:49\"]', 'count', 1.00, NULL),
(2301, 1707299280, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:49\"]', 'count', 4.00, NULL),
(2302, 1707298560, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:49\"]', 'count', 4.00, NULL),
(2303, 1707289920, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:49\"]', 'count', 4.00, NULL),
(2305, 1707299280, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:49\"]', 'max', 1707299315.00, NULL),
(2306, 1707299280, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:49\"]', 'max', 1707299550.00, NULL),
(2307, 1707298560, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:49\"]', 'max', 1707299550.00, NULL);
INSERT INTO `pulse_aggregates` (`id`, `bucket`, `period`, `type`, `key`, `aggregate`, `value`, `count`) VALUES
(2308, 1707289920, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:49\"]', 'max', 1707299550.00, NULL),
(2309, 1707299340, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2310, 1707299340, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:49\"]', 'count', 1.00, NULL),
(2317, 1707299340, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:49\"]', 'max', 1707299387.00, NULL),
(2321, 1707299400, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2322, 1707299400, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:49\"]', 'count', 1.00, NULL),
(2329, 1707299400, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:49\"]', 'max', 1707299409.00, NULL),
(2333, 1707299460, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2334, 1707299460, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:50\"]', 'count', 1.00, NULL),
(2335, 1707299280, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:50\"]', 'count', 1.00, NULL),
(2336, 1707298560, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:50\"]', 'count', 1.00, NULL),
(2337, 1707289920, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:50\"]', 'count', 1.00, NULL),
(2341, 1707299460, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:50\"]', 'max', 1707299471.00, NULL),
(2342, 1707299280, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:50\"]', 'max', 1707299471.00, NULL),
(2343, 1707298560, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:50\"]', 'max', 1707299471.00, NULL),
(2344, 1707289920, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:50\"]', 'max', 1707299471.00, NULL),
(2345, 1707299460, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:50\"]', 'count', 2.00, NULL),
(2346, 1707299280, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:50\"]', 'count', 2.00, NULL),
(2347, 1707298560, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:50\"]', 'count', 2.00, NULL),
(2348, 1707289920, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:50\"]', 'count', 2.00, NULL),
(2353, 1707299460, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:50\"]', 'max', 1707299494.00, NULL),
(2354, 1707299280, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:50\"]', 'max', 1707299494.00, NULL),
(2355, 1707298560, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:50\"]', 'max', 1707299494.00, NULL),
(2356, 1707289920, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:50\"]', 'max', 1707299494.00, NULL),
(2369, 1707299520, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2370, 1707299520, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:49\"]', 'count', 1.00, NULL),
(2377, 1707299520, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:49\"]', 'max', 1707299550.00, NULL),
(2385, 1707300360, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2386, 1707300360, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(2387, 1707300000, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 14.00, NULL),
(2388, 1707300000, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 57.00, NULL),
(2393, 1707300420, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2397, 1707300540, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2401, 1707300600, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2405, 1707300900, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2406, 1707300720, 360, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(2413, 1707300960, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2421, 1707301080, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2422, 1707301080, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(2429, 1707301140, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2433, 1707301200, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2437, 1707301260, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2441, 1707301680, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2442, 1707301440, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2443, 1707301440, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2444, 1707300000, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 2.00, NULL),
(2445, 1707301680, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2446, 1707301440, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2447, 1707301440, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 23.00, NULL),
(2457, 1707302220, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2458, 1707302160, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(2465, 1707302280, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2477, 1707302520, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2478, 1707302520, 360, 'cache_hit', 'spatie.permission.cache', 'count', 15.00, NULL),
(2489, 1707302580, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(2505, 1707302580, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 1.00, NULL),
(2506, 1707302520, 360, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 2.00, NULL),
(2507, 1707301440, 1440, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 2.00, NULL),
(2508, 1707300000, 10080, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 5.00, NULL),
(2513, 1707302580, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1707302636.00, NULL),
(2514, 1707302520, 360, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1707302872.00, NULL),
(2515, 1707301440, 1440, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1707302872.00, NULL),
(2516, 1707300000, 10080, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1707304180.00, NULL),
(2517, 1707302640, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2525, 1707302700, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2537, 1707302820, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2545, 1707302820, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 1.00, NULL),
(2549, 1707302820, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1707302872.00, NULL),
(2553, 1707302940, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(2554, 1707302880, 360, 'cache_hit', 'spatie.permission.cache', 'count', 15.00, NULL),
(2555, 1707302880, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 20.00, NULL),
(2556, 1707302940, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 1.00, NULL),
(2557, 1707302880, 360, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 2.00, NULL),
(2558, 1707302880, 1440, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 3.00, NULL),
(2561, 1707302940, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1707302957.00, NULL),
(2562, 1707302880, 360, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1707303135.00, NULL),
(2563, 1707302880, 1440, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1707304180.00, NULL),
(2577, 1707303000, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(2593, 1707303060, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2594, 1707302880, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2595, 1707302880, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2597, 1707303060, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2605, 1707303120, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 1.00, NULL),
(2609, 1707303120, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1707303135.00, NULL),
(2613, 1707303120, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(2633, 1707304140, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2634, 1707303960, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(2635, 1707304140, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 1.00, NULL),
(2636, 1707303960, 360, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 1.00, NULL),
(2641, 1707304140, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1707304180.00, NULL),
(2642, 1707303960, 360, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1707304180.00, NULL),
(2645, 1707304200, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(2661, 1707360780, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2662, 1707360480, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2663, 1707360480, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2664, 1707360480, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 2.00, NULL),
(2665, 1707360780, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2666, 1707360480, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2667, 1707360480, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(2668, 1707360480, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 20.00, NULL),
(2677, 1707360840, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2678, 1707360840, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2685, 1707361860, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2686, 1707361560, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2689, 1707363360, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2690, 1707363360, 360, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(2691, 1707363360, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 14.00, NULL),
(2701, 1707363600, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2709, 1707363660, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2710, 1707363660, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:58\"]', 'count', 2.00, NULL),
(2711, 1707363360, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:58\"]', 'count', 2.00, NULL),
(2712, 1707363360, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:58\"]', 'count', 2.00, NULL),
(2713, 1707360480, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:58\"]', 'count', 2.00, NULL),
(2717, 1707363660, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:58\"]', 'max', 1707363688.00, NULL),
(2718, 1707363360, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:58\"]', 'max', 1707363688.00, NULL),
(2719, 1707363360, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:58\"]', 'max', 1707363688.00, NULL),
(2720, 1707360480, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:58\"]', 'max', 1707363688.00, NULL),
(2733, 1707363720, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2734, 1707363720, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2737, 1707363900, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:213\"]', 'count', 1.00, NULL),
(2738, 1707363720, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:213\"]', 'count', 2.00, NULL),
(2739, 1707363360, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:213\"]', 'count', 2.00, NULL),
(2740, 1707360480, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:213\"]', 'count', 2.00, NULL),
(2741, 1707363900, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:213\"]', 'max', 1707363925.00, NULL),
(2742, 1707363720, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:213\"]', 'max', 1707363963.00, NULL),
(2743, 1707363360, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:213\"]', 'max', 1707363963.00, NULL),
(2744, 1707360480, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:213\"]', 'max', 1707363963.00, NULL),
(2745, 1707363960, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:213\"]', 'count', 1.00, NULL),
(2749, 1707363960, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:213\"]', 'max', 1707363963.00, NULL),
(2753, 1707364140, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2754, 1707364080, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2757, 1707364500, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2758, 1707364440, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2759, 1707363360, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2761, 1707364500, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2762, 1707364440, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(2769, 1707364680, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2781, 1707369000, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:216\"]', 'count', 1.00, NULL),
(2782, 1707368760, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:216\"]', 'count', 1.00, NULL),
(2783, 1707367680, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:216\"]', 'count', 1.00, NULL),
(2784, 1707360480, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:216\"]', 'count', 1.00, NULL),
(2785, 1707369000, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:216\"]', 'max', 1707369027.00, NULL),
(2786, 1707368760, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:216\"]', 'max', 1707369027.00, NULL),
(2787, 1707367680, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:216\"]', 'max', 1707369027.00, NULL),
(2788, 1707360480, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:216\"]', 'max', 1707369027.00, NULL),
(2789, 1707372300, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2790, 1707372000, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2791, 1707372000, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2792, 1707370560, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2793, 1707372300, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2794, 1707372000, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2795, 1707372000, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2796, 1707370560, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2797, 1707373080, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2798, 1707373080, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2805, 1707374160, 60, 'exception', '[\"TypeError\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:27\"]', 'count', 2.00, NULL),
(2806, 1707374160, 360, 'exception', '[\"TypeError\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:27\"]', 'count', 2.00, NULL),
(2807, 1707373440, 1440, 'exception', '[\"TypeError\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:27\"]', 'count', 2.00, NULL),
(2808, 1707370560, 10080, 'exception', '[\"TypeError\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:27\"]', 'count', 2.00, NULL),
(2809, 1707374160, 60, 'exception', '[\"TypeError\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:27\"]', 'max', 1707374206.00, NULL),
(2810, 1707374160, 360, 'exception', '[\"TypeError\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:27\"]', 'max', 1707374206.00, NULL),
(2811, 1707373440, 1440, 'exception', '[\"TypeError\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:27\"]', 'max', 1707374206.00, NULL),
(2812, 1707370560, 10080, 'exception', '[\"TypeError\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:27\"]', 'max', 1707374206.00, NULL),
(2821, 1707374520, 60, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:28\"]', 'count', 1.00, NULL),
(2822, 1707374520, 360, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:28\"]', 'count', 2.00, NULL),
(2823, 1707373440, 1440, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:28\"]', 'count', 2.00, NULL),
(2824, 1707370560, 10080, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:28\"]', 'count', 2.00, NULL),
(2825, 1707374520, 60, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:28\"]', 'max', 1707374566.00, NULL),
(2826, 1707374520, 360, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:28\"]', 'max', 1707374635.00, NULL),
(2827, 1707373440, 1440, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:28\"]', 'max', 1707374635.00, NULL),
(2828, 1707370560, 10080, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:28\"]', 'max', 1707374635.00, NULL),
(2829, 1707374580, 60, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:29\"]', 'count', 1.00, NULL),
(2830, 1707374520, 360, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:29\"]', 'count', 1.00, NULL),
(2831, 1707373440, 1440, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:29\"]', 'count', 1.00, NULL),
(2832, 1707370560, 10080, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:29\"]', 'count', 1.00, NULL),
(2833, 1707374580, 60, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:29\"]', 'max', 1707374597.00, NULL),
(2834, 1707374520, 360, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:29\"]', 'max', 1707374597.00, NULL),
(2835, 1707373440, 1440, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:29\"]', 'max', 1707374597.00, NULL),
(2836, 1707370560, 10080, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:29\"]', 'max', 1707374597.00, NULL),
(2837, 1707374580, 60, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:28\"]', 'count', 1.00, NULL),
(2841, 1707374580, 60, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:28\"]', 'max', 1707374635.00, NULL),
(2845, 1707378540, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:139\"]', 'count', 1.00, NULL),
(2846, 1707378480, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:139\"]', 'count', 1.00, NULL),
(2847, 1707377760, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:139\"]', 'count', 1.00, NULL),
(2848, 1707370560, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:139\"]', 'count', 1.00, NULL),
(2849, 1707378540, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:139\"]', 'max', 1707378578.00, NULL),
(2850, 1707378480, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:139\"]', 'max', 1707378578.00, NULL),
(2851, 1707377760, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:139\"]', 'max', 1707378578.00, NULL),
(2852, 1707370560, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:139\"]', 'max', 1707378578.00, NULL),
(2853, 1707383280, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2854, 1707383160, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2855, 1707382080, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2856, 1707380640, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 2.00, NULL),
(2857, 1707383280, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2858, 1707383160, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2859, 1707382080, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2860, 1707380640, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(2861, 1707385800, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2862, 1707385680, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2863, 1707384960, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2873, 1707387000, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2874, 1707386760, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2875, 1707386400, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2877, 1707387840, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2878, 1707387840, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2879, 1707387840, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2881, 1707389940, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2882, 1707389640, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2883, 1707389280, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2885, 1707889380, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2886, 1707889320, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2887, 1707888960, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2888, 1707884640, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2889, 1707889380, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2890, 1707889320, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(2891, 1707888960, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(2892, 1707884640, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(2893, 1707889440, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2901, 1707889620, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(2910, 1708338420, 60, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(2911, 1708338240, 360, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(2912, 1708338240, 1440, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(2913, 1708338240, 10080, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(2914, 1708338420, 60, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 1670.00, NULL),
(2915, 1708338240, 360, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 1670.00, NULL),
(2916, 1708338240, 1440, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 1670.00, NULL),
(2917, 1708338240, 10080, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 1670.00, NULL),
(2918, 1713669660, 60, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(2919, 1713669480, 360, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(2920, 1713669120, 1440, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(2921, 1713660480, 10080, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(2922, 1713669660, 60, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 2453.00, NULL),
(2923, 1713669480, 360, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 2453.00, NULL),
(2924, 1713669120, 1440, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 2453.00, NULL),
(2925, 1713660480, 10080, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 2453.00, NULL),
(2926, 1713669660, 60, 'slow_request', '[\"POST\",\"\\/admin\\/login\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@handleLogin\"]', 'count', 1.00, NULL),
(2927, 1713669480, 360, 'slow_request', '[\"POST\",\"\\/admin\\/login\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@handleLogin\"]', 'count', 1.00, NULL),
(2928, 1713669120, 1440, 'slow_request', '[\"POST\",\"\\/admin\\/login\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@handleLogin\"]', 'count', 1.00, NULL),
(2929, 1713660480, 10080, 'slow_request', '[\"POST\",\"\\/admin\\/login\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@handleLogin\"]', 'count', 1.00, NULL),
(2930, 1713669660, 60, 'slow_request', '[\"POST\",\"\\/admin\\/login\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@handleLogin\"]', 'max', 1059.00, NULL),
(2931, 1713669480, 360, 'slow_request', '[\"POST\",\"\\/admin\\/login\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@handleLogin\"]', 'max', 1059.00, NULL),
(2932, 1713669120, 1440, 'slow_request', '[\"POST\",\"\\/admin\\/login\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@handleLogin\"]', 'max', 1059.00, NULL),
(2933, 1713660480, 10080, 'slow_request', '[\"POST\",\"\\/admin\\/login\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@handleLogin\"]', 'max', 1059.00, NULL),
(2934, 1713669720, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2935, 1713669480, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2936, 1713669120, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2937, 1713660480, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2938, 1713672600, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2939, 1713672360, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2940, 1713672000, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2941, 1713670560, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2942, 1713683580, 60, 'exception', '[\"ErrorException\",\"routes\\\\web.php:41\"]', 'count', 1.00, NULL),
(2943, 1713683520, 360, 'exception', '[\"ErrorException\",\"routes\\\\web.php:41\"]', 'count', 1.00, NULL),
(2944, 1713683520, 1440, 'exception', '[\"ErrorException\",\"routes\\\\web.php:41\"]', 'count', 1.00, NULL),
(2945, 1713680640, 10080, 'exception', '[\"ErrorException\",\"routes\\\\web.php:41\"]', 'count', 1.00, NULL),
(2946, 1713683580, 60, 'exception', '[\"ErrorException\",\"routes\\\\web.php:41\"]', 'max', 1713683619.00, NULL),
(2947, 1713683520, 360, 'exception', '[\"ErrorException\",\"routes\\\\web.php:41\"]', 'max', 1713683619.00, NULL),
(2948, 1713683520, 1440, 'exception', '[\"ErrorException\",\"routes\\\\web.php:41\"]', 'max', 1713683619.00, NULL),
(2949, 1713680640, 10080, 'exception', '[\"ErrorException\",\"routes\\\\web.php:41\"]', 'max', 1713683619.00, NULL),
(2950, 1713693660, 60, 'exception', '[\"ErrorException\",\"routes\\\\web.php:41\"]', 'count', 1.00, NULL),
(2951, 1713693600, 360, 'exception', '[\"ErrorException\",\"routes\\\\web.php:41\"]', 'count', 1.00, NULL),
(2952, 1713693600, 1440, 'exception', '[\"ErrorException\",\"routes\\\\web.php:41\"]', 'count', 1.00, NULL),
(2953, 1713690720, 10080, 'exception', '[\"ErrorException\",\"routes\\\\web.php:41\"]', 'count', 1.00, NULL),
(2954, 1713693660, 60, 'exception', '[\"ErrorException\",\"routes\\\\web.php:41\"]', 'max', 1713693697.00, NULL),
(2955, 1713693600, 360, 'exception', '[\"ErrorException\",\"routes\\\\web.php:41\"]', 'max', 1713693697.00, NULL),
(2956, 1713693600, 1440, 'exception', '[\"ErrorException\",\"routes\\\\web.php:41\"]', 'max', 1713693697.00, NULL),
(2957, 1713690720, 10080, 'exception', '[\"ErrorException\",\"routes\\\\web.php:41\"]', 'max', 1713693697.00, NULL),
(2958, 1713694380, 60, 'exception', '[\"ErrorException\",\"routes\\\\web.php:48\"]', 'count', 1.00, NULL),
(2959, 1713694320, 360, 'exception', '[\"ErrorException\",\"routes\\\\web.php:48\"]', 'count', 1.00, NULL),
(2960, 1713693600, 1440, 'exception', '[\"ErrorException\",\"routes\\\\web.php:48\"]', 'count', 1.00, NULL),
(2961, 1713690720, 10080, 'exception', '[\"ErrorException\",\"routes\\\\web.php:48\"]', 'count', 2.00, NULL),
(2962, 1713694380, 60, 'exception', '[\"ErrorException\",\"routes\\\\web.php:48\"]', 'max', 1713694431.00, NULL),
(2963, 1713694320, 360, 'exception', '[\"ErrorException\",\"routes\\\\web.php:48\"]', 'max', 1713694431.00, NULL),
(2964, 1713693600, 1440, 'exception', '[\"ErrorException\",\"routes\\\\web.php:48\"]', 'max', 1713694431.00, NULL),
(2965, 1713690720, 10080, 'exception', '[\"ErrorException\",\"routes\\\\web.php:48\"]', 'max', 1713695178.00, NULL),
(2966, 1713695160, 60, 'exception', '[\"ErrorException\",\"routes\\\\web.php:48\"]', 'count', 1.00, NULL),
(2967, 1713695040, 360, 'exception', '[\"ErrorException\",\"routes\\\\web.php:48\"]', 'count', 1.00, NULL),
(2968, 1713695040, 1440, 'exception', '[\"ErrorException\",\"routes\\\\web.php:48\"]', 'count', 1.00, NULL),
(2970, 1713695160, 60, 'exception', '[\"ErrorException\",\"routes\\\\web.php:48\"]', 'max', 1713695178.00, NULL),
(2971, 1713695040, 360, 'exception', '[\"ErrorException\",\"routes\\\\web.php:48\"]', 'max', 1713695178.00, NULL),
(2972, 1713695040, 1440, 'exception', '[\"ErrorException\",\"routes\\\\web.php:48\"]', 'max', 1713695178.00, NULL),
(2974, 1719238140, 60, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(2975, 1719237960, 360, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(2976, 1719237600, 1440, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(2977, 1719234720, 10080, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(2978, 1719238140, 60, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 1708.00, NULL),
(2979, 1719237960, 360, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 1708.00, NULL),
(2980, 1719237600, 1440, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 1708.00, NULL),
(2981, 1719234720, 10080, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 1708.00, NULL),
(2982, 1719238140, 60, 'slow_request', '[\"POST\",\"\\/admin\\/login\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@handleLogin\"]', 'count', 1.00, NULL),
(2983, 1719237960, 360, 'slow_request', '[\"POST\",\"\\/admin\\/login\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@handleLogin\"]', 'count', 1.00, NULL),
(2984, 1719237600, 1440, 'slow_request', '[\"POST\",\"\\/admin\\/login\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@handleLogin\"]', 'count', 1.00, NULL),
(2985, 1719234720, 10080, 'slow_request', '[\"POST\",\"\\/admin\\/login\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@handleLogin\"]', 'count', 1.00, NULL),
(2986, 1719238140, 60, 'slow_request', '[\"POST\",\"\\/admin\\/login\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@handleLogin\"]', 'max', 1060.00, NULL),
(2987, 1719237960, 360, 'slow_request', '[\"POST\",\"\\/admin\\/login\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@handleLogin\"]', 'max', 1060.00, NULL),
(2988, 1719237600, 1440, 'slow_request', '[\"POST\",\"\\/admin\\/login\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@handleLogin\"]', 'max', 1060.00, NULL),
(2989, 1719234720, 10080, 'slow_request', '[\"POST\",\"\\/admin\\/login\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@handleLogin\"]', 'max', 1060.00, NULL),
(2990, 1719238140, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2991, 1719237960, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2992, 1719237600, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 3.00, NULL),
(2993, 1719234720, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 3.00, NULL),
(2994, 1719238200, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2995, 1719237960, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2996, 1719237600, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 10.00, NULL),
(2997, 1719234720, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 10.00, NULL),
(3002, 1719238380, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3003, 1719238320, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(3006, 1719238440, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3010, 1719238440, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3011, 1719238320, 360, 'cache_miss', 'spatie.permission.cache', 'count', 2.00, NULL),
(3018, 1719238500, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3022, 1719238560, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(3034, 1719238860, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3035, 1719238680, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3039, 1726979220, 60, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(3040, 1726979040, 360, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(3041, 1726979040, 1440, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(3042, 1726976160, 10080, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(3043, 1726979220, 60, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 5295.00, NULL),
(3044, 1726979040, 360, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 5295.00, NULL),
(3045, 1726979040, 1440, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 5295.00, NULL),
(3046, 1726976160, 10080, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 5295.00, NULL),
(3047, 1726980300, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3048, 1726980120, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3049, 1726979040, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3050, 1726976160, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3051, 1726980300, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(3052, 1726980120, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(3053, 1726979040, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(3054, 1726976160, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 30.00, NULL),
(3071, 1726985160, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3072, 1726985160, 360, 'cache_hit', 'spatie.permission.cache', 'count', 25.00, NULL),
(3073, 1726984800, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 25.00, NULL),
(3075, 1726985280, 60, 'cache_hit', 'spatie.permission.cache', 'count', 16.00, NULL),
(3139, 1726985340, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(3155, 1726985400, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(3171, 1726991280, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3172, 1726991280, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3173, 1726990560, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3174, 1726986240, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 2.00, NULL),
(3175, 1726991280, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3176, 1726991280, 360, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(3177, 1726990560, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(3178, 1726986240, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 12.00, NULL),
(3183, 1726991520, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3187, 1726991580, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3191, 1726991700, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3192, 1726991640, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(3195, 1726991760, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3203, 1726994940, 60, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'count', 1.00, NULL),
(3204, 1726994880, 360, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'count', 1.00, NULL),
(3205, 1726994880, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'count', 1.00, NULL),
(3206, 1726986240, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'count', 1.00, NULL),
(3207, 1726994940, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3208, 1726994880, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3209, 1726994880, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3211, 1726994940, 60, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'max', 1088.00, NULL),
(3212, 1726994880, 360, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'max', 1088.00, NULL),
(3213, 1726994880, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'max', 1088.00, NULL),
(3214, 1726986240, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'max', 1088.00, NULL),
(3215, 1726995240, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(3216, 1726995240, 360, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(3217, 1726994880, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(3227, 1726995300, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3231, 1726995660, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3232, 1726995600, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3235, 1726996860, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3236, 1726996680, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(3237, 1726996320, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(3238, 1726996320, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 47.00, NULL),
(3239, 1726996920, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3247, 1726998240, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3248, 1726998120, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3249, 1726997760, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3251, 1726998240, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\SubCategoryController.php:19\"]', 'count', 1.00, NULL),
(3252, 1726998120, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\SubCategoryController.php:19\"]', 'count', 1.00, NULL),
(3253, 1726997760, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\SubCategoryController.php:19\"]', 'count', 1.00, NULL),
(3254, 1726996320, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\SubCategoryController.php:19\"]', 'count', 1.00, NULL),
(3255, 1726998240, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\SubCategoryController.php:19\"]', 'max', 1726998242.00, NULL),
(3256, 1726998120, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\SubCategoryController.php:19\"]', 'max', 1726998242.00, NULL),
(3257, 1726997760, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\SubCategoryController.php:19\"]', 'max', 1726998242.00, NULL),
(3258, 1726996320, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\SubCategoryController.php:19\"]', 'max', 1726998242.00, NULL),
(3259, 1726998240, 60, 'exception', '[\"ParseError\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\sub-category\\\\index.blade.php:220\"]', 'count', 1.00, NULL),
(3260, 1726998120, 360, 'exception', '[\"ParseError\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\sub-category\\\\index.blade.php:220\"]', 'count', 1.00, NULL),
(3261, 1726997760, 1440, 'exception', '[\"ParseError\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\sub-category\\\\index.blade.php:220\"]', 'count', 1.00, NULL),
(3262, 1726996320, 10080, 'exception', '[\"ParseError\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\sub-category\\\\index.blade.php:220\"]', 'count', 1.00, NULL),
(3263, 1726998240, 60, 'exception', '[\"ParseError\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\sub-category\\\\index.blade.php:220\"]', 'max', 1726998277.00, NULL),
(3264, 1726998120, 360, 'exception', '[\"ParseError\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\sub-category\\\\index.blade.php:220\"]', 'max', 1726998277.00, NULL),
(3265, 1726997760, 1440, 'exception', '[\"ParseError\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\sub-category\\\\index.blade.php:220\"]', 'max', 1726998277.00, NULL),
(3266, 1726996320, 10080, 'exception', '[\"ParseError\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\sub-category\\\\index.blade.php:220\"]', 'max', 1726998277.00, NULL),
(3267, 1726998480, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3268, 1726998480, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3269, 1726998480, 60, 'cache_miss', 'spatie.permission.cache', 'count', 3.00, NULL),
(3270, 1726998480, 360, 'cache_miss', 'spatie.permission.cache', 'count', 3.00, NULL),
(3271, 1726997760, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 3.00, NULL),
(3272, 1726996320, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 5.00, NULL),
(3275, 1727000040, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3276, 1726999920, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3277, 1726999200, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3279, 1727000100, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(3280, 1726999920, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL);
INSERT INTO `pulse_aggregates` (`id`, `bucket`, `period`, `type`, `key`, `aggregate`, `value`, `count`) VALUES
(3281, 1726999200, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 12.00, NULL),
(3291, 1727000160, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3295, 1727000220, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3303, 1727000280, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3304, 1727000280, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(3307, 1727000340, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3315, 1727000520, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3323, 1727000580, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3327, 1727000640, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3328, 1727000640, 360, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(3329, 1727000640, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 11.00, NULL),
(3335, 1727000700, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3339, 1727000760, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3343, 1727000880, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3347, 1727000940, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3355, 1727001000, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3356, 1727001000, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3359, 1727001000, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\SubcategoryStoreRequest.php:52\"]', 'count', 1.00, NULL),
(3360, 1727001000, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\SubcategoryStoreRequest.php:52\"]', 'count', 1.00, NULL),
(3361, 1727000640, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\SubcategoryStoreRequest.php:52\"]', 'count', 1.00, NULL),
(3362, 1726996320, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\SubcategoryStoreRequest.php:52\"]', 'count', 1.00, NULL),
(3363, 1727001000, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\SubcategoryStoreRequest.php:52\"]', 'max', 1727001023.00, NULL),
(3364, 1727001000, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\SubcategoryStoreRequest.php:52\"]', 'max', 1727001023.00, NULL),
(3365, 1727000640, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\SubcategoryStoreRequest.php:52\"]', 'max', 1727001023.00, NULL),
(3366, 1726996320, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\SubcategoryStoreRequest.php:52\"]', 'max', 1727001023.00, NULL),
(3367, 1727001360, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(3368, 1727001360, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(3379, 1727002740, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3380, 1727002440, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3381, 1727002080, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 11.00, NULL),
(3383, 1727003160, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3384, 1727003160, 360, 'cache_hit', 'spatie.permission.cache', 'count', 10.00, NULL),
(3391, 1727003220, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(3403, 1727003340, 60, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'count', 1.00, NULL),
(3404, 1727003160, 360, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'count', 1.00, NULL),
(3405, 1727002080, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'count', 1.00, NULL),
(3406, 1726996320, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'count', 1.00, NULL),
(3407, 1727003340, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3411, 1727003340, 60, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'max', 1084.00, NULL),
(3412, 1727003160, 360, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'max', 1084.00, NULL),
(3413, 1727002080, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'max', 1084.00, NULL),
(3414, 1726996320, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 'max', 1084.00, NULL),
(3415, 1727003400, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3423, 1727003460, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3431, 1727003520, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3432, 1727003520, 360, 'cache_hit', 'spatie.permission.cache', 'count', 8.00, NULL),
(3433, 1727003520, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 8.00, NULL),
(3439, 1727003580, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3443, 1727003640, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(3455, 1727003640, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3456, 1727003520, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3457, 1727003520, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3467, 1727060280, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3468, 1727060040, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3469, 1727059680, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3470, 1727056800, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 2.00, NULL),
(3471, 1727060280, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3472, 1727060040, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(3473, 1727059680, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 9.00, NULL),
(3474, 1727056800, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 84.00, NULL),
(3479, 1727060340, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3483, 1727060520, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3484, 1727060400, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(3487, 1727060580, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3491, 1727060700, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(3503, 1727060760, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3504, 1727060760, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3507, 1727061240, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3508, 1727061120, 360, 'cache_hit', 'spatie.permission.cache', 'count', 8.00, NULL),
(3509, 1727061120, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 25.00, NULL),
(3515, 1727061300, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3519, 1727061360, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(3531, 1727061420, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3532, 1727061420, 60, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductStoreRequest.php:91\"]', 'count', 1.00, NULL),
(3533, 1727061120, 360, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductStoreRequest.php:91\"]', 'count', 1.00, NULL),
(3534, 1727061120, 1440, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductStoreRequest.php:91\"]', 'count', 1.00, NULL),
(3535, 1727056800, 10080, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductStoreRequest.php:91\"]', 'count', 1.00, NULL),
(3539, 1727061420, 60, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductStoreRequest.php:91\"]', 'max', 1727061452.00, NULL),
(3540, 1727061120, 360, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductStoreRequest.php:91\"]', 'max', 1727061452.00, NULL),
(3541, 1727061120, 1440, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductStoreRequest.php:91\"]', 'max', 1727061452.00, NULL),
(3542, 1727056800, 10080, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductStoreRequest.php:91\"]', 'max', 1727061452.00, NULL),
(3547, 1727061480, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(3548, 1727061480, 360, 'cache_hit', 'spatie.permission.cache', 'count', 11.00, NULL),
(3559, 1727061540, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3563, 1727061600, 60, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(3591, 1727062200, 60, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/{product}\\/edit\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@edit\"]', 'count', 1.00, NULL),
(3592, 1727062200, 360, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/{product}\\/edit\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@edit\"]', 'count', 1.00, NULL),
(3593, 1727061120, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/{product}\\/edit\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@edit\"]', 'count', 1.00, NULL),
(3594, 1727056800, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/{product}\\/edit\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@edit\"]', 'count', 1.00, NULL),
(3595, 1727062200, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3596, 1727062200, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(3597, 1727062200, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\edit.blade.php:162\"]', 'count', 1.00, NULL),
(3598, 1727062200, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\edit.blade.php:162\"]', 'count', 1.00, NULL),
(3599, 1727061120, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\edit.blade.php:162\"]', 'count', 1.00, NULL),
(3600, 1727056800, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\edit.blade.php:162\"]', 'count', 1.00, NULL),
(3603, 1727062200, 60, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/{product}\\/edit\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@edit\"]', 'max', 1136.00, NULL),
(3604, 1727062200, 360, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/{product}\\/edit\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@edit\"]', 'max', 1136.00, NULL),
(3605, 1727061120, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/{product}\\/edit\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@edit\"]', 'max', 1136.00, NULL),
(3606, 1727056800, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/{product}\\/edit\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@edit\"]', 'max', 1136.00, NULL),
(3607, 1727062200, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\edit.blade.php:162\"]', 'max', 1727062238.00, NULL),
(3608, 1727062200, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\edit.blade.php:162\"]', 'max', 1727062238.00, NULL),
(3609, 1727061120, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\edit.blade.php:162\"]', 'max', 1727062238.00, NULL),
(3610, 1727056800, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\edit.blade.php:162\"]', 'max', 1727062238.00, NULL),
(3611, 1727062320, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3615, 1727062380, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3623, 1727062440, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3631, 1727062560, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3632, 1727062560, 360, 'cache_hit', 'spatie.permission.cache', 'count', 8.00, NULL),
(3633, 1727062560, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 48.00, NULL),
(3635, 1727062620, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(3651, 1727062800, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(3663, 1727062920, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3664, 1727062920, 360, 'cache_hit', 'spatie.permission.cache', 'count', 12.00, NULL),
(3667, 1727062980, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(3687, 1727063040, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(3707, 1727063100, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3711, 1727063520, 60, 'cache_hit', 'spatie.permission.cache', 'count', 9.00, NULL),
(3712, 1727063280, 360, 'cache_hit', 'spatie.permission.cache', 'count', 14.00, NULL),
(3747, 1727063580, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(3767, 1727063640, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(3768, 1727063640, 360, 'cache_hit', 'spatie.permission.cache', 'count', 14.00, NULL),
(3787, 1727063760, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3795, 1727063820, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3803, 1727063880, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(3815, 1727063880, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3816, 1727063640, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3817, 1727062560, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3819, 1727063940, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3827, 1727064000, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3828, 1727064000, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3829, 1727064000, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3835, 1727067480, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3836, 1727067240, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3837, 1727066880, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 12.00, NULL),
(3838, 1727066880, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 28.00, NULL),
(3839, 1727067540, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3840, 1727067240, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3841, 1727066880, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3842, 1727066880, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 2.00, NULL),
(3843, 1727067540, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3847, 1727067600, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(3848, 1727067600, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(3867, 1727067900, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3871, 1727067960, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3872, 1727067960, 360, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(3875, 1727068140, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3879, 1727068200, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3883, 1727068260, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3887, 1727068320, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3888, 1727068320, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3889, 1727068320, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 13.00, NULL),
(3891, 1727069040, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3892, 1727069040, 360, 'cache_hit', 'spatie.permission.cache', 'count', 12.00, NULL),
(3899, 1727069100, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3903, 1727069160, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3911, 1727069220, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\SubcategoryStoreRequest.php:52\"]', 'count', 1.00, NULL),
(3912, 1727069040, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\SubcategoryStoreRequest.php:52\"]', 'count', 1.00, NULL),
(3913, 1727068320, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\SubcategoryStoreRequest.php:52\"]', 'count', 1.00, NULL),
(3914, 1727066880, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\SubcategoryStoreRequest.php:52\"]', 'count', 1.00, NULL),
(3915, 1727069220, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\SubcategoryStoreRequest.php:52\"]', 'max', 1727069224.00, NULL),
(3916, 1727069040, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\SubcategoryStoreRequest.php:52\"]', 'max', 1727069224.00, NULL),
(3917, 1727068320, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\SubcategoryStoreRequest.php:52\"]', 'max', 1727069224.00, NULL),
(3918, 1727066880, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\SubcategoryStoreRequest.php:52\"]', 'max', 1727069224.00, NULL),
(3919, 1727069220, 60, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(3947, 1727070000, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3948, 1727069760, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3949, 1727069760, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(3955, 1727071140, 60, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\layouts\\\\front_layouts.blade.php:427\"]', 'count', 1.00, NULL),
(3956, 1727070840, 360, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\layouts\\\\front_layouts.blade.php:427\"]', 'count', 1.00, NULL),
(3957, 1727069760, 1440, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\layouts\\\\front_layouts.blade.php:427\"]', 'count', 1.00, NULL),
(3958, 1727066880, 10080, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\layouts\\\\front_layouts.blade.php:427\"]', 'count', 1.00, NULL),
(3959, 1727071140, 60, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\layouts\\\\front_layouts.blade.php:427\"]', 'max', 1727071186.00, NULL),
(3960, 1727070840, 360, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\layouts\\\\front_layouts.blade.php:427\"]', 'max', 1727071186.00, NULL),
(3961, 1727069760, 1440, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\layouts\\\\front_layouts.blade.php:427\"]', 'max', 1727071186.00, NULL),
(3962, 1727066880, 10080, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\layouts\\\\front_layouts.blade.php:427\"]', 'max', 1727071186.00, NULL),
(3963, 1727071380, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\front_layouts.blade.php:1214\"]', 'count', 1.00, NULL),
(3964, 1727071200, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\front_layouts.blade.php:1214\"]', 'count', 1.00, NULL),
(3965, 1727071200, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\front_layouts.blade.php:1214\"]', 'count', 1.00, NULL),
(3966, 1727066880, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\front_layouts.blade.php:1214\"]', 'count', 1.00, NULL),
(3967, 1727071380, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\front_layouts.blade.php:1214\"]', 'max', 1727071383.00, NULL),
(3968, 1727071200, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\front_layouts.blade.php:1214\"]', 'max', 1727071383.00, NULL),
(3969, 1727071200, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\front_layouts.blade.php:1214\"]', 'max', 1727071383.00, NULL),
(3970, 1727066880, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\front_layouts.blade.php:1214\"]', 'max', 1727071383.00, NULL),
(3971, 1727075400, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3972, 1727075160, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3973, 1727074080, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(3974, 1727075400, 60, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Middleware\\\\LanguageChangeMiddleware.php:23\"]', 'count', 2.00, NULL),
(3975, 1727075160, 360, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Middleware\\\\LanguageChangeMiddleware.php:23\"]', 'count', 2.00, NULL),
(3976, 1727074080, 1440, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Middleware\\\\LanguageChangeMiddleware.php:23\"]', 'count', 2.00, NULL),
(3977, 1727066880, 10080, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Middleware\\\\LanguageChangeMiddleware.php:23\"]', 'count', 2.00, NULL),
(3979, 1727075400, 60, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Middleware\\\\LanguageChangeMiddleware.php:23\"]', 'max', 1727075431.00, NULL),
(3980, 1727075160, 360, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Middleware\\\\LanguageChangeMiddleware.php:23\"]', 'max', 1727075431.00, NULL),
(3981, 1727074080, 1440, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Middleware\\\\LanguageChangeMiddleware.php:23\"]', 'max', 1727075431.00, NULL),
(3982, 1727066880, 10080, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Middleware\\\\LanguageChangeMiddleware.php:23\"]', 'max', 1727075431.00, NULL),
(3983, 1727075400, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3984, 1727075160, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3985, 1727074080, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(3995, 1727075580, 60, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:15\"]', 'count', 1.00, NULL),
(3996, 1727075520, 360, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:15\"]', 'count', 1.00, NULL),
(3997, 1727075520, 1440, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:15\"]', 'count', 1.00, NULL),
(3998, 1727066880, 10080, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:15\"]', 'count', 1.00, NULL),
(3999, 1727075580, 60, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:15\"]', 'max', 1727075592.00, NULL),
(4000, 1727075520, 360, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:15\"]', 'max', 1727075592.00, NULL),
(4001, 1727075520, 1440, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:15\"]', 'max', 1727075592.00, NULL),
(4002, 1727066880, 10080, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:15\"]', 'max', 1727075592.00, NULL),
(4003, 1727075580, 60, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:15\"]', 'count', 1.00, NULL),
(4004, 1727075520, 360, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:15\"]', 'count', 1.00, NULL),
(4005, 1727075520, 1440, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:15\"]', 'count', 1.00, NULL),
(4006, 1727066880, 10080, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:15\"]', 'count', 1.00, NULL),
(4007, 1727075580, 60, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:15\"]', 'max', 1727075624.00, NULL),
(4008, 1727075520, 360, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:15\"]', 'max', 1727075624.00, NULL),
(4009, 1727075520, 1440, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:15\"]', 'max', 1727075624.00, NULL),
(4010, 1727066880, 10080, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:15\"]', 'max', 1727075624.00, NULL),
(4011, 1727081040, 60, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\Categoryresource.php:18\"]', 'count', 1.00, NULL),
(4012, 1727080920, 360, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\Categoryresource.php:18\"]', 'count', 1.00, NULL),
(4013, 1727079840, 1440, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\Categoryresource.php:18\"]', 'count', 1.00, NULL),
(4014, 1727076960, 10080, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\Categoryresource.php:18\"]', 'count', 1.00, NULL),
(4015, 1727081040, 60, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\Categoryresource.php:18\"]', 'max', 1727081057.00, NULL),
(4016, 1727080920, 360, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\Categoryresource.php:18\"]', 'max', 1727081057.00, NULL),
(4017, 1727079840, 1440, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\Categoryresource.php:18\"]', 'max', 1727081057.00, NULL),
(4018, 1727076960, 10080, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\Categoryresource.php:18\"]', 'max', 1727081057.00, NULL),
(4019, 1727081100, 60, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\SubCategoryresource.php:18\"]', 'count', 1.00, NULL),
(4020, 1727080920, 360, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\SubCategoryresource.php:18\"]', 'count', 2.00, NULL),
(4021, 1727079840, 1440, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\SubCategoryresource.php:18\"]', 'count', 2.00, NULL),
(4022, 1727076960, 10080, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\SubCategoryresource.php:18\"]', 'count', 2.00, NULL),
(4023, 1727081100, 60, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\SubCategoryresource.php:18\"]', 'max', 1727081106.00, NULL),
(4024, 1727080920, 360, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\SubCategoryresource.php:18\"]', 'max', 1727081198.00, NULL),
(4025, 1727079840, 1440, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\SubCategoryresource.php:18\"]', 'max', 1727081198.00, NULL),
(4026, 1727076960, 10080, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\SubCategoryresource.php:18\"]', 'max', 1727081198.00, NULL),
(4027, 1727081160, 60, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\SubCategoryresource.php:18\"]', 'count', 1.00, NULL),
(4031, 1727081160, 60, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\SubCategoryresource.php:18\"]', 'max', 1727081198.00, NULL),
(4035, 1727081820, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(4036, 1727081640, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(4037, 1727081280, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(4038, 1727076960, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(4039, 1727081820, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(4040, 1727081640, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(4041, 1727081280, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(4042, 1727076960, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(4047, 1727088360, 60, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'count', 1.00, NULL),
(4048, 1727088120, 360, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'count', 1.00, NULL),
(4049, 1727087040, 1440, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'count', 1.00, NULL),
(4050, 1727087040, 10080, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'count', 2.00, NULL),
(4051, 1727088360, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:13\"]', 'count', 1.00, NULL),
(4052, 1727088120, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:13\"]', 'count', 1.00, NULL),
(4053, 1727087040, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:13\"]', 'count', 1.00, NULL),
(4054, 1727087040, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:13\"]', 'count', 1.00, NULL),
(4055, 1727088360, 60, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'max', 1016.00, NULL),
(4056, 1727088120, 360, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'max', 1016.00, NULL),
(4057, 1727087040, 1440, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'max', 1016.00, NULL),
(4058, 1727087040, 10080, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'max', 1109.00, NULL),
(4059, 1727088360, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:13\"]', 'max', 1727088389.00, NULL),
(4060, 1727088120, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:13\"]', 'max', 1727088389.00, NULL),
(4061, 1727087040, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:13\"]', 'max', 1727088389.00, NULL),
(4062, 1727087040, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:13\"]', 'max', 1727088389.00, NULL),
(4063, 1727088540, 60, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 2.00, NULL),
(4064, 1727088480, 360, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 3.00, NULL),
(4065, 1727088480, 1440, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 3.00, NULL),
(4066, 1727087040, 10080, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 3.00, NULL),
(4067, 1727088540, 60, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727088571.00, NULL),
(4068, 1727088480, 360, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727088639.00, NULL),
(4069, 1727088480, 1440, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727088639.00, NULL),
(4070, 1727087040, 10080, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727088639.00, NULL),
(4079, 1727088600, 60, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 1.00, NULL),
(4083, 1727088600, 60, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727088639.00, NULL),
(4087, 1727088660, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 1.00, NULL),
(4088, 1727088480, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 1.00, NULL),
(4089, 1727088480, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 1.00, NULL),
(4090, 1727087040, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 1.00, NULL),
(4091, 1727088660, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727088717.00, NULL),
(4092, 1727088480, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727088717.00, NULL),
(4093, 1727088480, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727088717.00, NULL),
(4094, 1727087040, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727088717.00, NULL),
(4095, 1727088780, 60, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:18\"]', 'count', 1.00, NULL),
(4096, 1727088480, 360, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:18\"]', 'count', 1.00, NULL),
(4097, 1727088480, 1440, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:18\"]', 'count', 1.00, NULL),
(4098, 1727087040, 10080, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:18\"]', 'count', 1.00, NULL),
(4099, 1727088780, 60, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:18\"]', 'max', 1727088833.00, NULL),
(4100, 1727088480, 360, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:18\"]', 'max', 1727088833.00, NULL),
(4101, 1727088480, 1440, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:18\"]', 'max', 1727088833.00, NULL),
(4102, 1727087040, 10080, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:18\"]', 'max', 1727088833.00, NULL),
(4103, 1727088900, 60, 'slow_request', '[\"GET\",\"\\/frontend\\/getCategoryDeatils\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller@categoryDetails\"]', 'count', 1.00, NULL),
(4104, 1727088840, 360, 'slow_request', '[\"GET\",\"\\/frontend\\/getCategoryDeatils\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller@categoryDetails\"]', 'count', 1.00, NULL),
(4105, 1727088480, 1440, 'slow_request', '[\"GET\",\"\\/frontend\\/getCategoryDeatils\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller@categoryDetails\"]', 'count', 1.00, NULL),
(4106, 1727087040, 10080, 'slow_request', '[\"GET\",\"\\/frontend\\/getCategoryDeatils\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller@categoryDetails\"]', 'count', 1.00, NULL),
(4107, 1727088900, 60, 'slow_request', '[\"GET\",\"\\/frontend\\/getCategoryDeatils\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller@categoryDetails\"]', 'max', 1090.00, NULL),
(4108, 1727088840, 360, 'slow_request', '[\"GET\",\"\\/frontend\\/getCategoryDeatils\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller@categoryDetails\"]', 'max', 1090.00, NULL),
(4109, 1727088480, 1440, 'slow_request', '[\"GET\",\"\\/frontend\\/getCategoryDeatils\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller@categoryDetails\"]', 'max', 1090.00, NULL),
(4110, 1727087040, 10080, 'slow_request', '[\"GET\",\"\\/frontend\\/getCategoryDeatils\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller@categoryDetails\"]', 'max', 1090.00, NULL),
(4111, 1727088960, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:20\"]', 'count', 1.00, NULL),
(4112, 1727088840, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:20\"]', 'count', 1.00, NULL),
(4113, 1727088480, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:20\"]', 'count', 1.00, NULL),
(4114, 1727087040, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:20\"]', 'count', 1.00, NULL),
(4115, 1727088960, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:20\"]', 'max', 1727088968.00, NULL),
(4116, 1727088840, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:20\"]', 'max', 1727088968.00, NULL),
(4117, 1727088480, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:20\"]', 'max', 1727088968.00, NULL),
(4118, 1727087040, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:20\"]', 'max', 1727088968.00, NULL),
(4119, 1727089080, 60, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 1.00, NULL),
(4120, 1727088840, 360, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 1.00, NULL),
(4121, 1727088480, 1440, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 1.00, NULL),
(4122, 1727087040, 10080, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 1.00, NULL),
(4123, 1727089080, 60, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727089126.00, NULL),
(4124, 1727088840, 360, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727089126.00, NULL),
(4125, 1727088480, 1440, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727089126.00, NULL),
(4126, 1727087040, 10080, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727089126.00, NULL),
(4127, 1727089140, 60, 'exception', '[\"TypeError\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 1.00, NULL),
(4128, 1727088840, 360, 'exception', '[\"TypeError\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 1.00, NULL),
(4129, 1727088480, 1440, 'exception', '[\"TypeError\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 1.00, NULL),
(4130, 1727087040, 10080, 'exception', '[\"TypeError\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 1.00, NULL),
(4131, 1727089140, 60, 'exception', '[\"TypeError\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727089155.00, NULL),
(4132, 1727088840, 360, 'exception', '[\"TypeError\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727089155.00, NULL),
(4133, 1727088480, 1440, 'exception', '[\"TypeError\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727089155.00, NULL),
(4134, 1727087040, 10080, 'exception', '[\"TypeError\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727089155.00, NULL),
(4135, 1727089200, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 1.00, NULL),
(4136, 1727089200, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 1.00, NULL),
(4137, 1727088480, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 1.00, NULL),
(4138, 1727087040, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'count', 1.00, NULL),
(4139, 1727089200, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727089241.00, NULL),
(4140, 1727089200, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727089241.00, NULL),
(4141, 1727088480, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727089241.00, NULL),
(4142, 1727087040, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 'max', 1727089241.00, NULL),
(4143, 1727089620, 60, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'count', 1.00, NULL),
(4144, 1727089560, 360, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'count', 1.00, NULL),
(4145, 1727088480, 1440, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'count', 1.00, NULL),
(4146, 1727089620, 60, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'count', 1.00, NULL),
(4147, 1727089560, 360, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'count', 1.00, NULL),
(4148, 1727088480, 1440, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'count', 1.00, NULL),
(4149, 1727087040, 10080, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'count', 1.00, NULL),
(4151, 1727089620, 60, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'max', 1109.00, NULL),
(4152, 1727089560, 360, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'max', 1109.00, NULL),
(4153, 1727088480, 1440, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'max', 1109.00, NULL),
(4154, 1727089620, 60, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'max', 1727089664.00, NULL),
(4155, 1727089560, 360, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'max', 1727089664.00, NULL),
(4156, 1727088480, 1440, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'max', 1727089664.00, NULL),
(4157, 1727087040, 10080, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'max', 1727089664.00, NULL),
(4159, 1727089620, 60, 'exception', '[\"BadMethodCallException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\Traits\\\\ForwardsCalls.php:67\"]', 'count', 1.00, NULL),
(4160, 1727089560, 360, 'exception', '[\"BadMethodCallException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\Traits\\\\ForwardsCalls.php:67\"]', 'count', 1.00, NULL),
(4161, 1727088480, 1440, 'exception', '[\"BadMethodCallException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\Traits\\\\ForwardsCalls.php:67\"]', 'count', 1.00, NULL),
(4162, 1727087040, 10080, 'exception', '[\"BadMethodCallException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\Traits\\\\ForwardsCalls.php:67\"]', 'count', 1.00, NULL),
(4163, 1727089620, 60, 'exception', '[\"BadMethodCallException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\Traits\\\\ForwardsCalls.php:67\"]', 'max', 1727089676.00, NULL),
(4164, 1727089560, 360, 'exception', '[\"BadMethodCallException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\Traits\\\\ForwardsCalls.php:67\"]', 'max', 1727089676.00, NULL),
(4165, 1727088480, 1440, 'exception', '[\"BadMethodCallException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\Traits\\\\ForwardsCalls.php:67\"]', 'max', 1727089676.00, NULL),
(4166, 1727087040, 10080, 'exception', '[\"BadMethodCallException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\Traits\\\\ForwardsCalls.php:67\"]', 'max', 1727089676.00, NULL),
(4167, 1727089680, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:20\"]', 'count', 1.00, NULL),
(4168, 1727089560, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:20\"]', 'count', 1.00, NULL),
(4169, 1727088480, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:20\"]', 'count', 1.00, NULL),
(4170, 1727087040, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:20\"]', 'count', 1.00, NULL),
(4171, 1727089680, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:20\"]', 'max', 1727089708.00, NULL),
(4172, 1727089560, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:20\"]', 'max', 1727089708.00, NULL),
(4173, 1727088480, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:20\"]', 'max', 1727089708.00, NULL),
(4174, 1727087040, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:20\"]', 'max', 1727089708.00, NULL),
(4175, 1727090340, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php:822\"]', 'count', 1.00, NULL),
(4176, 1727090280, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php:822\"]', 'count', 1.00, NULL),
(4177, 1727089920, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php:822\"]', 'count', 1.00, NULL),
(4178, 1727087040, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php:822\"]', 'count', 1.00, NULL),
(4179, 1727090340, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php:822\"]', 'max', 1727090375.00, NULL),
(4180, 1727090280, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php:822\"]', 'max', 1727090375.00, NULL);
INSERT INTO `pulse_aggregates` (`id`, `bucket`, `period`, `type`, `key`, `aggregate`, `value`, `count`) VALUES
(4181, 1727089920, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php:822\"]', 'max', 1727090375.00, NULL),
(4182, 1727087040, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php:822\"]', 'max', 1727090375.00, NULL),
(4183, 1727090460, 60, 'exception', '[\"ErrorException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Collection.php:1732\"]', 'count', 1.00, NULL),
(4184, 1727090280, 360, 'exception', '[\"ErrorException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Collection.php:1732\"]', 'count', 1.00, NULL),
(4185, 1727089920, 1440, 'exception', '[\"ErrorException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Collection.php:1732\"]', 'count', 1.00, NULL),
(4186, 1727087040, 10080, 'exception', '[\"ErrorException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Collection.php:1732\"]', 'count', 1.00, NULL),
(4187, 1727090460, 60, 'exception', '[\"ErrorException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Collection.php:1732\"]', 'max', 1727090485.00, NULL),
(4188, 1727090280, 360, 'exception', '[\"ErrorException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Collection.php:1732\"]', 'max', 1727090485.00, NULL),
(4189, 1727089920, 1440, 'exception', '[\"ErrorException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Collection.php:1732\"]', 'max', 1727090485.00, NULL),
(4190, 1727087040, 10080, 'exception', '[\"ErrorException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Collection.php:1732\"]', 'max', 1727090485.00, NULL),
(4191, 1727172360, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2024_09_24_160215_create_solution_categories_table.php:14\"]', 'count', 1.00, NULL),
(4192, 1727172360, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2024_09_24_160215_create_solution_categories_table.php:14\"]', 'count', 2.00, NULL),
(4193, 1727172000, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2024_09_24_160215_create_solution_categories_table.php:14\"]', 'count', 2.00, NULL),
(4194, 1727167680, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2024_09_24_160215_create_solution_categories_table.php:14\"]', 'count', 3.00, NULL),
(4195, 1727172360, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2024_09_24_160215_create_solution_categories_table.php:14\"]', 'max', 1727172416.00, NULL),
(4196, 1727172360, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2024_09_24_160215_create_solution_categories_table.php:14\"]', 'max', 1727172564.00, NULL),
(4197, 1727172000, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2024_09_24_160215_create_solution_categories_table.php:14\"]', 'max', 1727172564.00, NULL),
(4198, 1727167680, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2024_09_24_160215_create_solution_categories_table.php:14\"]', 'max', 1727176249.00, NULL),
(4199, 1727172480, 60, 'exception', '[\"Illuminate\\\\Contracts\\\\Filesystem\\\\FileNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Filesystem\\\\Filesystem.php:153\"]', 'count', 1.00, NULL),
(4200, 1727172360, 360, 'exception', '[\"Illuminate\\\\Contracts\\\\Filesystem\\\\FileNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Filesystem\\\\Filesystem.php:153\"]', 'count', 1.00, NULL),
(4201, 1727172000, 1440, 'exception', '[\"Illuminate\\\\Contracts\\\\Filesystem\\\\FileNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Filesystem\\\\Filesystem.php:153\"]', 'count', 1.00, NULL),
(4202, 1727167680, 10080, 'exception', '[\"Illuminate\\\\Contracts\\\\Filesystem\\\\FileNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Filesystem\\\\Filesystem.php:153\"]', 'count', 1.00, NULL),
(4203, 1727172480, 60, 'exception', '[\"Illuminate\\\\Contracts\\\\Filesystem\\\\FileNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Filesystem\\\\Filesystem.php:153\"]', 'max', 1727172509.00, NULL),
(4204, 1727172360, 360, 'exception', '[\"Illuminate\\\\Contracts\\\\Filesystem\\\\FileNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Filesystem\\\\Filesystem.php:153\"]', 'max', 1727172509.00, NULL),
(4205, 1727172000, 1440, 'exception', '[\"Illuminate\\\\Contracts\\\\Filesystem\\\\FileNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Filesystem\\\\Filesystem.php:153\"]', 'max', 1727172509.00, NULL),
(4206, 1727167680, 10080, 'exception', '[\"Illuminate\\\\Contracts\\\\Filesystem\\\\FileNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Filesystem\\\\Filesystem.php:153\"]', 'max', 1727172509.00, NULL),
(4207, 1727172540, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2024_09_24_160215_create_solution_categories_table.php:14\"]', 'count', 1.00, NULL),
(4211, 1727172540, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2024_09_24_160215_create_solution_categories_table.php:14\"]', 'max', 1727172564.00, NULL),
(4215, 1727172900, 60, 'cache_miss', 'spatie.permission.cache', 'count', 5.00, NULL),
(4216, 1727172720, 360, 'cache_miss', 'spatie.permission.cache', 'count', 8.00, NULL),
(4217, 1727172000, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 12.00, NULL),
(4218, 1727167680, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 13.00, NULL),
(4219, 1727172900, 60, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:113\"]', 'count', 1.00, NULL),
(4220, 1727172720, 360, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:113\"]', 'count', 3.00, NULL),
(4221, 1727172000, 1440, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:113\"]', 'count', 3.00, NULL),
(4222, 1727167680, 10080, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:113\"]', 'count', 3.00, NULL),
(4223, 1727172900, 60, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:113\"]', 'max', 1727172906.00, NULL),
(4224, 1727172720, 360, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:113\"]', 'max', 1727172981.00, NULL),
(4225, 1727172000, 1440, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:113\"]', 'max', 1727172981.00, NULL),
(4226, 1727167680, 10080, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:113\"]', 'max', 1727172981.00, NULL),
(4227, 1727172960, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(4228, 1727172720, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(4229, 1727172000, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(4230, 1727167680, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 92.00, NULL),
(4231, 1727172960, 60, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:113\"]', 'count', 2.00, NULL),
(4235, 1727172960, 60, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:113\"]', 'max', 1727172981.00, NULL),
(4251, 1727172960, 60, 'cache_miss', 'spatie.permission.cache', 'count', 3.00, NULL),
(4259, 1727173200, 60, 'cache_miss', 'spatie.permission.cache', 'count', 4.00, NULL),
(4260, 1727173080, 360, 'cache_miss', 'spatie.permission.cache', 'count', 4.00, NULL),
(4263, 1727173500, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(4264, 1727173440, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(4265, 1727173440, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(4267, 1727173500, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(4268, 1727173440, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(4269, 1727173440, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 26.00, NULL),
(4279, 1727174160, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(4280, 1727174160, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(4287, 1727174280, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(4291, 1727174340, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(4299, 1727174400, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(4303, 1727174520, 60, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(4304, 1727174520, 360, 'cache_hit', 'spatie.permission.cache', 'count', 17.00, NULL),
(4331, 1727174580, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(4347, 1727174820, 60, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(4371, 1727174880, 60, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(4372, 1727174880, 360, 'cache_hit', 'spatie.permission.cache', 'count', 14.00, NULL),
(4373, 1727174880, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 38.00, NULL),
(4395, 1727174940, 60, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(4419, 1727175000, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(4423, 1727175000, 60, 'slow_request', '[\"GET\",\"\\/admin\\/solution\\/category\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController@index\"]', 'count', 1.00, NULL),
(4424, 1727174880, 360, 'slow_request', '[\"GET\",\"\\/admin\\/solution\\/category\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController@index\"]', 'count', 1.00, NULL),
(4425, 1727174880, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/solution\\/category\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController@index\"]', 'count', 2.00, NULL),
(4426, 1727167680, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/solution\\/category\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController@index\"]', 'count', 2.00, NULL),
(4427, 1727175000, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController.php:24\"]', 'count', 1.00, NULL),
(4428, 1727174880, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController.php:24\"]', 'count', 1.00, NULL),
(4429, 1727174880, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController.php:24\"]', 'count', 1.00, NULL),
(4430, 1727167680, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController.php:24\"]', 'count', 1.00, NULL),
(4435, 1727175000, 60, 'slow_request', '[\"GET\",\"\\/admin\\/solution\\/category\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController@index\"]', 'max', 1723.00, NULL),
(4436, 1727174880, 360, 'slow_request', '[\"GET\",\"\\/admin\\/solution\\/category\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController@index\"]', 'max', 1723.00, NULL),
(4437, 1727174880, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/solution\\/category\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController@index\"]', 'max', 1723.00, NULL),
(4438, 1727167680, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/solution\\/category\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController@index\"]', 'max', 1723.00, NULL),
(4439, 1727175000, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController.php:24\"]', 'max', 1727175022.00, NULL),
(4440, 1727174880, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController.php:24\"]', 'max', 1727175022.00, NULL),
(4441, 1727174880, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController.php:24\"]', 'max', 1727175022.00, NULL),
(4442, 1727167680, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController.php:24\"]', 'max', 1727175022.00, NULL),
(4443, 1727175480, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(4444, 1727175240, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(4445, 1727175480, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\solution\\\\category\\\\index.blade.php:219\"]', 'count', 1.00, NULL),
(4446, 1727175240, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\solution\\\\category\\\\index.blade.php:219\"]', 'count', 1.00, NULL),
(4447, 1727174880, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\solution\\\\category\\\\index.blade.php:219\"]', 'count', 1.00, NULL),
(4448, 1727167680, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\solution\\\\category\\\\index.blade.php:219\"]', 'count', 1.00, NULL),
(4451, 1727175480, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\solution\\\\category\\\\index.blade.php:219\"]', 'max', 1727175493.00, NULL),
(4452, 1727175240, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\solution\\\\category\\\\index.blade.php:219\"]', 'max', 1727175493.00, NULL),
(4453, 1727174880, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\solution\\\\category\\\\index.blade.php:219\"]', 'max', 1727175493.00, NULL),
(4454, 1727167680, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\solution\\\\category\\\\index.blade.php:219\"]', 'max', 1727175493.00, NULL),
(4455, 1727175540, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(4475, 1727175600, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(4476, 1727175600, 360, 'cache_hit', 'spatie.permission.cache', 'count', 15.00, NULL),
(4483, 1727175660, 60, 'cache_hit', 'spatie.permission.cache', 'count', 13.00, NULL),
(4523, 1727175660, 60, 'slow_request', '[\"GET\",\"\\/admin\\/solution\\/category\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController@index\"]', 'count', 1.00, NULL),
(4524, 1727175600, 360, 'slow_request', '[\"GET\",\"\\/admin\\/solution\\/category\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController@index\"]', 'count', 1.00, NULL),
(4531, 1727175660, 60, 'slow_request', '[\"GET\",\"\\/admin\\/solution\\/category\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController@index\"]', 'max', 1046.00, NULL),
(4532, 1727175600, 360, 'slow_request', '[\"GET\",\"\\/admin\\/solution\\/category\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController@index\"]', 'max', 1046.00, NULL),
(4543, 1727176080, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(4544, 1727175960, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(4547, 1727176080, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\SubCategoryController.php:29\"]', 'count', 1.00, NULL),
(4548, 1727175960, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\SubCategoryController.php:29\"]', 'count', 2.00, NULL),
(4549, 1727174880, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\SubCategoryController.php:29\"]', 'count', 2.00, NULL),
(4550, 1727167680, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\SubCategoryController.php:29\"]', 'count', 2.00, NULL),
(4555, 1727176080, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\SubCategoryController.php:29\"]', 'max', 1727176124.00, NULL),
(4556, 1727175960, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\SubCategoryController.php:29\"]', 'max', 1727176194.00, NULL),
(4557, 1727174880, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\SubCategoryController.php:29\"]', 'max', 1727176194.00, NULL),
(4558, 1727167680, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\SubCategoryController.php:29\"]', 'max', 1727176194.00, NULL),
(4559, 1727176140, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(4560, 1727176140, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\SubCategoryController.php:29\"]', 'count', 1.00, NULL),
(4567, 1727176140, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\SubCategoryController.php:29\"]', 'max', 1727176194.00, NULL),
(4571, 1727176200, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2024_09_24_160215_create_solution_categories_table.php:14\"]', 'count', 1.00, NULL),
(4572, 1727175960, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2024_09_24_160215_create_solution_categories_table.php:14\"]', 'count', 1.00, NULL),
(4573, 1727174880, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2024_09_24_160215_create_solution_categories_table.php:14\"]', 'count', 1.00, NULL),
(4575, 1727176200, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2024_09_24_160215_create_solution_categories_table.php:14\"]', 'max', 1727176249.00, NULL),
(4576, 1727175960, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2024_09_24_160215_create_solution_categories_table.php:14\"]', 'max', 1727176249.00, NULL),
(4577, 1727174880, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2024_09_24_160215_create_solution_categories_table.php:14\"]', 'max', 1727176249.00, NULL),
(4579, 1727176440, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(4580, 1727176320, 360, 'cache_hit', 'spatie.permission.cache', 'count', 25.00, NULL),
(4581, 1727176320, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 25.00, NULL),
(4595, 1727176500, 60, 'cache_hit', 'spatie.permission.cache', 'count', 11.00, NULL),
(4639, 1727176560, 60, 'cache_hit', 'spatie.permission.cache', 'count', 10.00, NULL),
(4679, 1727177160, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 1.00, NULL),
(4680, 1727177040, 360, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 3.00, NULL),
(4681, 1727176320, 1440, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 3.00, NULL),
(4682, 1727167680, 10080, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 3.00, NULL),
(4683, 1727177160, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1727177208.00, NULL),
(4684, 1727177040, 360, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1727177309.00, NULL),
(4685, 1727176320, 1440, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1727177309.00, NULL),
(4686, 1727167680, 10080, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1727177309.00, NULL),
(4687, 1727177220, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 1.00, NULL),
(4691, 1727177220, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1727177232.00, NULL),
(4695, 1727177280, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 1.00, NULL),
(4699, 1727177280, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1727177309.00, NULL),
(4701, 1727243220, 60, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'count', 1.00, NULL),
(4702, 1727242920, 360, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'count', 1.00, NULL),
(4703, 1727242560, 1440, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'count', 1.00, NULL),
(4704, 1727238240, 10080, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'count', 1.00, NULL),
(4705, 1727243220, 60, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'count', 1.00, NULL),
(4706, 1727242920, 360, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'count', 1.00, NULL),
(4707, 1727242560, 1440, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'count', 2.00, NULL),
(4708, 1727238240, 10080, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'count', 2.00, NULL),
(4709, 1727243220, 60, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'max', 1299.00, NULL),
(4710, 1727242920, 360, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'max', 1299.00, NULL),
(4711, 1727242560, 1440, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'max', 1299.00, NULL),
(4712, 1727238240, 10080, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 'max', 1299.00, NULL),
(4713, 1727243220, 60, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'max', 1727243252.00, NULL),
(4714, 1727242920, 360, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'max', 1727243252.00, NULL),
(4715, 1727242560, 1440, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'max', 1727243287.00, NULL),
(4716, 1727238240, 10080, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'max', 1727243287.00, NULL),
(4717, 1727243280, 60, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'count', 1.00, NULL),
(4718, 1727243280, 360, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'count', 1.00, NULL),
(4721, 1727243280, 60, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'max', 1727243287.00, NULL),
(4722, 1727243280, 360, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 'max', 1727243287.00, NULL),
(4725, 1727244000, 60, 'cache_miss', 'spatie.permission.cache', 'count', 8.00, NULL),
(4726, 1727244000, 360, 'cache_miss', 'spatie.permission.cache', 'count', 9.00, NULL),
(4727, 1727244000, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 9.00, NULL),
(4728, 1727238240, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 9.00, NULL),
(4729, 1727244120, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(4733, 1727244120, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(4734, 1727244000, 360, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(4735, 1727244000, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(4736, 1727238240, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(4745, 1727244240, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(4749, 1727255280, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(4750, 1727255160, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(4751, 1727254080, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(4752, 1727248320, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(4753, 1727255280, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Support\\\\ParentCategoryController.php:30\"]', 'count', 1.00, NULL),
(4754, 1727255160, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Support\\\\ParentCategoryController.php:30\"]', 'count', 1.00, NULL),
(4755, 1727254080, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Support\\\\ParentCategoryController.php:30\"]', 'count', 1.00, NULL),
(4756, 1727248320, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Support\\\\ParentCategoryController.php:30\"]', 'count', 2.00, NULL),
(4757, 1727255280, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Support\\\\ParentCategoryController.php:30\"]', 'max', 1727255312.00, NULL),
(4758, 1727255160, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Support\\\\ParentCategoryController.php:30\"]', 'max', 1727255312.00, NULL),
(4759, 1727254080, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Support\\\\ParentCategoryController.php:30\"]', 'max', 1727255312.00, NULL),
(4760, 1727248320, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Support\\\\ParentCategoryController.php:30\"]', 'max', 1727255671.00, NULL),
(4761, 1727255640, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(4762, 1727255520, 360, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(4763, 1727255520, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 43.00, NULL),
(4764, 1727248320, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 54.00, NULL),
(4765, 1727255640, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Support\\\\ParentCategoryController.php:30\"]', 'count', 1.00, NULL),
(4766, 1727255520, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Support\\\\ParentCategoryController.php:30\"]', 'count', 1.00, NULL),
(4767, 1727255520, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Support\\\\ParentCategoryController.php:30\"]', 'count', 1.00, NULL),
(4769, 1727255640, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Support\\\\ParentCategoryController.php:30\"]', 'max', 1727255671.00, NULL),
(4770, 1727255520, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Support\\\\ParentCategoryController.php:30\"]', 'max', 1727255671.00, NULL),
(4771, 1727255520, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Support\\\\ParentCategoryController.php:30\"]', 'max', 1727255671.00, NULL),
(4773, 1727255700, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(4777, 1727255820, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(4797, 1727255880, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(4798, 1727255880, 360, 'cache_hit', 'spatie.permission.cache', 'count', 20.00, NULL),
(4805, 1727255940, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(4809, 1727256120, 60, 'cache_hit', 'spatie.permission.cache', 'count', 13.00, NULL),
(4861, 1727256180, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(4877, 1727256360, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(4878, 1727256240, 360, 'cache_hit', 'spatie.permission.cache', 'count', 14.00, NULL),
(4879, 1727256360, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\support\\\\category\\\\index.blade.php:219\"]', 'count', 1.00, NULL),
(4880, 1727256240, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\support\\\\category\\\\index.blade.php:219\"]', 'count', 1.00, NULL),
(4881, 1727255520, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\support\\\\category\\\\index.blade.php:219\"]', 'count', 1.00, NULL),
(4882, 1727248320, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\support\\\\category\\\\index.blade.php:219\"]', 'count', 1.00, NULL),
(4885, 1727256360, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\support\\\\category\\\\index.blade.php:219\"]', 'max', 1727256386.00, NULL),
(4886, 1727256240, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\support\\\\category\\\\index.blade.php:219\"]', 'max', 1727256386.00, NULL),
(4887, 1727255520, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\support\\\\category\\\\index.blade.php:219\"]', 'max', 1727256386.00, NULL),
(4888, 1727248320, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\support\\\\category\\\\index.blade.php:219\"]', 'max', 1727256386.00, NULL),
(4889, 1727256420, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(4893, 1727256480, 60, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(4921, 1727256540, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(4922, 1727256540, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 'count', 4.00, NULL),
(4923, 1727256240, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 'count', 4.00, NULL),
(4924, 1727255520, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 'count', 6.00, NULL),
(4925, 1727248320, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 'count', 6.00, NULL),
(4929, 1727256540, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 'max', 1727256588.00, NULL),
(4930, 1727256240, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 'max', 1727256588.00, NULL),
(4931, 1727255520, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 'max', 1727256805.00, NULL),
(4932, 1727248320, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 'max', 1727256805.00, NULL),
(4973, 1727256720, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(4974, 1727256600, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(4975, 1727256720, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 'count', 1.00, NULL),
(4976, 1727256600, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 'count', 2.00, NULL),
(4981, 1727256720, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 'max', 1727256720.00, NULL),
(4982, 1727256600, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 'max', 1727256805.00, NULL),
(4985, 1727256780, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(4986, 1727256780, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 'count', 1.00, NULL),
(4993, 1727256780, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 'max', 1727256805.00, NULL),
(4997, 1727256960, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(4998, 1727256960, 360, 'cache_hit', 'spatie.permission.cache', 'count', 11.00, NULL),
(4999, 1727256960, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 11.00, NULL),
(5000, 1727256960, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:52\"]', 'count', 1.00, NULL),
(5001, 1727256960, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:52\"]', 'count', 1.00, NULL),
(5002, 1727256960, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:52\"]', 'count', 1.00, NULL),
(5003, 1727248320, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:52\"]', 'count', 1.00, NULL),
(5005, 1727256960, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:52\"]', 'max', 1727256978.00, NULL),
(5006, 1727256960, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:52\"]', 'max', 1727256978.00, NULL),
(5007, 1727256960, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:52\"]', 'max', 1727256978.00, NULL),
(5008, 1727248320, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:52\"]', 'max', 1727256978.00, NULL),
(5009, 1727257200, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(5025, 1727257260, 60, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(5049, 1727257620, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_desktop.blade.php:72\"]', 'count', 1.00, NULL),
(5050, 1727257320, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_desktop.blade.php:72\"]', 'count', 1.00, NULL),
(5051, 1727256960, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_desktop.blade.php:72\"]', 'count', 1.00, NULL),
(5052, 1727248320, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_desktop.blade.php:72\"]', 'count', 1.00, NULL),
(5053, 1727257620, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_desktop.blade.php:72\"]', 'max', 1727257648.00, NULL),
(5054, 1727257320, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_desktop.blade.php:72\"]', 'max', 1727257648.00, NULL),
(5055, 1727256960, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_desktop.blade.php:72\"]', 'max', 1727257648.00, NULL),
(5056, 1727248320, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_desktop.blade.php:72\"]', 'max', 1727257648.00, NULL),
(5057, 1727257920, 60, 'exception', '[\"Illuminate\\\\Database\\\\Eloquent\\\\RelationNotFoundException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:48\"]', 'count', 1.00, NULL),
(5058, 1727257680, 360, 'exception', '[\"Illuminate\\\\Database\\\\Eloquent\\\\RelationNotFoundException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:48\"]', 'count', 1.00, NULL),
(5059, 1727256960, 1440, 'exception', '[\"Illuminate\\\\Database\\\\Eloquent\\\\RelationNotFoundException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:48\"]', 'count', 1.00, NULL),
(5060, 1727248320, 10080, 'exception', '[\"Illuminate\\\\Database\\\\Eloquent\\\\RelationNotFoundException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:48\"]', 'count', 1.00, NULL),
(5061, 1727257920, 60, 'exception', '[\"Illuminate\\\\Database\\\\Eloquent\\\\RelationNotFoundException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:48\"]', 'max', 1727257976.00, NULL),
(5062, 1727257680, 360, 'exception', '[\"Illuminate\\\\Database\\\\Eloquent\\\\RelationNotFoundException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:48\"]', 'max', 1727257976.00, NULL),
(5063, 1727256960, 1440, 'exception', '[\"Illuminate\\\\Database\\\\Eloquent\\\\RelationNotFoundException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:48\"]', 'max', 1727257976.00, NULL),
(5064, 1727248320, 10080, 'exception', '[\"Illuminate\\\\Database\\\\Eloquent\\\\RelationNotFoundException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:48\"]', 'max', 1727257976.00, NULL),
(5065, 1727258040, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\Categoryresource.php:20\"]', 'count', 2.00, NULL),
(5066, 1727258040, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\Categoryresource.php:20\"]', 'count', 2.00, NULL),
(5067, 1727256960, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\Categoryresource.php:20\"]', 'count', 2.00, NULL),
(5068, 1727248320, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\Categoryresource.php:20\"]', 'count', 2.00, NULL),
(5069, 1727258040, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\Categoryresource.php:20\"]', 'max', 1727258055.00, NULL),
(5070, 1727258040, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\Categoryresource.php:20\"]', 'max', 1727258055.00, NULL),
(5071, 1727256960, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\Categoryresource.php:20\"]', 'max', 1727258055.00, NULL),
(5072, 1727248320, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\Categoryresource.php:20\"]', 'max', 1727258055.00, NULL),
(5081, 1727258400, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5082, 1727258400, 360, 'cache_hit', 'spatie.permission.cache', 'count', 8.00, NULL),
(5083, 1727258400, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 8.00, NULL),
(5084, 1727258400, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 8.00, NULL),
(5085, 1727258520, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(5097, 1727258580, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(5113, 1727258760, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:93\"]', 'count', 1.00, NULL),
(5114, 1727258760, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:93\"]', 'count', 1.00, NULL),
(5115, 1727258400, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:93\"]', 'count', 1.00, NULL),
(5116, 1727258400, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:93\"]', 'count', 1.00, NULL),
(5117, 1727258760, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:93\"]', 'max', 1727258809.00, NULL),
(5118, 1727258760, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:93\"]', 'max', 1727258809.00, NULL),
(5119, 1727258400, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:93\"]', 'max', 1727258809.00, NULL),
(5120, 1727258400, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:93\"]', 'max', 1727258809.00, NULL),
(5121, 1727328180, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5122, 1727327880, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5123, 1727327520, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5124, 1727318880, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5125, 1727332320, 60, 'cache_miss', 'spatie.permission.cache', 'count', 8.00, NULL),
(5126, 1727332200, 360, 'cache_miss', 'spatie.permission.cache', 'count', 8.00, NULL),
(5127, 1727331840, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 8.00, NULL),
(5128, 1727328960, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 8.00, NULL),
(5129, 1727585820, 60, 'slow_request', '[\"GET\",\"\\/admin\\/dashboard\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@index\"]', 'count', 1.00, NULL),
(5130, 1727585640, 360, 'slow_request', '[\"GET\",\"\\/admin\\/dashboard\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@index\"]', 'count', 1.00, NULL),
(5131, 1727585280, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/dashboard\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@index\"]', 'count', 1.00, NULL),
(5132, 1727580960, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/dashboard\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@index\"]', 'count', 1.00, NULL),
(5133, 1727585820, 60, 'slow_request', '[\"GET\",\"\\/admin\\/dashboard\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@index\"]', 'max', 1812.00, NULL),
(5134, 1727585640, 360, 'slow_request', '[\"GET\",\"\\/admin\\/dashboard\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@index\"]', 'max', 1812.00, NULL),
(5135, 1727585280, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/dashboard\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@index\"]', 'max', 1812.00, NULL),
(5136, 1727580960, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/dashboard\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@index\"]', 'max', 1812.00, NULL),
(5137, 1727589300, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5138, 1727589240, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5139, 1727588160, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5140, 1727580960, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5141, 1727589300, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5142, 1727589240, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5143, 1727588160, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5144, 1727580960, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5145, 1727686200, 60, 'slow_request', '[\"GET\",\"\\/admin\\/dashboard\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@index\"]', 'count', 2.00, NULL),
(5146, 1727686080, 360, 'slow_request', '[\"GET\",\"\\/admin\\/dashboard\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@index\"]', 'count', 2.00, NULL),
(5147, 1727686080, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/dashboard\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@index\"]', 'count', 2.00, NULL),
(5148, 1727681760, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/dashboard\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@index\"]', 'count', 2.00, NULL),
(5149, 1727686200, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 2.00, NULL),
(5150, 1727686080, 360, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 2.00, NULL),
(5151, 1727686080, 1440, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 2.00, NULL),
(5152, 1727681760, 10080, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'count', 2.00, NULL),
(5153, 1727686200, 60, 'slow_request', '[\"GET\",\"\\/admin\\/dashboard\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@index\"]', 'max', 2032.00, NULL),
(5154, 1727686080, 360, 'slow_request', '[\"GET\",\"\\/admin\\/dashboard\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@index\"]', 'max', 2032.00, NULL),
(5155, 1727686080, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/dashboard\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@index\"]', 'max', 2032.00, NULL),
(5156, 1727681760, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/dashboard\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@index\"]', 'max', 2032.00, NULL),
(5157, 1727686200, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1727686230.00, NULL),
(5158, 1727686080, 360, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1727686230.00, NULL),
(5159, 1727686080, 1440, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1727686230.00, NULL),
(5160, 1727681760, 10080, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 'max', 1727686230.00, NULL),
(5177, 1727686260, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5178, 1727686080, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5179, 1727686080, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5180, 1727681760, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL);
INSERT INTO `pulse_aggregates` (`id`, `bucket`, `period`, `type`, `key`, `aggregate`, `value`, `count`) VALUES
(5181, 1727686260, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(5182, 1727686080, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(5183, 1727686080, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 14.00, NULL),
(5184, 1727681760, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 14.00, NULL),
(5189, 1727686320, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5193, 1727686740, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(5194, 1727686440, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(5201, 1727687220, 60, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(5202, 1727687160, 360, 'cache_hit', 'spatie.permission.cache', 'count', 9.00, NULL),
(5229, 1727687280, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5233, 1727687400, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5237, 1727693700, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5238, 1727693640, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5239, 1727693280, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5240, 1727691840, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5241, 1727693700, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5242, 1727693640, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(5243, 1727693280, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 21.00, NULL),
(5244, 1727691840, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 21.00, NULL),
(5245, 1727693760, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(5265, 1727694060, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(5266, 1727694000, 360, 'cache_hit', 'spatie.permission.cache', 'count', 11.00, NULL),
(5273, 1727694120, 60, 'cache_hit', 'spatie.permission.cache', 'count', 9.00, NULL),
(5309, 1727694600, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(5310, 1727694360, 360, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(5317, 1727694660, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(5325, 1727758680, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5326, 1727758440, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5327, 1727758080, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5328, 1727752320, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5329, 1727759220, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5330, 1727759160, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(5331, 1727758080, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(5332, 1727752320, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(5333, 1727759460, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(5341, 1727759520, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5342, 1727759520, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5343, 1727759520, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5345, 1727777820, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5346, 1727777520, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5347, 1727776800, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5348, 1727772480, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(5349, 1727777820, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5350, 1727777520, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5351, 1727776800, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5352, 1727772480, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 57.00, NULL),
(5353, 1727779320, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5354, 1727779320, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(5355, 1727778240, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(5357, 1727779500, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5361, 1727779560, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(5373, 1727779740, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(5374, 1727779680, 360, 'cache_hit', 'spatie.permission.cache', 'count', 19.00, NULL),
(5375, 1727779680, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 51.00, NULL),
(5376, 1727779740, 60, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductStoreRequest.php:93\"]', 'count', 1.00, NULL),
(5377, 1727779680, 360, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductStoreRequest.php:93\"]', 'count', 1.00, NULL),
(5378, 1727779680, 1440, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductStoreRequest.php:93\"]', 'count', 1.00, NULL),
(5379, 1727772480, 10080, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductStoreRequest.php:93\"]', 'count', 1.00, NULL),
(5381, 1727779740, 60, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductStoreRequest.php:93\"]', 'max', 1727779788.00, NULL),
(5382, 1727779680, 360, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductStoreRequest.php:93\"]', 'max', 1727779788.00, NULL),
(5383, 1727779680, 1440, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductStoreRequest.php:93\"]', 'max', 1727779788.00, NULL),
(5384, 1727772480, 10080, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductStoreRequest.php:93\"]', 'max', 1727779788.00, NULL),
(5389, 1727779800, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(5401, 1727779860, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(5409, 1727779920, 60, 'cache_hit', 'spatie.permission.cache', 'count', 10.00, NULL),
(5410, 1727779920, 60, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:91\"]', 'count', 2.00, NULL),
(5411, 1727779680, 360, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:91\"]', 'count', 2.00, NULL),
(5412, 1727779680, 1440, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:91\"]', 'count', 2.00, NULL),
(5413, 1727772480, 10080, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:91\"]', 'count', 2.00, NULL),
(5417, 1727779920, 60, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:91\"]', 'max', 1727779972.00, NULL),
(5418, 1727779680, 360, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:91\"]', 'max', 1727779972.00, NULL),
(5419, 1727779680, 1440, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:91\"]', 'max', 1727779972.00, NULL),
(5420, 1727772480, 10080, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:91\"]', 'max', 1727779972.00, NULL),
(5465, 1727779980, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(5473, 1727780100, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5474, 1727780040, 360, 'cache_hit', 'spatie.permission.cache', 'count', 15.00, NULL),
(5475, 1727780100, 60, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:90\"]', 'count', 1.00, NULL),
(5476, 1727780040, 360, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:90\"]', 'count', 1.00, NULL),
(5477, 1727779680, 1440, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:90\"]', 'count', 1.00, NULL),
(5478, 1727772480, 10080, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:90\"]', 'count', 1.00, NULL),
(5481, 1727780100, 60, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:90\"]', 'max', 1727780134.00, NULL),
(5482, 1727780040, 360, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:90\"]', 'max', 1727780134.00, NULL),
(5483, 1727779680, 1440, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:90\"]', 'max', 1727780134.00, NULL),
(5484, 1727772480, 10080, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:90\"]', 'max', 1727780134.00, NULL),
(5485, 1727780160, 60, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(5513, 1727780220, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(5533, 1727780340, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(5541, 1727780460, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(5542, 1727780400, 360, 'cache_hit', 'spatie.permission.cache', 'count', 16.00, NULL),
(5561, 1727780520, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(5581, 1727780580, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(5597, 1727780700, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(5605, 1727780820, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(5606, 1727780760, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pulse_entries`
--

CREATE TABLE `pulse_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `key` mediumtext NOT NULL,
  `key_hash` binary(16) GENERATED ALWAYS AS (unhex(md5(`key`))) VIRTUAL,
  `value` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pulse_entries`
--

INSERT INTO `pulse_entries` (`id`, `timestamp`, `type`, `key`, `value`) VALUES
(1, 1706595960, 'cache_hit', 'spatie.permission.cache', NULL),
(2, 1706596058, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:8\"]', 1706596058),
(3, 1706596275, 'user_request', '1', NULL),
(4, 1706596312, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Auth\\\\RegisteredUserController.php:42\"]', 1706596312),
(5, 1706596359, 'user_request', '1', NULL),
(6, 1706596359, 'user_request', '1', NULL),
(7, 1706596366, 'exception', '[\"BadMethodCallException\",\"app\\\\Providers\\\\AuthServiceProvider.php:34\"]', 1706596366),
(8, 1706596366, 'exception', '[\"BadMethodCallException\",\"app\\\\Providers\\\\AuthServiceProvider.php:34\"]', 1706596366),
(9, 1706596381, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:27\"]', 1706596381),
(10, 1706596393, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:8\"]', 1706596393),
(11, 1706596440, 'exception', '[\"Error\",\"app\\\\Helpers\\\\helpers.php:19\"]', 1706596440),
(12, 1706596460, 'exception', '[\"Error\",\"resources\\\\views\\\\backend\\\\shared\\\\nav\\\\admin_sidebar.blade.php:7\"]', 1706596460),
(13, 1706596517, 'user_request', '1', NULL),
(14, 1706596582, 'user_request', '1', NULL),
(15, 1706596584, 'user_request', '1', NULL),
(16, 1706596629, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:28\"]', 1706596629),
(17, 1706596634, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:28\"]', 1706596634),
(18, 1706596639, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:28\"]', 1706596639),
(19, 1706596644, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:28\"]', 1706596644),
(20, 1706596647, 'exception', '[\"TypeError\",\"app\\\\Providers\\\\AuthServiceProvider.php:28\"]', 1706596647),
(21, 1706596739, 'user_request', '1', NULL),
(22, 1706596742, 'user_request', '1', NULL),
(23, 1706596744, 'user_request', '1', NULL),
(24, 1706597752, 'cache_hit', 'spatie.permission.cache', NULL),
(25, 1706597873, 'cache_hit', 'spatie.permission.cache', NULL),
(26, 1706598089, 'cache_hit', 'spatie.permission.cache', NULL),
(27, 1706598119, 'cache_hit', 'spatie.permission.cache', NULL),
(28, 1706598125, 'cache_hit', 'spatie.permission.cache', NULL),
(29, 1706598287, 'cache_hit', 'spatie.permission.cache', NULL),
(30, 1706598299, 'cache_hit', 'spatie.permission.cache', NULL),
(31, 1706598352, 'cache_hit', 'spatie.permission.cache', NULL),
(32, 1706598399, 'cache_hit', 'spatie.permission.cache', NULL),
(33, 1706598420, 'cache_hit', 'spatie.permission.cache', NULL),
(34, 1706598470, 'cache_hit', 'spatie.permission.cache', NULL),
(35, 1706598536, 'cache_hit', 'spatie.permission.cache', NULL),
(36, 1706598764, 'cache_miss', 'spatie.permission.cache', NULL),
(37, 1706598782, 'cache_hit', 'spatie.permission.cache', NULL),
(38, 1706598799, 'cache_hit', 'spatie.permission.cache', NULL),
(39, 1706605452, 'cache_miss', 'spatie.permission.cache', NULL),
(40, 1706605456, 'cache_hit', 'spatie.permission.cache', NULL),
(41, 1706605463, 'cache_hit', 'spatie.permission.cache', NULL),
(42, 1706605463, 'cache_miss', 'spatie.permission.cache', NULL),
(43, 1706605466, 'cache_miss', 'spatie.permission.cache', NULL),
(44, 1706605471, 'cache_hit', 'spatie.permission.cache', NULL),
(45, 1706605485, 'cache_miss', 'spatie.permission.cache', NULL),
(46, 1706679363, 'cache_miss', 'spatie.permission.cache', NULL),
(47, 1706679989, 'cache_hit', 'spatie.permission.cache', NULL),
(48, 1706679989, 'exception', '[\"Illuminate\\\\Routing\\\\Exceptions\\\\UrlGenerationException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Exceptions\\\\UrlGenerationException.php:35\"]', 1706679989),
(49, 1706680060, 'cache_hit', 'spatie.permission.cache', NULL),
(50, 1706680217, 'cache_hit', 'spatie.permission.cache', NULL),
(51, 1706680234, 'cache_hit', 'spatie.permission.cache', NULL),
(52, 1706680312, 'cache_hit', 'spatie.permission.cache', NULL),
(53, 1706680317, 'cache_hit', 'spatie.permission.cache', NULL),
(54, 1706681184, 'cache_hit', 'spatie.permission.cache', NULL),
(55, 1706681187, 'cache_hit', 'spatie.permission.cache', NULL),
(56, 1706681229, 'cache_hit', 'spatie.permission.cache', NULL),
(57, 1706681238, 'cache_hit', 'spatie.permission.cache', NULL),
(58, 1706681240, 'cache_hit', 'spatie.permission.cache', NULL),
(59, 1706681385, 'cache_hit', 'spatie.permission.cache', NULL),
(60, 1706681401, 'cache_hit', 'spatie.permission.cache', NULL),
(61, 1706681404, 'cache_hit', 'spatie.permission.cache', NULL),
(62, 1706681675, 'cache_hit', 'spatie.permission.cache', NULL),
(63, 1706681697, 'cache_hit', 'spatie.permission.cache', NULL),
(64, 1706681698, 'cache_hit', 'spatie.permission.cache', NULL),
(65, 1706681699, 'cache_hit', 'spatie.permission.cache', NULL),
(66, 1706681711, 'cache_hit', 'spatie.permission.cache', NULL),
(67, 1706681729, 'cache_hit', 'spatie.permission.cache', NULL),
(68, 1706681732, 'cache_hit', 'spatie.permission.cache', NULL),
(69, 1706681768, 'cache_hit', 'spatie.permission.cache', NULL),
(70, 1706681917, 'cache_hit', 'spatie.permission.cache', NULL),
(71, 1706681935, 'cache_hit', 'spatie.permission.cache', NULL),
(72, 1706681935, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:146\"]', 1706681935),
(73, 1706681944, 'cache_hit', 'spatie.permission.cache', NULL),
(74, 1706681945, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:146\"]', 1706681945),
(75, 1706682034, 'cache_hit', 'spatie.permission.cache', NULL),
(76, 1706682144, 'cache_hit', 'spatie.permission.cache', NULL),
(77, 1706682146, 'cache_hit', 'spatie.permission.cache', NULL),
(78, 1706682189, 'cache_hit', 'spatie.permission.cache', NULL),
(79, 1706682221, 'cache_hit', 'spatie.permission.cache', NULL),
(80, 1706682221, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:147\"]', 1706682221),
(81, 1706682296, 'cache_hit', 'spatie.permission.cache', NULL),
(82, 1706682296, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:147\"]', 1706682296),
(83, 1706682530, 'cache_hit', 'spatie.permission.cache', NULL),
(84, 1706682530, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:158\"]', 1706682530),
(85, 1706682543, 'cache_hit', 'spatie.permission.cache', NULL),
(86, 1706682545, 'cache_hit', 'spatie.permission.cache', NULL),
(87, 1706682637, 'cache_hit', 'spatie.permission.cache', NULL),
(88, 1706682645, 'cache_hit', 'spatie.permission.cache', NULL),
(89, 1706682647, 'cache_hit', 'spatie.permission.cache', NULL),
(90, 1706682655, 'cache_hit', 'spatie.permission.cache', NULL),
(91, 1706682790, 'cache_hit', 'spatie.permission.cache', NULL),
(92, 1706682799, 'cache_hit', 'spatie.permission.cache', NULL),
(93, 1706682802, 'cache_hit', 'spatie.permission.cache', NULL),
(94, 1706682896, 'cache_hit', 'spatie.permission.cache', NULL),
(95, 1706682952, 'cache_hit', 'spatie.permission.cache', NULL),
(96, 1706682992, 'cache_miss', 'spatie.permission.cache', NULL),
(97, 1706682994, 'cache_hit', 'spatie.permission.cache', NULL),
(98, 1706683025, 'cache_hit', 'spatie.permission.cache', NULL),
(99, 1706683048, 'cache_hit', 'spatie.permission.cache', NULL),
(100, 1706685200, 'cache_hit', 'spatie.permission.cache', NULL),
(101, 1706685345, 'cache_hit', 'spatie.permission.cache', NULL),
(102, 1706685702, 'cache_hit', 'spatie.permission.cache', NULL),
(103, 1706685748, 'cache_hit', 'spatie.permission.cache', NULL),
(104, 1706685765, 'cache_hit', 'spatie.permission.cache', NULL),
(105, 1706685783, 'cache_hit', 'spatie.permission.cache', NULL),
(106, 1706685796, 'cache_hit', 'spatie.permission.cache', NULL),
(107, 1706685819, 'cache_hit', 'spatie.permission.cache', NULL),
(108, 1706685862, 'cache_hit', 'spatie.permission.cache', NULL),
(109, 1706686090, 'cache_hit', 'spatie.permission.cache', NULL),
(110, 1706686122, 'cache_hit', 'spatie.permission.cache', NULL),
(111, 1706686230, 'cache_hit', 'spatie.permission.cache', NULL),
(112, 1706686230, 'exception', '[\"TypeError\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\helpers.php:124\"]', 1706686230),
(113, 1706686257, 'cache_hit', 'spatie.permission.cache', NULL),
(114, 1706686257, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\edit.blade.php:614\"]', 1706686257),
(115, 1706686337, 'cache_hit', 'spatie.permission.cache', NULL),
(116, 1706686347, 'cache_hit', 'spatie.permission.cache', NULL),
(117, 1706686374, 'cache_hit', 'spatie.permission.cache', NULL),
(118, 1706686426, 'cache_hit', 'spatie.permission.cache', NULL),
(119, 1706686596, 'cache_miss', 'spatie.permission.cache', NULL),
(120, 1706686619, 'cache_hit', 'spatie.permission.cache', NULL),
(121, 1706686640, 'cache_hit', 'spatie.permission.cache', NULL),
(122, 1706686685, 'cache_hit', 'spatie.permission.cache', NULL),
(123, 1706686693, 'cache_hit', 'spatie.permission.cache', NULL),
(124, 1706686767, 'cache_hit', 'spatie.permission.cache', NULL),
(125, 1706691468, 'cache_miss', 'spatie.permission.cache', NULL),
(126, 1706691472, 'cache_hit', 'spatie.permission.cache', NULL),
(127, 1706691477, 'cache_hit', 'spatie.permission.cache', NULL),
(128, 1706691484, 'cache_hit', 'spatie.permission.cache', NULL),
(129, 1706691558, 'cache_hit', 'spatie.permission.cache', NULL),
(130, 1706691594, 'cache_hit', 'spatie.permission.cache', NULL),
(131, 1706691662, 'cache_hit', 'spatie.permission.cache', NULL),
(132, 1706691707, 'cache_hit', 'spatie.permission.cache', NULL),
(133, 1706691758, 'cache_hit', 'spatie.permission.cache', NULL),
(134, 1706691779, 'cache_hit', 'spatie.permission.cache', NULL),
(135, 1706691847, 'cache_hit', 'spatie.permission.cache', NULL),
(136, 1706691852, 'cache_hit', 'spatie.permission.cache', NULL),
(137, 1706691912, 'cache_hit', 'spatie.permission.cache', NULL),
(138, 1706691919, 'cache_hit', 'spatie.permission.cache', NULL),
(139, 1706691930, 'cache_hit', 'spatie.permission.cache', NULL),
(140, 1706691932, 'cache_hit', 'spatie.permission.cache', NULL),
(141, 1706691943, 'cache_hit', 'spatie.permission.cache', NULL),
(142, 1706691944, 'cache_hit', 'spatie.permission.cache', NULL),
(143, 1706692033, 'cache_hit', 'spatie.permission.cache', NULL),
(144, 1706692037, 'cache_hit', 'spatie.permission.cache', NULL),
(145, 1706696273, 'cache_miss', 'spatie.permission.cache', NULL),
(146, 1706696294, 'cache_hit', 'spatie.permission.cache', NULL),
(147, 1706696299, 'cache_hit', 'spatie.permission.cache', NULL),
(148, 1706696301, 'cache_hit', 'spatie.permission.cache', NULL),
(149, 1706696302, 'cache_hit', 'spatie.permission.cache', NULL),
(150, 1706696304, 'cache_hit', 'spatie.permission.cache', NULL),
(151, 1706696306, 'cache_hit', 'spatie.permission.cache', NULL),
(152, 1706696308, 'cache_hit', 'spatie.permission.cache', NULL),
(153, 1706699051, 'cache_hit', 'spatie.permission.cache', NULL),
(154, 1706699054, 'cache_hit', 'spatie.permission.cache', NULL),
(155, 1706699059, 'cache_hit', 'spatie.permission.cache', NULL),
(156, 1706764591, 'cache_miss', 'spatie.permission.cache', NULL),
(157, 1706764593, 'cache_hit', 'spatie.permission.cache', NULL),
(158, 1706764593, 'cache_hit', 'spatie.permission.cache', NULL),
(159, 1706764675, 'cache_hit', 'spatie.permission.cache', NULL),
(160, 1706765029, 'cache_miss', 'spatie.permission.cache', NULL),
(161, 1706765341, 'cache_hit', 'spatie.permission.cache', NULL),
(162, 1706765343, 'cache_hit', 'spatie.permission.cache', NULL),
(163, 1706765376, 'cache_hit', 'spatie.permission.cache', NULL),
(164, 1706765379, 'cache_hit', 'spatie.permission.cache', NULL),
(165, 1706765380, 'cache_hit', 'spatie.permission.cache', NULL),
(166, 1706765463, 'cache_hit', 'spatie.permission.cache', NULL),
(167, 1706765466, 'cache_hit', 'spatie.permission.cache', NULL),
(168, 1706765467, 'cache_hit', 'spatie.permission.cache', NULL),
(169, 1706765495, 'cache_hit', 'spatie.permission.cache', NULL),
(170, 1706765496, 'cache_hit', 'spatie.permission.cache', NULL),
(171, 1706765502, 'cache_hit', 'spatie.permission.cache', NULL),
(172, 1706765504, 'cache_hit', 'spatie.permission.cache', NULL),
(173, 1706765537, 'cache_hit', 'spatie.permission.cache', NULL),
(174, 1706765540, 'cache_hit', 'spatie.permission.cache', NULL),
(175, 1706765617, 'cache_hit', 'spatie.permission.cache', NULL),
(176, 1706765620, 'cache_hit', 'spatie.permission.cache', NULL),
(177, 1706765622, 'cache_hit', 'spatie.permission.cache', NULL),
(178, 1706765669, 'cache_hit', 'spatie.permission.cache', NULL),
(179, 1706765672, 'cache_hit', 'spatie.permission.cache', NULL),
(180, 1706765674, 'cache_hit', 'spatie.permission.cache', NULL),
(181, 1706765714, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 1067),
(182, 1706765715, 'cache_hit', 'spatie.permission.cache', NULL),
(183, 1706765715, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 1706765715),
(184, 1706765821, 'cache_hit', 'spatie.permission.cache', NULL),
(185, 1706765823, 'cache_hit', 'spatie.permission.cache', NULL),
(186, 1706765914, 'cache_hit', 'spatie.permission.cache', NULL),
(187, 1706765915, 'cache_hit', 'spatie.permission.cache', NULL),
(188, 1706765915, 'cache_hit', 'spatie.permission.cache', NULL),
(189, 1706765941, 'cache_hit', 'spatie.permission.cache', NULL),
(190, 1706765943, 'cache_hit', 'spatie.permission.cache', NULL),
(191, 1706765943, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 1706765943),
(192, 1706766041, 'cache_hit', 'spatie.permission.cache', NULL),
(193, 1706766044, 'cache_hit', 'spatie.permission.cache', NULL),
(194, 1706766052, 'cache_hit', 'spatie.permission.cache', NULL),
(195, 1706766057, 'cache_hit', 'spatie.permission.cache', NULL),
(196, 1706766067, 'cache_hit', 'spatie.permission.cache', NULL),
(197, 1706766068, 'cache_hit', 'spatie.permission.cache', NULL),
(198, 1706766082, 'cache_hit', 'spatie.permission.cache', NULL),
(199, 1706766084, 'cache_hit', 'spatie.permission.cache', NULL),
(200, 1706766086, 'cache_hit', 'spatie.permission.cache', NULL),
(201, 1706766098, 'cache_hit', 'spatie.permission.cache', NULL),
(202, 1706766099, 'cache_hit', 'spatie.permission.cache', NULL),
(203, 1706766103, 'cache_hit', 'spatie.permission.cache', NULL),
(204, 1706766163, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 1706766163),
(205, 1706766194, 'cache_hit', 'spatie.permission.cache', NULL),
(206, 1706766227, 'cache_hit', 'spatie.permission.cache', NULL),
(207, 1706766275, 'cache_hit', 'spatie.permission.cache', NULL),
(208, 1706766282, 'cache_hit', 'spatie.permission.cache', NULL),
(209, 1706766353, 'cache_hit', 'spatie.permission.cache', NULL),
(210, 1706766367, 'cache_hit', 'spatie.permission.cache', NULL),
(211, 1706766367, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\barcode\\\\index.blade.php:184\"]', 1706766367),
(212, 1706766397, 'cache_hit', 'spatie.permission.cache', NULL),
(213, 1706766585, 'cache_hit', 'spatie.permission.cache', NULL),
(214, 1706766701, 'cache_hit', 'spatie.permission.cache', NULL),
(215, 1706766811, 'cache_hit', 'spatie.permission.cache', NULL),
(216, 1706767128, 'cache_hit', 'spatie.permission.cache', NULL),
(217, 1706767234, 'cache_hit', 'spatie.permission.cache', NULL),
(218, 1706767807, 'cache_hit', 'spatie.permission.cache', NULL),
(219, 1706767817, 'cache_hit', 'spatie.permission.cache', NULL),
(220, 1706768111, 'cache_hit', 'spatie.permission.cache', NULL),
(221, 1706768237, 'cache_hit', 'spatie.permission.cache', NULL),
(222, 1706768400, 'cache_hit', 'spatie.permission.cache', NULL),
(223, 1706768439, 'cache_hit', 'spatie.permission.cache', NULL),
(224, 1706768454, 'cache_hit', 'spatie.permission.cache', NULL),
(225, 1706768508, 'cache_hit', 'spatie.permission.cache', NULL),
(226, 1706768568, 'cache_hit', 'spatie.permission.cache', NULL),
(227, 1706768650, 'cache_miss', 'spatie.permission.cache', NULL),
(228, 1706768737, 'cache_hit', 'spatie.permission.cache', NULL),
(229, 1706768840, 'cache_hit', 'spatie.permission.cache', NULL),
(230, 1706768888, 'cache_hit', 'spatie.permission.cache', NULL),
(231, 1706768919, 'cache_hit', 'spatie.permission.cache', NULL),
(232, 1706768952, 'cache_hit', 'spatie.permission.cache', NULL),
(233, 1706769206, 'cache_hit', 'spatie.permission.cache', NULL),
(234, 1706769249, 'cache_hit', 'spatie.permission.cache', NULL),
(235, 1706769257, 'cache_hit', 'spatie.permission.cache', NULL),
(236, 1706769440, 'cache_hit', 'spatie.permission.cache', NULL),
(237, 1706769471, 'cache_hit', 'spatie.permission.cache', NULL),
(238, 1706769480, 'cache_hit', 'spatie.permission.cache', NULL),
(239, 1706769566, 'cache_hit', 'spatie.permission.cache', NULL),
(240, 1706769572, 'cache_hit', 'spatie.permission.cache', NULL),
(241, 1706769576, 'cache_hit', 'spatie.permission.cache', NULL),
(242, 1706769745, 'cache_hit', 'spatie.permission.cache', NULL),
(243, 1706769767, 'cache_hit', 'spatie.permission.cache', NULL),
(244, 1706769865, 'cache_hit', 'spatie.permission.cache', NULL),
(245, 1706769888, 'cache_hit', 'spatie.permission.cache', NULL),
(246, 1706769910, 'cache_hit', 'spatie.permission.cache', NULL),
(247, 1706769914, 'cache_hit', 'spatie.permission.cache', NULL),
(248, 1706770067, 'cache_hit', 'spatie.permission.cache', NULL),
(249, 1706770074, 'cache_hit', 'spatie.permission.cache', NULL),
(250, 1706770163, 'cache_hit', 'spatie.permission.cache', NULL),
(251, 1706770316, 'cache_hit', 'spatie.permission.cache', NULL),
(252, 1706770680, 'cache_hit', 'spatie.permission.cache', NULL),
(253, 1706770725, 'cache_hit', 'spatie.permission.cache', NULL),
(254, 1706770737, 'cache_hit', 'spatie.permission.cache', NULL),
(255, 1706770757, 'cache_hit', 'spatie.permission.cache', NULL),
(256, 1706770788, 'cache_hit', 'spatie.permission.cache', NULL),
(257, 1706770840, 'cache_hit', 'spatie.permission.cache', NULL),
(258, 1706770883, 'cache_hit', 'spatie.permission.cache', NULL),
(259, 1706770898, 'cache_hit', 'spatie.permission.cache', NULL),
(260, 1706770924, 'cache_hit', 'spatie.permission.cache', NULL),
(261, 1706770959, 'cache_hit', 'spatie.permission.cache', NULL),
(262, 1706770988, 'cache_hit', 'spatie.permission.cache', NULL),
(263, 1706771014, 'cache_hit', 'spatie.permission.cache', NULL),
(264, 1706771038, 'cache_hit', 'spatie.permission.cache', NULL),
(265, 1706771262, 'cache_hit', 'spatie.permission.cache', NULL),
(266, 1706771356, 'cache_hit', 'spatie.permission.cache', NULL),
(267, 1706771373, 'cache_hit', 'spatie.permission.cache', NULL),
(268, 1706771408, 'cache_hit', 'spatie.permission.cache', NULL),
(269, 1706772133, 'cache_hit', 'spatie.permission.cache', NULL),
(270, 1706772154, 'cache_hit', 'spatie.permission.cache', NULL),
(271, 1706772190, 'cache_hit', 'spatie.permission.cache', NULL),
(272, 1706772210, 'cache_hit', 'spatie.permission.cache', NULL),
(273, 1706772238, 'cache_hit', 'spatie.permission.cache', NULL),
(274, 1706773240, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 1706773240),
(275, 1706773259, 'exception', '[\"Milon\\\\Barcode\\\\WrongCheckDigitException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 1706773259),
(276, 1706773268, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 1706773268),
(277, 1706773286, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:218\"]', 1706773286),
(278, 1706773377, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:221\"]', 1706773377),
(279, 1706773391, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 1706773391),
(280, 1706773405, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 1706773405),
(281, 1707019956, 'user_request', '1', NULL),
(282, 1707019965, 'cache_miss', 'spatie.permission.cache', NULL),
(283, 1707019969, 'cache_hit', 'spatie.permission.cache', NULL),
(284, 1707020269, 'cache_hit', 'spatie.permission.cache', NULL),
(285, 1707020346, 'cache_hit', 'spatie.permission.cache', NULL),
(286, 1707020386, 'cache_hit', 'spatie.permission.cache', NULL),
(287, 1707023048, 'cache_hit', 'spatie.permission.cache', NULL),
(288, 1707023169, 'cache_hit', 'spatie.permission.cache', NULL),
(289, 1707023242, 'cache_hit', 'spatie.permission.cache', NULL),
(290, 1707023597, 'cache_miss', 'spatie.permission.cache', NULL),
(291, 1707023615, 'cache_hit', 'spatie.permission.cache', NULL),
(292, 1707023654, 'cache_hit', 'spatie.permission.cache', NULL),
(293, 1707023720, 'cache_hit', 'spatie.permission.cache', NULL),
(294, 1707023762, 'cache_hit', 'spatie.permission.cache', NULL),
(295, 1707023795, 'cache_hit', 'spatie.permission.cache', NULL),
(296, 1707023872, 'cache_hit', 'spatie.permission.cache', NULL),
(297, 1707023879, 'cache_hit', 'spatie.permission.cache', NULL),
(298, 1707023889, 'cache_hit', 'spatie.permission.cache', NULL),
(299, 1707023976, 'cache_hit', 'spatie.permission.cache', NULL),
(300, 1707024503, 'cache_hit', 'spatie.permission.cache', NULL),
(301, 1707024513, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 1707024513),
(302, 1707024552, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 1707024552),
(303, 1707024596, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:223\"]', 1707024596),
(304, 1707024610, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 1707024610),
(305, 1707024660, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:224\"]', 1707024660),
(306, 1707024764, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController.php:226\"]', 1707024764),
(307, 1707024920, 'cache_hit', 'spatie.permission.cache', NULL),
(308, 1707025000, 'cache_hit', 'spatie.permission.cache', NULL),
(309, 1707025045, 'cache_hit', 'spatie.permission.cache', NULL),
(310, 1707025086, 'cache_hit', 'spatie.permission.cache', NULL),
(311, 1707025098, 'cache_hit', 'spatie.permission.cache', NULL),
(312, 1707025141, 'cache_hit', 'spatie.permission.cache', NULL),
(313, 1707025363, 'cache_hit', 'spatie.permission.cache', NULL),
(314, 1707025402, 'cache_hit', 'spatie.permission.cache', NULL),
(315, 1707025450, 'cache_hit', 'spatie.permission.cache', NULL),
(316, 1707025541, 'cache_hit', 'spatie.permission.cache', NULL),
(317, 1707025574, 'cache_hit', 'spatie.permission.cache', NULL),
(318, 1707025612, 'cache_hit', 'spatie.permission.cache', NULL),
(319, 1707025723, 'cache_hit', 'spatie.permission.cache', NULL),
(320, 1707026762, 'cache_hit', 'spatie.permission.cache', NULL),
(321, 1707026865, 'cache_hit', 'spatie.permission.cache', NULL),
(322, 1707026936, 'cache_hit', 'spatie.permission.cache', NULL),
(323, 1707027013, 'cache_hit', 'spatie.permission.cache', NULL),
(324, 1707027015, 'cache_hit', 'spatie.permission.cache', NULL),
(325, 1707027053, 'cache_hit', 'spatie.permission.cache', NULL),
(326, 1707027066, 'cache_hit', 'spatie.permission.cache', NULL),
(327, 1707027121, 'cache_hit', 'spatie.permission.cache', NULL),
(328, 1707027194, 'cache_hit', 'spatie.permission.cache', NULL),
(329, 1707027241, 'cache_miss', 'spatie.permission.cache', NULL),
(330, 1707027286, 'cache_hit', 'spatie.permission.cache', NULL),
(331, 1707027379, 'cache_hit', 'spatie.permission.cache', NULL),
(332, 1707027403, 'cache_hit', 'spatie.permission.cache', NULL),
(333, 1707027510, 'cache_hit', 'spatie.permission.cache', NULL),
(334, 1707027571, 'cache_hit', 'spatie.permission.cache', NULL),
(335, 1707027602, 'cache_hit', 'spatie.permission.cache', NULL),
(336, 1707027762, 'cache_hit', 'spatie.permission.cache', NULL),
(337, 1707027786, 'cache_hit', 'spatie.permission.cache', NULL),
(338, 1707027823, 'cache_hit', 'spatie.permission.cache', NULL),
(339, 1707027837, 'cache_hit', 'spatie.permission.cache', NULL),
(340, 1707027846, 'cache_hit', 'spatie.permission.cache', NULL),
(341, 1707027863, 'cache_hit', 'spatie.permission.cache', NULL),
(342, 1707027961, 'cache_hit', 'spatie.permission.cache', NULL),
(343, 1707027993, 'cache_hit', 'spatie.permission.cache', NULL),
(344, 1707028035, 'cache_hit', 'spatie.permission.cache', NULL),
(345, 1707028103, 'cache_hit', 'spatie.permission.cache', NULL),
(346, 1707028210, 'cache_hit', 'spatie.permission.cache', NULL),
(347, 1707028277, 'cache_hit', 'spatie.permission.cache', NULL),
(348, 1707028381, 'cache_hit', 'spatie.permission.cache', NULL),
(349, 1707028675, 'cache_hit', 'spatie.permission.cache', NULL),
(350, 1707028679, 'cache_hit', 'spatie.permission.cache', NULL),
(351, 1707028681, 'cache_hit', 'spatie.permission.cache', NULL),
(352, 1707028681, 'cache_hit', 'spatie.permission.cache', NULL),
(353, 1707028683, 'cache_hit', 'spatie.permission.cache', NULL),
(354, 1707030019, 'cache_hit', 'spatie.permission.cache', NULL),
(355, 1707030039, 'cache_hit', 'spatie.permission.cache', NULL),
(356, 1707030742, 'cache_hit', 'spatie.permission.cache', NULL),
(357, 1707031970, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\RuntimeException\",\"vendor\\\\symfony\\\\console\\\\Input\\\\ArgvInput.php:125\"]', 1707031970),
(358, 1707031996, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\RuntimeException\",\"vendor\\\\symfony\\\\console\\\\Input\\\\ArgvInput.php:238\"]', 1707031996),
(359, 1707032708, 'slow_request', '[\"GET\",\"\\/admin\\/role\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Role\\\\RoleAndPermissionController@index\"]', 7875),
(360, 1707032709, 'slow_query', '[\"select * from `admins` where `id` = ? limit 1\",\"app\\\\Http\\\\Middleware\\\\Admin\\\\AdminLoginmiddleware.php:19\"]', 7047),
(361, 1707032716, 'cache_miss', 'spatie.permission.cache', NULL),
(362, 1707032717, 'cache_hit', 'spatie.permission.cache', NULL),
(363, 1707032728, 'cache_hit', 'spatie.permission.cache', NULL),
(364, 1707032730, 'cache_hit', 'spatie.permission.cache', NULL),
(365, 1707032730, 'cache_hit', 'spatie.permission.cache', NULL),
(366, 1707032732, 'cache_hit', 'spatie.permission.cache', NULL),
(367, 1707033236, 'cache_hit', 'spatie.permission.cache', NULL),
(368, 1707033360, 'cache_hit', 'spatie.permission.cache', NULL),
(369, 1707033448, 'cache_hit', 'spatie.permission.cache', NULL),
(370, 1707033453, 'cache_hit', 'spatie.permission.cache', NULL),
(371, 1707033453, 'cache_hit', 'spatie.permission.cache', NULL),
(372, 1707033455, 'cache_hit', 'spatie.permission.cache', NULL),
(373, 1707033456, 'cache_hit', 'spatie.permission.cache', NULL),
(374, 1707033457, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 2669),
(375, 1707033458, 'cache_hit', 'spatie.permission.cache', NULL),
(376, 1707033460, 'slow_outgoing_request', '[\"POST\",\"https:\\/\\/microsoft-translator-text.p.rapidapi.com\\/translate?to%5B0%5D=bn&api-version=3.0&profanityAction=NoAction&textType=plain\"]', 2202),
(377, 1707033460, 'cache_hit', 'spatie.permission.cache', NULL),
(378, 1707033468, 'cache_hit', 'spatie.permission.cache', NULL),
(379, 1707033488, 'cache_hit', 'spatie.permission.cache', NULL),
(380, 1707037240, 'cache_miss', 'spatie.permission.cache', NULL),
(381, 1707037352, 'cache_hit', 'spatie.permission.cache', NULL),
(382, 1707037357, 'cache_hit', 'spatie.permission.cache', NULL),
(383, 1707039348, 'cache_hit', 'spatie.permission.cache', NULL),
(384, 1707039375, 'cache_hit', 'spatie.permission.cache', NULL),
(385, 1707039385, 'cache_hit', 'spatie.permission.cache', NULL),
(386, 1707039386, 'cache_miss', 'spatie.permission.cache', NULL),
(387, 1707039405, 'cache_miss', 'spatie.permission.cache', NULL),
(388, 1707039414, 'cache_hit', 'spatie.permission.cache', NULL),
(389, 1707039416, 'cache_hit', 'spatie.permission.cache', NULL),
(390, 1707039423, 'cache_hit', 'spatie.permission.cache', NULL),
(391, 1707039531, 'cache_hit', 'spatie.permission.cache', NULL),
(392, 1707039533, 'cache_hit', 'spatie.permission.cache', NULL),
(393, 1707040215, 'cache_miss', 'spatie.permission.cache', NULL),
(394, 1707040229, 'cache_hit', 'spatie.permission.cache', NULL),
(395, 1707040255, 'cache_hit', 'spatie.permission.cache', NULL),
(396, 1707040344, 'cache_hit', 'spatie.permission.cache', NULL),
(397, 1707040362, 'cache_hit', 'spatie.permission.cache', NULL),
(398, 1707040406, 'cache_hit', 'spatie.permission.cache', NULL),
(399, 1707040411, 'cache_hit', 'spatie.permission.cache', NULL),
(400, 1707041503, 'cache_hit', 'spatie.permission.cache', NULL),
(401, 1707041503, 'cache_miss', 'spatie.permission.cache', NULL),
(402, 1707041503, 'cache_miss', 'spatie.permission.cache', NULL),
(403, 1707041503, 'cache_miss', 'spatie.permission.cache', NULL),
(404, 1707041618, 'cache_miss', 'spatie.permission.cache', NULL),
(405, 1707041620, 'cache_hit', 'spatie.permission.cache', NULL),
(406, 1707041623, 'cache_hit', 'spatie.permission.cache', NULL),
(407, 1707044370, 'cache_hit', 'spatie.permission.cache', NULL),
(408, 1707125329, 'cache_miss', 'spatie.permission.cache', NULL),
(409, 1707125375, 'cache_hit', 'spatie.permission.cache', NULL),
(410, 1707125375, 'cache_hit', 'spatie.permission.cache', NULL),
(411, 1707125380, 'cache_hit', 'spatie.permission.cache', NULL),
(412, 1707125392, 'cache_hit', 'spatie.permission.cache', NULL),
(413, 1707125498, 'cache_hit', 'spatie.permission.cache', NULL),
(414, 1707125512, 'cache_hit', 'spatie.permission.cache', NULL),
(415, 1707125515, 'cache_hit', 'spatie.permission.cache', NULL),
(416, 1707125521, 'cache_hit', 'spatie.permission.cache', NULL),
(417, 1707125547, 'cache_hit', 'spatie.permission.cache', NULL),
(418, 1707125577, 'cache_hit', 'spatie.permission.cache', NULL),
(419, 1707125619, 'cache_hit', 'spatie.permission.cache', NULL),
(420, 1707125631, 'cache_hit', 'spatie.permission.cache', NULL),
(421, 1707125631, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\index.blade.php:146\"]', 1707125631),
(422, 1707125783, 'cache_hit', 'spatie.permission.cache', NULL),
(423, 1707275268, 'cache_miss', 'spatie.permission.cache', NULL),
(424, 1707275444, 'cache_hit', 'spatie.permission.cache', NULL),
(425, 1707275444, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\create.blade.php:184\"]', 1707275444),
(426, 1707275623, 'cache_hit', 'spatie.permission.cache', NULL),
(427, 1707275666, 'cache_hit', 'spatie.permission.cache', NULL),
(428, 1707275678, 'cache_hit', 'spatie.permission.cache', NULL),
(429, 1707275701, 'cache_hit', 'spatie.permission.cache', NULL),
(430, 1707275750, 'cache_hit', 'spatie.permission.cache', NULL),
(431, 1707275764, 'cache_hit', 'spatie.permission.cache', NULL),
(432, 1707275944, 'cache_hit', 'spatie.permission.cache', NULL),
(433, 1707276143, 'cache_hit', 'spatie.permission.cache', NULL),
(434, 1707276158, 'cache_hit', 'spatie.permission.cache', NULL),
(435, 1707276288, 'cache_hit', 'spatie.permission.cache', NULL),
(436, 1707276396, 'cache_hit', 'spatie.permission.cache', NULL),
(437, 1707276409, 'cache_hit', 'spatie.permission.cache', NULL),
(438, 1707276417, 'cache_hit', 'spatie.permission.cache', NULL),
(439, 1707276468, 'cache_hit', 'spatie.permission.cache', NULL),
(440, 1707276488, 'cache_hit', 'spatie.permission.cache', NULL),
(441, 1707276512, 'cache_hit', 'spatie.permission.cache', NULL),
(442, 1707276558, 'cache_hit', 'spatie.permission.cache', NULL),
(443, 1707276588, 'cache_hit', 'spatie.permission.cache', NULL),
(444, 1707276600, 'cache_hit', 'spatie.permission.cache', NULL),
(445, 1707276616, 'cache_hit', 'spatie.permission.cache', NULL),
(446, 1707276625, 'cache_hit', 'spatie.permission.cache', NULL),
(447, 1707276628, 'cache_hit', 'spatie.permission.cache', NULL),
(448, 1707276628, 'cache_hit', 'spatie.permission.cache', NULL),
(449, 1707276631, 'cache_hit', 'spatie.permission.cache', NULL),
(450, 1707276761, 'cache_hit', 'spatie.permission.cache', NULL),
(451, 1707276761, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\create.blade.php:274\"]', 1707276761),
(452, 1707276831, 'cache_hit', 'spatie.permission.cache', NULL),
(453, 1707276888, 'cache_hit', 'spatie.permission.cache', NULL),
(454, 1707277329, 'cache_hit', 'spatie.permission.cache', NULL),
(455, 1707277334, 'cache_hit', 'spatie.permission.cache', NULL),
(456, 1707277334, 'cache_hit', 'spatie.permission.cache', NULL),
(457, 1707277336, 'cache_hit', 'spatie.permission.cache', NULL),
(458, 1707277455, 'cache_hit', 'spatie.permission.cache', NULL),
(459, 1707277555, 'cache_hit', 'spatie.permission.cache', NULL),
(460, 1707277586, 'cache_hit', 'spatie.permission.cache', NULL),
(461, 1707277628, 'cache_hit', 'spatie.permission.cache', NULL),
(462, 1707277826, 'cache_hit', 'spatie.permission.cache', NULL),
(463, 1707277854, 'cache_hit', 'spatie.permission.cache', NULL),
(464, 1707277881, 'cache_hit', 'spatie.permission.cache', NULL),
(465, 1707277906, 'cache_hit', 'spatie.permission.cache', NULL),
(466, 1707277935, 'cache_hit', 'spatie.permission.cache', NULL),
(467, 1707278308, 'cache_hit', 'spatie.permission.cache', NULL),
(468, 1707278355, 'cache_hit', 'spatie.permission.cache', NULL),
(469, 1707278414, 'cache_hit', 'spatie.permission.cache', NULL),
(470, 1707278423, 'cache_hit', 'spatie.permission.cache', NULL),
(471, 1707278469, 'cache_hit', 'spatie.permission.cache', NULL),
(472, 1707286809, 'cache_miss', 'spatie.permission.cache', NULL),
(473, 1707287074, 'cache_hit', 'spatie.permission.cache', NULL),
(474, 1707287264, 'cache_hit', 'spatie.permission.cache', NULL),
(475, 1707287267, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:84\"]', 1707287267),
(476, 1707287488, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 1707287488),
(477, 1707287523, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 1707287523),
(478, 1707287560, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 1707287560),
(479, 1707287600, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:90\"]', 1707287600),
(480, 1707288165, 'cache_hit', 'spatie.permission.cache', NULL),
(481, 1707288298, 'cache_hit', 'spatie.permission.cache', NULL),
(482, 1707288354, 'cache_hit', 'spatie.permission.cache', NULL),
(483, 1707288377, 'cache_hit', 'spatie.permission.cache', NULL),
(484, 1707288412, 'cache_hit', 'spatie.permission.cache', NULL),
(485, 1707288454, 'cache_hit', 'spatie.permission.cache', NULL),
(486, 1707288468, 'cache_hit', 'spatie.permission.cache', NULL),
(487, 1707288524, 'cache_hit', 'spatie.permission.cache', NULL),
(488, 1707288598, 'cache_hit', 'spatie.permission.cache', NULL),
(489, 1707288649, 'cache_hit', 'spatie.permission.cache', NULL),
(490, 1707288724, 'cache_hit', 'spatie.permission.cache', NULL),
(491, 1707288797, 'cache_hit', 'spatie.permission.cache', NULL),
(492, 1707288860, 'cache_hit', 'spatie.permission.cache', NULL),
(493, 1707288981, 'cache_hit', 'spatie.permission.cache', NULL),
(494, 1707289374, 'cache_hit', 'spatie.permission.cache', NULL),
(495, 1707289439, 'cache_hit', 'spatie.permission.cache', NULL),
(496, 1707289498, 'cache_hit', 'spatie.permission.cache', NULL),
(497, 1707289840, 'cache_hit', 'spatie.permission.cache', NULL),
(498, 1707289955, 'cache_hit', 'spatie.permission.cache', NULL),
(499, 1707290196, 'cache_hit', 'spatie.permission.cache', NULL),
(500, 1707290360, 'cache_hit', 'spatie.permission.cache', NULL),
(501, 1707290379, 'cache_hit', 'spatie.permission.cache', NULL),
(502, 1707290383, 'cache_hit', 'spatie.permission.cache', NULL),
(503, 1707290425, 'cache_miss', 'spatie.permission.cache', NULL),
(504, 1707290519, 'cache_hit', 'spatie.permission.cache', NULL),
(505, 1707290527, 'cache_hit', 'spatie.permission.cache', NULL),
(506, 1707291385, 'cache_hit', 'spatie.permission.cache', NULL),
(507, 1707291395, 'cache_hit', 'spatie.permission.cache', NULL),
(508, 1707291395, 'cache_hit', 'spatie.permission.cache', NULL),
(509, 1707291397, 'cache_hit', 'spatie.permission.cache', NULL),
(510, 1707291989, 'cache_hit', 'spatie.permission.cache', NULL),
(511, 1707292039, 'cache_hit', 'spatie.permission.cache', NULL),
(512, 1707292048, 'cache_hit', 'spatie.permission.cache', NULL),
(513, 1707292144, 'cache_hit', 'spatie.permission.cache', NULL),
(514, 1707298013, 'cache_miss', 'spatie.permission.cache', NULL),
(515, 1707298042, 'cache_hit', 'spatie.permission.cache', NULL),
(516, 1707298043, 'cache_hit', 'spatie.permission.cache', NULL),
(517, 1707298044, 'cache_hit', 'spatie.permission.cache', NULL),
(518, 1707298054, 'cache_hit', 'spatie.permission.cache', NULL),
(519, 1707298104, 'cache_hit', 'spatie.permission.cache', NULL),
(520, 1707298154, 'cache_hit', 'spatie.permission.cache', NULL),
(521, 1707298154, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:55\"]', 1707298154),
(522, 1707298239, 'cache_hit', 'spatie.permission.cache', NULL),
(523, 1707299314, 'cache_hit', 'spatie.permission.cache', NULL),
(524, 1707299315, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:49\"]', 1707299315),
(525, 1707299387, 'cache_hit', 'spatie.permission.cache', NULL),
(526, 1707299387, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:49\"]', 1707299387),
(527, 1707299409, 'cache_hit', 'spatie.permission.cache', NULL),
(528, 1707299409, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:49\"]', 1707299409),
(529, 1707299471, 'cache_hit', 'spatie.permission.cache', NULL),
(530, 1707299471, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:50\"]', 1707299471),
(531, 1707299483, 'cache_hit', 'spatie.permission.cache', NULL),
(532, 1707299483, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:50\"]', 1707299483),
(533, 1707299494, 'cache_hit', 'spatie.permission.cache', NULL),
(534, 1707299494, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:50\"]', 1707299494),
(535, 1707299550, 'cache_hit', 'spatie.permission.cache', NULL),
(536, 1707299550, 'exception', '[\"Error\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:49\"]', 1707299550),
(537, 1707299576, 'cache_hit', 'spatie.permission.cache', NULL),
(538, 1707300360, 'cache_hit', 'spatie.permission.cache', NULL),
(539, 1707300383, 'cache_hit', 'spatie.permission.cache', NULL),
(540, 1707300452, 'cache_hit', 'spatie.permission.cache', NULL),
(541, 1707300597, 'cache_hit', 'spatie.permission.cache', NULL),
(542, 1707300626, 'cache_hit', 'spatie.permission.cache', NULL),
(543, 1707300927, 'cache_hit', 'spatie.permission.cache', NULL),
(544, 1707300946, 'cache_hit', 'spatie.permission.cache', NULL),
(545, 1707300973, 'cache_hit', 'spatie.permission.cache', NULL),
(546, 1707300991, 'cache_hit', 'spatie.permission.cache', NULL),
(547, 1707301115, 'cache_hit', 'spatie.permission.cache', NULL),
(548, 1707301126, 'cache_hit', 'spatie.permission.cache', NULL),
(549, 1707301154, 'cache_hit', 'spatie.permission.cache', NULL),
(550, 1707301241, 'cache_hit', 'spatie.permission.cache', NULL),
(551, 1707301261, 'cache_hit', 'spatie.permission.cache', NULL),
(552, 1707301698, 'cache_miss', 'spatie.permission.cache', NULL),
(553, 1707301703, 'cache_hit', 'spatie.permission.cache', NULL),
(554, 1707301703, 'cache_hit', 'spatie.permission.cache', NULL),
(555, 1707301705, 'cache_hit', 'spatie.permission.cache', NULL),
(556, 1707302272, 'cache_hit', 'spatie.permission.cache', NULL),
(557, 1707302275, 'cache_hit', 'spatie.permission.cache', NULL),
(558, 1707302288, 'cache_hit', 'spatie.permission.cache', NULL),
(559, 1707302317, 'cache_hit', 'spatie.permission.cache', NULL),
(560, 1707302319, 'cache_hit', 'spatie.permission.cache', NULL),
(561, 1707302550, 'cache_hit', 'spatie.permission.cache', NULL),
(562, 1707302554, 'cache_hit', 'spatie.permission.cache', NULL),
(563, 1707302556, 'cache_hit', 'spatie.permission.cache', NULL),
(564, 1707302615, 'cache_hit', 'spatie.permission.cache', NULL),
(565, 1707302617, 'cache_hit', 'spatie.permission.cache', NULL),
(566, 1707302619, 'cache_hit', 'spatie.permission.cache', NULL),
(567, 1707302621, 'cache_hit', 'spatie.permission.cache', NULL),
(568, 1707302636, 'cache_hit', 'spatie.permission.cache', NULL),
(569, 1707302636, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 1707302636),
(570, 1707302650, 'cache_hit', 'spatie.permission.cache', NULL),
(571, 1707302652, 'cache_hit', 'spatie.permission.cache', NULL),
(572, 1707302720, 'cache_hit', 'spatie.permission.cache', NULL),
(573, 1707302723, 'cache_hit', 'spatie.permission.cache', NULL),
(574, 1707302727, 'cache_hit', 'spatie.permission.cache', NULL),
(575, 1707302850, 'cache_hit', 'spatie.permission.cache', NULL),
(576, 1707302870, 'cache_hit', 'spatie.permission.cache', NULL),
(577, 1707302872, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 1707302872),
(578, 1707302957, 'cache_hit', 'spatie.permission.cache', NULL),
(579, 1707302957, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 1707302957),
(580, 1707302987, 'cache_hit', 'spatie.permission.cache', NULL),
(581, 1707302995, 'cache_hit', 'spatie.permission.cache', NULL),
(582, 1707302999, 'cache_hit', 'spatie.permission.cache', NULL),
(583, 1707303001, 'cache_hit', 'spatie.permission.cache', NULL),
(584, 1707303004, 'cache_hit', 'spatie.permission.cache', NULL),
(585, 1707303042, 'cache_hit', 'spatie.permission.cache', NULL),
(586, 1707303046, 'cache_hit', 'spatie.permission.cache', NULL),
(587, 1707303101, 'cache_miss', 'spatie.permission.cache', NULL),
(588, 1707303103, 'cache_hit', 'spatie.permission.cache', NULL),
(589, 1707303106, 'cache_hit', 'spatie.permission.cache', NULL),
(590, 1707303135, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 1707303135),
(591, 1707303153, 'cache_hit', 'spatie.permission.cache', NULL),
(592, 1707303162, 'cache_hit', 'spatie.permission.cache', NULL),
(593, 1707303164, 'cache_hit', 'spatie.permission.cache', NULL),
(594, 1707303167, 'cache_hit', 'spatie.permission.cache', NULL),
(595, 1707303172, 'cache_hit', 'spatie.permission.cache', NULL),
(596, 1707304180, 'cache_hit', 'spatie.permission.cache', NULL),
(597, 1707304180, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 1707304180),
(598, 1707304227, 'cache_hit', 'spatie.permission.cache', NULL),
(599, 1707304235, 'cache_hit', 'spatie.permission.cache', NULL),
(600, 1707304238, 'cache_hit', 'spatie.permission.cache', NULL),
(601, 1707304240, 'cache_hit', 'spatie.permission.cache', NULL),
(602, 1707360818, 'cache_miss', 'spatie.permission.cache', NULL),
(603, 1707360827, 'cache_hit', 'spatie.permission.cache', NULL),
(604, 1707360830, 'cache_hit', 'spatie.permission.cache', NULL),
(605, 1707360837, 'cache_hit', 'spatie.permission.cache', NULL),
(606, 1707360841, 'cache_hit', 'spatie.permission.cache', NULL),
(607, 1707360885, 'cache_hit', 'spatie.permission.cache', NULL),
(608, 1707361864, 'cache_hit', 'spatie.permission.cache', NULL),
(609, 1707363410, 'cache_hit', 'spatie.permission.cache', NULL),
(610, 1707363412, 'cache_hit', 'spatie.permission.cache', NULL),
(611, 1707363412, 'cache_hit', 'spatie.permission.cache', NULL),
(612, 1707363649, 'cache_hit', 'spatie.permission.cache', NULL),
(613, 1707363659, 'cache_hit', 'spatie.permission.cache', NULL),
(614, 1707363673, 'cache_hit', 'spatie.permission.cache', NULL),
(615, 1707363673, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:58\"]', 1707363673),
(616, 1707363688, 'cache_hit', 'spatie.permission.cache', NULL),
(617, 1707363688, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\AdjustmentStoreRequest.php:58\"]', 1707363688),
(618, 1707363761, 'cache_hit', 'spatie.permission.cache', NULL),
(619, 1707363925, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:213\"]', 1707363925),
(620, 1707363963, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:213\"]', 1707363963),
(621, 1707364190, 'cache_hit', 'spatie.permission.cache', NULL),
(622, 1707364509, 'cache_miss', 'spatie.permission.cache', NULL),
(623, 1707364511, 'cache_hit', 'spatie.permission.cache', NULL),
(624, 1707364511, 'cache_hit', 'spatie.permission.cache', NULL),
(625, 1707364716, 'cache_hit', 'spatie.permission.cache', NULL),
(626, 1707364725, 'cache_hit', 'spatie.permission.cache', NULL),
(627, 1707364735, 'cache_hit', 'spatie.permission.cache', NULL),
(628, 1707369027, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\adjustment\\\\index.blade.php:216\"]', 1707369027),
(629, 1707372358, 'cache_miss', 'spatie.permission.cache', NULL),
(630, 1707372359, 'cache_hit', 'spatie.permission.cache', NULL),
(631, 1707373136, 'cache_hit', 'spatie.permission.cache', NULL),
(632, 1707373136, 'cache_hit', 'spatie.permission.cache', NULL),
(633, 1707374188, 'exception', '[\"TypeError\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:27\"]', 1707374188),
(634, 1707374206, 'exception', '[\"TypeError\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:27\"]', 1707374206),
(635, 1707374566, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:28\"]', 1707374566),
(636, 1707374597, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:29\"]', 1707374597),
(637, 1707374635, 'exception', '[\"Carbon\\\\Exceptions\\\\InvalidFormatException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:28\"]', 1707374635),
(638, 1707378578, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\AdjustmentController.php:139\"]', 1707378578),
(639, 1707383306, 'cache_miss', 'spatie.permission.cache', NULL),
(640, 1707383306, 'cache_hit', 'spatie.permission.cache', NULL),
(641, 1707385854, 'cache_hit', 'spatie.permission.cache', NULL),
(642, 1707385856, 'cache_hit', 'spatie.permission.cache', NULL),
(643, 1707385858, 'cache_hit', 'spatie.permission.cache', NULL),
(644, 1707387028, 'cache_miss', 'spatie.permission.cache', NULL),
(645, 1707387864, 'cache_hit', 'spatie.permission.cache', NULL),
(646, 1707389991, 'cache_hit', 'spatie.permission.cache', NULL),
(660, 1707889420, 'cache_miss', 'spatie.permission.cache', NULL),
(661, 1707889429, 'cache_hit', 'spatie.permission.cache', NULL),
(662, 1707889452, 'cache_hit', 'spatie.permission.cache', NULL),
(663, 1707889454, 'cache_hit', 'spatie.permission.cache', NULL),
(664, 1707889629, 'cache_hit', 'spatie.permission.cache', NULL),
(665, 1707889633, 'cache_hit', 'spatie.permission.cache', NULL),
(666, 1707889636, 'cache_hit', 'spatie.permission.cache', NULL),
(667, 1708338467, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 1670),
(668, 1713669703, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 2453),
(669, 1713669714, 'slow_request', '[\"POST\",\"\\/admin\\/login\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@handleLogin\"]', 1059),
(670, 1713669745, 'cache_miss', 'spatie.permission.cache', NULL),
(671, 1713672608, 'cache_hit', 'spatie.permission.cache', NULL),
(672, 1713683619, 'exception', '[\"ErrorException\",\"routes\\\\web.php:41\"]', 1713683619),
(673, 1713693697, 'exception', '[\"ErrorException\",\"routes\\\\web.php:41\"]', 1713693697),
(674, 1713694431, 'exception', '[\"ErrorException\",\"routes\\\\web.php:48\"]', 1713694431),
(675, 1713695178, 'exception', '[\"ErrorException\",\"routes\\\\web.php:48\"]', 1713695178),
(676, 1719238149, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 1708),
(677, 1719238166, 'slow_request', '[\"POST\",\"\\/admin\\/login\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@handleLogin\"]', 1060),
(678, 1719238175, 'cache_miss', 'spatie.permission.cache', NULL),
(679, 1719238208, 'cache_hit', 'spatie.permission.cache', NULL),
(680, 1719238218, 'cache_hit', 'spatie.permission.cache', NULL),
(681, 1719238439, 'cache_hit', 'spatie.permission.cache', NULL),
(682, 1719238474, 'cache_hit', 'spatie.permission.cache', NULL),
(683, 1719238480, 'cache_hit', 'spatie.permission.cache', NULL),
(684, 1719238480, 'cache_miss', 'spatie.permission.cache', NULL),
(685, 1719238533, 'cache_miss', 'spatie.permission.cache', NULL),
(686, 1719238580, 'cache_hit', 'spatie.permission.cache', NULL),
(687, 1719238589, 'cache_hit', 'spatie.permission.cache', NULL),
(688, 1719238611, 'cache_hit', 'spatie.permission.cache', NULL),
(689, 1719238885, 'cache_hit', 'spatie.permission.cache', NULL),
(690, 1719238907, 'cache_hit', 'spatie.permission.cache', NULL),
(691, 1726979266, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 5295);
INSERT INTO `pulse_entries` (`id`, `timestamp`, `type`, `key`, `value`) VALUES
(692, 1726980302, 'cache_miss', 'spatie.permission.cache', NULL),
(693, 1726980305, 'cache_hit', 'spatie.permission.cache', NULL),
(694, 1726980309, 'cache_hit', 'spatie.permission.cache', NULL),
(695, 1726980317, 'cache_hit', 'spatie.permission.cache', NULL),
(696, 1726980320, 'cache_hit', 'spatie.permission.cache', NULL),
(697, 1726980339, 'cache_hit', 'spatie.permission.cache', NULL),
(698, 1726985197, 'cache_hit', 'spatie.permission.cache', NULL),
(699, 1726985297, 'cache_hit', 'spatie.permission.cache', NULL),
(700, 1726985300, 'cache_hit', 'spatie.permission.cache', NULL),
(701, 1726985302, 'cache_hit', 'spatie.permission.cache', NULL),
(702, 1726985303, 'cache_hit', 'spatie.permission.cache', NULL),
(703, 1726985304, 'cache_hit', 'spatie.permission.cache', NULL),
(704, 1726985305, 'cache_hit', 'spatie.permission.cache', NULL),
(705, 1726985308, 'cache_hit', 'spatie.permission.cache', NULL),
(706, 1726985309, 'cache_hit', 'spatie.permission.cache', NULL),
(707, 1726985311, 'cache_hit', 'spatie.permission.cache', NULL),
(708, 1726985312, 'cache_hit', 'spatie.permission.cache', NULL),
(709, 1726985313, 'cache_hit', 'spatie.permission.cache', NULL),
(710, 1726985314, 'cache_hit', 'spatie.permission.cache', NULL),
(711, 1726985316, 'cache_hit', 'spatie.permission.cache', NULL),
(712, 1726985317, 'cache_hit', 'spatie.permission.cache', NULL),
(713, 1726985317, 'cache_hit', 'spatie.permission.cache', NULL),
(714, 1726985336, 'cache_hit', 'spatie.permission.cache', NULL),
(715, 1726985351, 'cache_hit', 'spatie.permission.cache', NULL),
(716, 1726985354, 'cache_hit', 'spatie.permission.cache', NULL),
(717, 1726985356, 'cache_hit', 'spatie.permission.cache', NULL),
(718, 1726985363, 'cache_hit', 'spatie.permission.cache', NULL),
(719, 1726985402, 'cache_hit', 'spatie.permission.cache', NULL),
(720, 1726985405, 'cache_hit', 'spatie.permission.cache', NULL),
(721, 1726985406, 'cache_hit', 'spatie.permission.cache', NULL),
(722, 1726985408, 'cache_hit', 'spatie.permission.cache', NULL),
(723, 1726991281, 'cache_miss', 'spatie.permission.cache', NULL),
(724, 1726991283, 'cache_hit', 'spatie.permission.cache', NULL),
(725, 1726991289, 'cache_hit', 'spatie.permission.cache', NULL),
(726, 1726991559, 'cache_hit', 'spatie.permission.cache', NULL),
(727, 1726991591, 'cache_hit', 'spatie.permission.cache', NULL),
(728, 1726991751, 'cache_hit', 'spatie.permission.cache', NULL),
(729, 1726991760, 'cache_hit', 'spatie.permission.cache', NULL),
(730, 1726991765, 'cache_hit', 'spatie.permission.cache', NULL),
(731, 1726994961, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 1088),
(732, 1726994962, 'cache_miss', 'spatie.permission.cache', NULL),
(733, 1726995245, 'cache_hit', 'spatie.permission.cache', NULL),
(734, 1726995249, 'cache_hit', 'spatie.permission.cache', NULL),
(735, 1726995265, 'cache_hit', 'spatie.permission.cache', NULL),
(736, 1726995306, 'cache_hit', 'spatie.permission.cache', NULL),
(737, 1726995669, 'cache_hit', 'spatie.permission.cache', NULL),
(738, 1726996894, 'cache_hit', 'spatie.permission.cache', NULL),
(739, 1726996940, 'cache_hit', 'spatie.permission.cache', NULL),
(740, 1726996954, 'cache_hit', 'spatie.permission.cache', NULL),
(741, 1726998240, 'cache_hit', 'spatie.permission.cache', NULL),
(742, 1726998242, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\SubCategoryController.php:19\"]', 1726998242),
(743, 1726998277, 'exception', '[\"ParseError\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\sub-category\\\\index.blade.php:220\"]', 1726998277),
(744, 1726998510, 'cache_hit', 'spatie.permission.cache', NULL),
(745, 1726998511, 'cache_miss', 'spatie.permission.cache', NULL),
(746, 1726998511, 'cache_miss', 'spatie.permission.cache', NULL),
(747, 1726998511, 'cache_miss', 'spatie.permission.cache', NULL),
(748, 1727000047, 'cache_miss', 'spatie.permission.cache', NULL),
(749, 1727000122, 'cache_hit', 'spatie.permission.cache', NULL),
(750, 1727000127, 'cache_hit', 'spatie.permission.cache', NULL),
(751, 1727000143, 'cache_hit', 'spatie.permission.cache', NULL),
(752, 1727000202, 'cache_hit', 'spatie.permission.cache', NULL),
(753, 1727000263, 'cache_hit', 'spatie.permission.cache', NULL),
(754, 1727000267, 'cache_hit', 'spatie.permission.cache', NULL),
(755, 1727000311, 'cache_hit', 'spatie.permission.cache', NULL),
(756, 1727000367, 'cache_hit', 'spatie.permission.cache', NULL),
(757, 1727000371, 'cache_hit', 'spatie.permission.cache', NULL),
(758, 1727000541, 'cache_hit', 'spatie.permission.cache', NULL),
(759, 1727000577, 'cache_hit', 'spatie.permission.cache', NULL),
(760, 1727000623, 'cache_hit', 'spatie.permission.cache', NULL),
(761, 1727000653, 'cache_hit', 'spatie.permission.cache', NULL),
(762, 1727000691, 'cache_hit', 'spatie.permission.cache', NULL),
(763, 1727000709, 'cache_hit', 'spatie.permission.cache', NULL),
(764, 1727000813, 'cache_hit', 'spatie.permission.cache', NULL),
(765, 1727000911, 'cache_hit', 'spatie.permission.cache', NULL),
(766, 1727000995, 'cache_hit', 'spatie.permission.cache', NULL),
(767, 1727000999, 'cache_hit', 'spatie.permission.cache', NULL),
(768, 1727001021, 'cache_hit', 'spatie.permission.cache', NULL),
(769, 1727001023, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\SubcategoryStoreRequest.php:52\"]', 1727001023),
(770, 1727001391, 'cache_hit', 'spatie.permission.cache', NULL),
(771, 1727001394, 'cache_hit', 'spatie.permission.cache', NULL),
(772, 1727001395, 'cache_hit', 'spatie.permission.cache', NULL),
(773, 1727002752, 'cache_hit', 'spatie.permission.cache', NULL),
(774, 1727003173, 'cache_hit', 'spatie.permission.cache', NULL),
(775, 1727003174, 'cache_hit', 'spatie.permission.cache', NULL),
(776, 1727003221, 'cache_hit', 'spatie.permission.cache', NULL),
(777, 1727003225, 'cache_hit', 'spatie.permission.cache', NULL),
(778, 1727003250, 'cache_hit', 'spatie.permission.cache', NULL),
(779, 1727003375, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/create\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@create\"]', 1084),
(780, 1727003376, 'cache_hit', 'spatie.permission.cache', NULL),
(781, 1727003400, 'cache_hit', 'spatie.permission.cache', NULL),
(782, 1727003419, 'cache_hit', 'spatie.permission.cache', NULL),
(783, 1727003467, 'cache_hit', 'spatie.permission.cache', NULL),
(784, 1727003470, 'cache_hit', 'spatie.permission.cache', NULL),
(785, 1727003547, 'cache_hit', 'spatie.permission.cache', NULL),
(786, 1727003551, 'cache_hit', 'spatie.permission.cache', NULL),
(787, 1727003639, 'cache_hit', 'spatie.permission.cache', NULL),
(788, 1727003641, 'cache_hit', 'spatie.permission.cache', NULL),
(789, 1727003642, 'cache_hit', 'spatie.permission.cache', NULL),
(790, 1727003643, 'cache_hit', 'spatie.permission.cache', NULL),
(791, 1727003671, 'cache_miss', 'spatie.permission.cache', NULL),
(792, 1727003671, 'cache_hit', 'spatie.permission.cache', NULL),
(793, 1727003673, 'cache_hit', 'spatie.permission.cache', NULL),
(794, 1727060328, 'cache_miss', 'spatie.permission.cache', NULL),
(795, 1727060338, 'cache_hit', 'spatie.permission.cache', NULL),
(796, 1727060338, 'cache_hit', 'spatie.permission.cache', NULL),
(797, 1727060341, 'cache_hit', 'spatie.permission.cache', NULL),
(798, 1727060520, 'cache_hit', 'spatie.permission.cache', NULL),
(799, 1727060618, 'cache_hit', 'spatie.permission.cache', NULL),
(800, 1727060744, 'cache_hit', 'spatie.permission.cache', NULL),
(801, 1727060745, 'cache_hit', 'spatie.permission.cache', NULL),
(802, 1727060746, 'cache_hit', 'spatie.permission.cache', NULL),
(803, 1727060797, 'cache_hit', 'spatie.permission.cache', NULL),
(804, 1727061249, 'cache_hit', 'spatie.permission.cache', NULL),
(805, 1727061260, 'cache_hit', 'spatie.permission.cache', NULL),
(806, 1727061324, 'cache_hit', 'spatie.permission.cache', NULL),
(807, 1727061413, 'cache_hit', 'spatie.permission.cache', NULL),
(808, 1727061413, 'cache_hit', 'spatie.permission.cache', NULL),
(809, 1727061414, 'cache_hit', 'spatie.permission.cache', NULL),
(810, 1727061452, 'cache_hit', 'spatie.permission.cache', NULL),
(811, 1727061452, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductStoreRequest.php:91\"]', 1727061452),
(812, 1727061479, 'cache_hit', 'spatie.permission.cache', NULL),
(813, 1727061481, 'cache_hit', 'spatie.permission.cache', NULL),
(814, 1727061483, 'cache_hit', 'spatie.permission.cache', NULL),
(815, 1727061490, 'cache_hit', 'spatie.permission.cache', NULL),
(816, 1727061598, 'cache_hit', 'spatie.permission.cache', NULL),
(817, 1727061629, 'cache_hit', 'spatie.permission.cache', NULL),
(818, 1727061631, 'cache_hit', 'spatie.permission.cache', NULL),
(819, 1727061633, 'cache_hit', 'spatie.permission.cache', NULL),
(820, 1727061638, 'cache_hit', 'spatie.permission.cache', NULL),
(821, 1727061642, 'cache_hit', 'spatie.permission.cache', NULL),
(822, 1727061651, 'cache_hit', 'spatie.permission.cache', NULL),
(823, 1727061651, 'cache_hit', 'spatie.permission.cache', NULL),
(824, 1727062237, 'slow_request', '[\"GET\",\"\\/admin\\/product\\/{product}\\/edit\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Product\\\\ProductController@edit\"]', 1136),
(825, 1727062238, 'cache_hit', 'spatie.permission.cache', NULL),
(826, 1727062238, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\product\\\\edit.blade.php:162\"]', 1727062238),
(827, 1727062339, 'cache_hit', 'spatie.permission.cache', NULL),
(828, 1727062420, 'cache_hit', 'spatie.permission.cache', NULL),
(829, 1727062432, 'cache_hit', 'spatie.permission.cache', NULL),
(830, 1727062446, 'cache_hit', 'spatie.permission.cache', NULL),
(831, 1727062482, 'cache_hit', 'spatie.permission.cache', NULL),
(832, 1727062561, 'cache_hit', 'spatie.permission.cache', NULL),
(833, 1727062655, 'cache_hit', 'spatie.permission.cache', NULL),
(834, 1727062658, 'cache_hit', 'spatie.permission.cache', NULL),
(835, 1727062658, 'cache_hit', 'spatie.permission.cache', NULL),
(836, 1727062660, 'cache_hit', 'spatie.permission.cache', NULL),
(837, 1727062824, 'cache_hit', 'spatie.permission.cache', NULL),
(838, 1727062828, 'cache_hit', 'spatie.permission.cache', NULL),
(839, 1727062828, 'cache_hit', 'spatie.permission.cache', NULL),
(840, 1727062978, 'cache_hit', 'spatie.permission.cache', NULL),
(841, 1727062980, 'cache_hit', 'spatie.permission.cache', NULL),
(842, 1727062983, 'cache_hit', 'spatie.permission.cache', NULL),
(843, 1727062986, 'cache_hit', 'spatie.permission.cache', NULL),
(844, 1727062990, 'cache_hit', 'spatie.permission.cache', NULL),
(845, 1727062992, 'cache_hit', 'spatie.permission.cache', NULL),
(846, 1727063052, 'cache_hit', 'spatie.permission.cache', NULL),
(847, 1727063055, 'cache_hit', 'spatie.permission.cache', NULL),
(848, 1727063059, 'cache_hit', 'spatie.permission.cache', NULL),
(849, 1727063066, 'cache_hit', 'spatie.permission.cache', NULL),
(850, 1727063099, 'cache_hit', 'spatie.permission.cache', NULL),
(851, 1727063104, 'cache_hit', 'spatie.permission.cache', NULL),
(852, 1727063531, 'cache_hit', 'spatie.permission.cache', NULL),
(853, 1727063537, 'cache_hit', 'spatie.permission.cache', NULL),
(854, 1727063539, 'cache_hit', 'spatie.permission.cache', NULL),
(855, 1727063559, 'cache_hit', 'spatie.permission.cache', NULL),
(856, 1727063561, 'cache_hit', 'spatie.permission.cache', NULL),
(857, 1727063563, 'cache_hit', 'spatie.permission.cache', NULL),
(858, 1727063566, 'cache_hit', 'spatie.permission.cache', NULL),
(859, 1727063575, 'cache_hit', 'spatie.permission.cache', NULL),
(860, 1727063578, 'cache_hit', 'spatie.permission.cache', NULL),
(861, 1727063581, 'cache_hit', 'spatie.permission.cache', NULL),
(862, 1727063605, 'cache_hit', 'spatie.permission.cache', NULL),
(863, 1727063609, 'cache_hit', 'spatie.permission.cache', NULL),
(864, 1727063614, 'cache_hit', 'spatie.permission.cache', NULL),
(865, 1727063628, 'cache_hit', 'spatie.permission.cache', NULL),
(866, 1727063642, 'cache_hit', 'spatie.permission.cache', NULL),
(867, 1727063645, 'cache_hit', 'spatie.permission.cache', NULL),
(868, 1727063650, 'cache_hit', 'spatie.permission.cache', NULL),
(869, 1727063665, 'cache_hit', 'spatie.permission.cache', NULL),
(870, 1727063668, 'cache_hit', 'spatie.permission.cache', NULL),
(871, 1727063790, 'cache_hit', 'spatie.permission.cache', NULL),
(872, 1727063794, 'cache_hit', 'spatie.permission.cache', NULL),
(873, 1727063861, 'cache_hit', 'spatie.permission.cache', NULL),
(874, 1727063875, 'cache_hit', 'spatie.permission.cache', NULL),
(875, 1727063892, 'cache_hit', 'spatie.permission.cache', NULL),
(876, 1727063904, 'cache_hit', 'spatie.permission.cache', NULL),
(877, 1727063919, 'cache_hit', 'spatie.permission.cache', NULL),
(878, 1727063935, 'cache_miss', 'spatie.permission.cache', NULL),
(879, 1727063982, 'cache_hit', 'spatie.permission.cache', NULL),
(880, 1727063999, 'cache_hit', 'spatie.permission.cache', NULL),
(881, 1727064016, 'cache_hit', 'spatie.permission.cache', NULL),
(882, 1727064020, 'cache_hit', 'spatie.permission.cache', NULL),
(883, 1727067525, 'cache_hit', 'spatie.permission.cache', NULL),
(884, 1727067569, 'cache_miss', 'spatie.permission.cache', NULL),
(885, 1727067582, 'cache_hit', 'spatie.permission.cache', NULL),
(886, 1727067615, 'cache_hit', 'spatie.permission.cache', NULL),
(887, 1727067619, 'cache_hit', 'spatie.permission.cache', NULL),
(888, 1727067623, 'cache_hit', 'spatie.permission.cache', NULL),
(889, 1727067626, 'cache_hit', 'spatie.permission.cache', NULL),
(890, 1727067628, 'cache_hit', 'spatie.permission.cache', NULL),
(891, 1727067929, 'cache_hit', 'spatie.permission.cache', NULL),
(892, 1727067963, 'cache_hit', 'spatie.permission.cache', NULL),
(893, 1727068141, 'cache_hit', 'spatie.permission.cache', NULL),
(894, 1727068210, 'cache_hit', 'spatie.permission.cache', NULL),
(895, 1727068270, 'cache_hit', 'spatie.permission.cache', NULL),
(896, 1727068326, 'cache_hit', 'spatie.permission.cache', NULL),
(897, 1727069081, 'cache_hit', 'spatie.permission.cache', NULL),
(898, 1727069085, 'cache_hit', 'spatie.permission.cache', NULL),
(899, 1727069105, 'cache_hit', 'spatie.permission.cache', NULL),
(900, 1727069163, 'cache_hit', 'spatie.permission.cache', NULL),
(901, 1727069209, 'cache_hit', 'spatie.permission.cache', NULL),
(902, 1727069224, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\SubcategoryStoreRequest.php:52\"]', 1727069224),
(903, 1727069227, 'cache_hit', 'spatie.permission.cache', NULL),
(904, 1727069236, 'cache_hit', 'spatie.permission.cache', NULL),
(905, 1727069270, 'cache_hit', 'spatie.permission.cache', NULL),
(906, 1727069272, 'cache_hit', 'spatie.permission.cache', NULL),
(907, 1727069278, 'cache_hit', 'spatie.permission.cache', NULL),
(908, 1727069278, 'cache_hit', 'spatie.permission.cache', NULL),
(909, 1727069279, 'cache_hit', 'spatie.permission.cache', NULL),
(910, 1727070049, 'cache_hit', 'spatie.permission.cache', NULL),
(911, 1727070056, 'cache_hit', 'spatie.permission.cache', NULL),
(912, 1727071186, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\layouts\\\\front_layouts.blade.php:427\"]', 1727071186),
(913, 1727071383, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\front_layouts.blade.php:1214\"]', 1727071383),
(914, 1727075420, 'cache_miss', 'spatie.permission.cache', NULL),
(915, 1727075420, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Middleware\\\\LanguageChangeMiddleware.php:23\"]', 1727075420),
(916, 1727075431, 'cache_hit', 'spatie.permission.cache', NULL),
(917, 1727075431, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Middleware\\\\LanguageChangeMiddleware.php:23\"]', 1727075431),
(918, 1727075592, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:15\"]', 1727075592),
(919, 1727075624, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:15\"]', 1727075624),
(920, 1727081057, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\Categoryresource.php:18\"]', 1727081057),
(921, 1727081106, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\SubCategoryresource.php:18\"]', 1727081106),
(922, 1727081198, 'exception', '[\"Exception\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\SubCategoryresource.php:18\"]', 1727081198),
(923, 1727081833, 'cache_miss', 'spatie.permission.cache', NULL),
(924, 1727081842, 'cache_hit', 'spatie.permission.cache', NULL),
(925, 1727081852, 'cache_hit', 'spatie.permission.cache', NULL),
(926, 1727088389, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 1016),
(927, 1727088389, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:13\"]', 1727088389),
(928, 1727088546, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 1727088546),
(929, 1727088571, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 1727088571),
(930, 1727088639, 'exception', '[\"Exception\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 1727088639),
(931, 1727088717, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 1727088717),
(932, 1727088833, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:18\"]', 1727088833),
(933, 1727088908, 'slow_request', '[\"GET\",\"\\/frontend\\/getCategoryDeatils\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller@categoryDetails\"]', 1090),
(934, 1727088968, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:20\"]', 1727088968),
(935, 1727089126, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 1727089126),
(936, 1727089155, 'exception', '[\"TypeError\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 1727089155),
(937, 1727089241, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController.php:19\"]', 1727089241),
(938, 1727089663, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 1109),
(939, 1727089664, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 1727089664),
(940, 1727089676, 'exception', '[\"BadMethodCallException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\Traits\\\\ForwardsCalls.php:67\"]', 1727089676),
(941, 1727089708, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:20\"]', 1727089708),
(942, 1727090375, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php:822\"]', 1727090375),
(943, 1727090485, 'exception', '[\"ErrorException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Collection.php:1732\"]', 1727090485),
(944, 1727172416, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2024_09_24_160215_create_solution_categories_table.php:14\"]', 1727172416),
(945, 1727172509, 'exception', '[\"Illuminate\\\\Contracts\\\\Filesystem\\\\FileNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Filesystem\\\\Filesystem.php:153\"]', 1727172509),
(946, 1727172564, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2024_09_24_160215_create_solution_categories_table.php:14\"]', 1727172564),
(947, 1727172905, 'cache_miss', 'spatie.permission.cache', NULL),
(948, 1727172905, 'cache_miss', 'spatie.permission.cache', NULL),
(949, 1727172906, 'cache_miss', 'spatie.permission.cache', NULL),
(950, 1727172906, 'cache_miss', 'spatie.permission.cache', NULL),
(951, 1727172906, 'cache_miss', 'spatie.permission.cache', NULL),
(952, 1727172906, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:113\"]', 1727172906),
(953, 1727172968, 'cache_hit', 'spatie.permission.cache', NULL),
(954, 1727172968, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:113\"]', 1727172968),
(955, 1727172981, 'cache_hit', 'spatie.permission.cache', NULL),
(956, 1727172981, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:113\"]', 1727172981),
(957, 1727172996, 'cache_hit', 'spatie.permission.cache', NULL),
(958, 1727172996, 'cache_miss', 'spatie.permission.cache', NULL),
(959, 1727172996, 'cache_miss', 'spatie.permission.cache', NULL),
(960, 1727172996, 'cache_miss', 'spatie.permission.cache', NULL),
(961, 1727173201, 'cache_miss', 'spatie.permission.cache', NULL),
(962, 1727173201, 'cache_miss', 'spatie.permission.cache', NULL),
(963, 1727173201, 'cache_miss', 'spatie.permission.cache', NULL),
(964, 1727173201, 'cache_miss', 'spatie.permission.cache', NULL),
(965, 1727173537, 'cache_miss', 'spatie.permission.cache', NULL),
(966, 1727173539, 'cache_hit', 'spatie.permission.cache', NULL),
(967, 1727173539, 'cache_hit', 'spatie.permission.cache', NULL),
(968, 1727173549, 'cache_hit', 'spatie.permission.cache', NULL),
(969, 1727174173, 'cache_hit', 'spatie.permission.cache', NULL),
(970, 1727174177, 'cache_hit', 'spatie.permission.cache', NULL),
(971, 1727174320, 'cache_hit', 'spatie.permission.cache', NULL),
(972, 1727174347, 'cache_hit', 'spatie.permission.cache', NULL),
(973, 1727174350, 'cache_hit', 'spatie.permission.cache', NULL),
(974, 1727174459, 'cache_hit', 'spatie.permission.cache', NULL),
(975, 1727174527, 'cache_hit', 'spatie.permission.cache', NULL),
(976, 1727174564, 'cache_hit', 'spatie.permission.cache', NULL),
(977, 1727174566, 'cache_hit', 'spatie.permission.cache', NULL),
(978, 1727174567, 'cache_hit', 'spatie.permission.cache', NULL),
(979, 1727174568, 'cache_hit', 'spatie.permission.cache', NULL),
(980, 1727174568, 'cache_hit', 'spatie.permission.cache', NULL),
(981, 1727174569, 'cache_hit', 'spatie.permission.cache', NULL),
(982, 1727174605, 'cache_hit', 'spatie.permission.cache', NULL),
(983, 1727174609, 'cache_hit', 'spatie.permission.cache', NULL),
(984, 1727174618, 'cache_hit', 'spatie.permission.cache', NULL),
(985, 1727174621, 'cache_hit', 'spatie.permission.cache', NULL),
(986, 1727174855, 'cache_hit', 'spatie.permission.cache', NULL),
(987, 1727174857, 'cache_hit', 'spatie.permission.cache', NULL),
(988, 1727174862, 'cache_hit', 'spatie.permission.cache', NULL),
(989, 1727174865, 'cache_hit', 'spatie.permission.cache', NULL),
(990, 1727174867, 'cache_hit', 'spatie.permission.cache', NULL),
(991, 1727174870, 'cache_hit', 'spatie.permission.cache', NULL),
(992, 1727174881, 'cache_hit', 'spatie.permission.cache', NULL),
(993, 1727174884, 'cache_hit', 'spatie.permission.cache', NULL),
(994, 1727174886, 'cache_hit', 'spatie.permission.cache', NULL),
(995, 1727174890, 'cache_hit', 'spatie.permission.cache', NULL),
(996, 1727174892, 'cache_hit', 'spatie.permission.cache', NULL),
(997, 1727174909, 'cache_hit', 'spatie.permission.cache', NULL),
(998, 1727174989, 'cache_hit', 'spatie.permission.cache', NULL),
(999, 1727174992, 'cache_hit', 'spatie.permission.cache', NULL),
(1000, 1727174994, 'cache_hit', 'spatie.permission.cache', NULL),
(1001, 1727174996, 'cache_hit', 'spatie.permission.cache', NULL),
(1002, 1727174998, 'cache_hit', 'spatie.permission.cache', NULL),
(1003, 1727174998, 'cache_hit', 'spatie.permission.cache', NULL),
(1004, 1727175003, 'cache_hit', 'spatie.permission.cache', NULL),
(1005, 1727175022, 'slow_request', '[\"GET\",\"\\/admin\\/solution\\/category\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController@index\"]', 1723),
(1006, 1727175022, 'cache_hit', 'spatie.permission.cache', NULL),
(1007, 1727175022, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController.php:24\"]', 1727175022),
(1008, 1727175493, 'cache_hit', 'spatie.permission.cache', NULL),
(1009, 1727175493, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\solution\\\\category\\\\index.blade.php:219\"]', 1727175493),
(1010, 1727175567, 'cache_hit', 'spatie.permission.cache', NULL),
(1011, 1727175584, 'cache_hit', 'spatie.permission.cache', NULL),
(1012, 1727175586, 'cache_hit', 'spatie.permission.cache', NULL),
(1013, 1727175586, 'cache_hit', 'spatie.permission.cache', NULL),
(1014, 1727175589, 'cache_hit', 'spatie.permission.cache', NULL),
(1015, 1727175610, 'cache_hit', 'spatie.permission.cache', NULL),
(1016, 1727175648, 'cache_hit', 'spatie.permission.cache', NULL),
(1017, 1727175662, 'cache_hit', 'spatie.permission.cache', NULL),
(1018, 1727175665, 'cache_hit', 'spatie.permission.cache', NULL),
(1019, 1727175667, 'cache_hit', 'spatie.permission.cache', NULL),
(1020, 1727175668, 'cache_hit', 'spatie.permission.cache', NULL),
(1021, 1727175670, 'cache_hit', 'spatie.permission.cache', NULL),
(1022, 1727175674, 'cache_hit', 'spatie.permission.cache', NULL),
(1023, 1727175677, 'cache_hit', 'spatie.permission.cache', NULL),
(1024, 1727175680, 'cache_hit', 'spatie.permission.cache', NULL),
(1025, 1727175683, 'cache_hit', 'spatie.permission.cache', NULL),
(1026, 1727175694, 'cache_hit', 'spatie.permission.cache', NULL),
(1027, 1727175697, 'slow_request', '[\"GET\",\"\\/admin\\/solution\\/category\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\CategoryController@index\"]', 1046),
(1028, 1727175697, 'cache_hit', 'spatie.permission.cache', NULL),
(1029, 1727175701, 'cache_hit', 'spatie.permission.cache', NULL),
(1030, 1727175704, 'cache_hit', 'spatie.permission.cache', NULL),
(1031, 1727176122, 'cache_hit', 'spatie.permission.cache', NULL),
(1032, 1727176124, 'cache_hit', 'spatie.permission.cache', NULL),
(1033, 1727176124, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\SubCategoryController.php:29\"]', 1727176124),
(1034, 1727176194, 'cache_hit', 'spatie.permission.cache', NULL),
(1035, 1727176194, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Solution\\\\SubCategoryController.php:29\"]', 1727176194),
(1036, 1727176249, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2024_09_24_160215_create_solution_categories_table.php:14\"]', 1727176249),
(1037, 1727176466, 'cache_hit', 'spatie.permission.cache', NULL),
(1038, 1727176472, 'cache_hit', 'spatie.permission.cache', NULL),
(1039, 1727176477, 'cache_hit', 'spatie.permission.cache', NULL),
(1040, 1727176482, 'cache_hit', 'spatie.permission.cache', NULL),
(1041, 1727176508, 'cache_hit', 'spatie.permission.cache', NULL),
(1042, 1727176525, 'cache_hit', 'spatie.permission.cache', NULL),
(1043, 1727176530, 'cache_hit', 'spatie.permission.cache', NULL),
(1044, 1727176533, 'cache_hit', 'spatie.permission.cache', NULL),
(1045, 1727176537, 'cache_hit', 'spatie.permission.cache', NULL),
(1046, 1727176540, 'cache_hit', 'spatie.permission.cache', NULL),
(1047, 1727176542, 'cache_hit', 'spatie.permission.cache', NULL),
(1048, 1727176542, 'cache_hit', 'spatie.permission.cache', NULL),
(1049, 1727176546, 'cache_hit', 'spatie.permission.cache', NULL),
(1050, 1727176550, 'cache_hit', 'spatie.permission.cache', NULL),
(1051, 1727176553, 'cache_hit', 'spatie.permission.cache', NULL),
(1052, 1727176562, 'cache_hit', 'spatie.permission.cache', NULL),
(1053, 1727176565, 'cache_hit', 'spatie.permission.cache', NULL),
(1054, 1727176568, 'cache_hit', 'spatie.permission.cache', NULL),
(1055, 1727176575, 'cache_hit', 'spatie.permission.cache', NULL),
(1056, 1727176577, 'cache_hit', 'spatie.permission.cache', NULL),
(1057, 1727176581, 'cache_hit', 'spatie.permission.cache', NULL),
(1058, 1727176582, 'cache_hit', 'spatie.permission.cache', NULL),
(1059, 1727176583, 'cache_hit', 'spatie.permission.cache', NULL),
(1060, 1727176586, 'cache_hit', 'spatie.permission.cache', NULL),
(1061, 1727176589, 'cache_hit', 'spatie.permission.cache', NULL),
(1062, 1727177208, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 1727177208),
(1063, 1727177232, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 1727177232),
(1064, 1727177309, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 1727177309),
(1065, 1727243251, 'slow_request', '[\"GET\",\"\\/\",\"App\\\\Http\\\\Controllers\\\\FrontendControllers\\\\HomeController\"]', 1299),
(1066, 1727243252, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 1727243252),
(1067, 1727243287, 'exception', '[\"Exception\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Collections\\\\Traits\\\\EnumeratesValues.php:1011\"]', 1727243287),
(1068, 1727244024, 'cache_miss', 'spatie.permission.cache', NULL),
(1069, 1727244024, 'cache_miss', 'spatie.permission.cache', NULL),
(1070, 1727244024, 'cache_miss', 'spatie.permission.cache', NULL),
(1071, 1727244024, 'cache_miss', 'spatie.permission.cache', NULL),
(1072, 1727244024, 'cache_miss', 'spatie.permission.cache', NULL),
(1073, 1727244024, 'cache_miss', 'spatie.permission.cache', NULL),
(1074, 1727244024, 'cache_miss', 'spatie.permission.cache', NULL),
(1075, 1727244024, 'cache_miss', 'spatie.permission.cache', NULL),
(1076, 1727244137, 'cache_miss', 'spatie.permission.cache', NULL),
(1077, 1727244140, 'cache_hit', 'spatie.permission.cache', NULL),
(1078, 1727244141, 'cache_hit', 'spatie.permission.cache', NULL),
(1079, 1727244142, 'cache_hit', 'spatie.permission.cache', NULL),
(1080, 1727244277, 'cache_hit', 'spatie.permission.cache', NULL),
(1081, 1727255312, 'cache_miss', 'spatie.permission.cache', NULL),
(1082, 1727255312, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Support\\\\ParentCategoryController.php:30\"]', 1727255312),
(1083, 1727255671, 'cache_hit', 'spatie.permission.cache', NULL),
(1084, 1727255671, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\Admin\\\\Support\\\\ParentCategoryController.php:30\"]', 1727255671),
(1085, 1727255718, 'cache_hit', 'spatie.permission.cache', NULL),
(1086, 1727255848, 'cache_hit', 'spatie.permission.cache', NULL),
(1087, 1727255854, 'cache_hit', 'spatie.permission.cache', NULL),
(1088, 1727255857, 'cache_hit', 'spatie.permission.cache', NULL),
(1089, 1727255859, 'cache_hit', 'spatie.permission.cache', NULL),
(1090, 1727255861, 'cache_hit', 'spatie.permission.cache', NULL),
(1091, 1727255933, 'cache_hit', 'spatie.permission.cache', NULL),
(1092, 1727255939, 'cache_hit', 'spatie.permission.cache', NULL),
(1093, 1727255943, 'cache_hit', 'spatie.permission.cache', NULL),
(1094, 1727256120, 'cache_hit', 'spatie.permission.cache', NULL),
(1095, 1727256124, 'cache_hit', 'spatie.permission.cache', NULL),
(1096, 1727256127, 'cache_hit', 'spatie.permission.cache', NULL),
(1097, 1727256140, 'cache_hit', 'spatie.permission.cache', NULL),
(1098, 1727256141, 'cache_hit', 'spatie.permission.cache', NULL),
(1099, 1727256142, 'cache_hit', 'spatie.permission.cache', NULL),
(1100, 1727256152, 'cache_hit', 'spatie.permission.cache', NULL),
(1101, 1727256153, 'cache_hit', 'spatie.permission.cache', NULL),
(1102, 1727256157, 'cache_hit', 'spatie.permission.cache', NULL),
(1103, 1727256160, 'cache_hit', 'spatie.permission.cache', NULL),
(1104, 1727256162, 'cache_hit', 'spatie.permission.cache', NULL),
(1105, 1727256165, 'cache_hit', 'spatie.permission.cache', NULL),
(1106, 1727256168, 'cache_hit', 'spatie.permission.cache', NULL),
(1107, 1727256188, 'cache_hit', 'spatie.permission.cache', NULL),
(1108, 1727256191, 'cache_hit', 'spatie.permission.cache', NULL),
(1109, 1727256195, 'cache_hit', 'spatie.permission.cache', NULL),
(1110, 1727256198, 'cache_hit', 'spatie.permission.cache', NULL),
(1111, 1727256385, 'cache_hit', 'spatie.permission.cache', NULL),
(1112, 1727256386, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\backend\\\\blade\\\\support\\\\category\\\\index.blade.php:219\"]', 1727256386),
(1113, 1727256426, 'cache_hit', 'spatie.permission.cache', NULL),
(1114, 1727256480, 'cache_hit', 'spatie.permission.cache', NULL),
(1115, 1727256486, 'cache_hit', 'spatie.permission.cache', NULL),
(1116, 1727256486, 'cache_hit', 'spatie.permission.cache', NULL),
(1117, 1727256489, 'cache_hit', 'spatie.permission.cache', NULL),
(1118, 1727256502, 'cache_hit', 'spatie.permission.cache', NULL),
(1119, 1727256506, 'cache_hit', 'spatie.permission.cache', NULL),
(1120, 1727256511, 'cache_hit', 'spatie.permission.cache', NULL),
(1121, 1727256568, 'cache_hit', 'spatie.permission.cache', NULL),
(1122, 1727256569, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 1727256569),
(1123, 1727256570, 'cache_hit', 'spatie.permission.cache', NULL),
(1124, 1727256570, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 1727256570),
(1125, 1727256572, 'cache_hit', 'spatie.permission.cache', NULL),
(1126, 1727256578, 'cache_hit', 'spatie.permission.cache', NULL),
(1127, 1727256578, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 1727256578),
(1128, 1727256588, 'cache_hit', 'spatie.permission.cache', NULL),
(1129, 1727256588, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 1727256588),
(1130, 1727256720, 'cache_hit', 'spatie.permission.cache', NULL),
(1131, 1727256720, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 1727256720),
(1132, 1727256805, 'cache_hit', 'spatie.permission.cache', NULL),
(1133, 1727256805, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:50\"]', 1727256805),
(1134, 1727256978, 'cache_hit', 'spatie.permission.cache', NULL),
(1135, 1727256978, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Support\\\\SupportCategoryStoreRequest.php:52\"]', 1727256978),
(1136, 1727257216, 'cache_hit', 'spatie.permission.cache', NULL),
(1137, 1727257230, 'cache_hit', 'spatie.permission.cache', NULL),
(1138, 1727257234, 'cache_hit', 'spatie.permission.cache', NULL),
(1139, 1727257237, 'cache_hit', 'spatie.permission.cache', NULL),
(1140, 1727257271, 'cache_hit', 'spatie.permission.cache', NULL),
(1141, 1727257280, 'cache_hit', 'spatie.permission.cache', NULL),
(1142, 1727257283, 'cache_hit', 'spatie.permission.cache', NULL),
(1143, 1727257286, 'cache_hit', 'spatie.permission.cache', NULL),
(1144, 1727257291, 'cache_hit', 'spatie.permission.cache', NULL),
(1145, 1727257293, 'cache_hit', 'spatie.permission.cache', NULL),
(1146, 1727257648, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_desktop.blade.php:72\"]', 1727257648),
(1147, 1727257976, 'exception', '[\"Illuminate\\\\Database\\\\Eloquent\\\\RelationNotFoundException\",\"app\\\\Http\\\\Controllers\\\\FrontendControllers\\\\CategoryDetailsContorller.php:48\"]', 1727257976),
(1148, 1727258044, 'exception', '[\"Error\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\Categoryresource.php:20\"]', 1727258044),
(1149, 1727258055, 'exception', '[\"Error\",\"app\\\\Http\\\\Resources\\\\Frontend\\\\Categoryresource.php:20\"]', 1727258055),
(1150, 1727258432, 'cache_hit', 'spatie.permission.cache', NULL),
(1151, 1727258563, 'cache_hit', 'spatie.permission.cache', NULL),
(1152, 1727258572, 'cache_hit', 'spatie.permission.cache', NULL),
(1153, 1727258579, 'cache_hit', 'spatie.permission.cache', NULL),
(1154, 1727258596, 'cache_hit', 'spatie.permission.cache', NULL),
(1155, 1727258600, 'cache_hit', 'spatie.permission.cache', NULL),
(1156, 1727258617, 'cache_hit', 'spatie.permission.cache', NULL),
(1157, 1727258636, 'cache_hit', 'spatie.permission.cache', NULL),
(1158, 1727258809, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\layouts\\\\nav\\\\menu_mobile.blade.php:93\"]', 1727258809),
(1159, 1727328212, 'cache_miss', 'spatie.permission.cache', NULL),
(1160, 1727332356, 'cache_miss', 'spatie.permission.cache', NULL),
(1161, 1727332356, 'cache_miss', 'spatie.permission.cache', NULL),
(1162, 1727332356, 'cache_miss', 'spatie.permission.cache', NULL),
(1163, 1727332356, 'cache_miss', 'spatie.permission.cache', NULL),
(1164, 1727332356, 'cache_miss', 'spatie.permission.cache', NULL),
(1165, 1727332356, 'cache_miss', 'spatie.permission.cache', NULL),
(1166, 1727332356, 'cache_miss', 'spatie.permission.cache', NULL),
(1167, 1727332356, 'cache_miss', 'spatie.permission.cache', NULL),
(1168, 1727585833, 'slow_request', '[\"GET\",\"\\/admin\\/dashboard\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@index\"]', 1812),
(1169, 1727589314, 'cache_miss', 'spatie.permission.cache', NULL),
(1170, 1727589319, 'cache_hit', 'spatie.permission.cache', NULL),
(1171, 1727686205, 'slow_request', '[\"GET\",\"\\/admin\\/dashboard\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@index\"]', 1262),
(1172, 1727686205, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 1727686205),
(1173, 1727686230, 'slow_request', '[\"GET\",\"\\/admin\\/dashboard\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Auth\\\\AdminLoginController@index\"]', 2032),
(1174, 1727686230, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:479\"]', 1727686230),
(1175, 1727686280, 'cache_miss', 'spatie.permission.cache', NULL),
(1176, 1727686281, 'cache_hit', 'spatie.permission.cache', NULL),
(1177, 1727686282, 'cache_hit', 'spatie.permission.cache', NULL),
(1178, 1727686352, 'cache_hit', 'spatie.permission.cache', NULL),
(1179, 1727686750, 'cache_hit', 'spatie.permission.cache', NULL),
(1180, 1727686753, 'cache_hit', 'spatie.permission.cache', NULL),
(1181, 1727687241, 'cache_hit', 'spatie.permission.cache', NULL),
(1182, 1727687247, 'cache_hit', 'spatie.permission.cache', NULL),
(1183, 1727687254, 'cache_hit', 'spatie.permission.cache', NULL),
(1184, 1727687255, 'cache_hit', 'spatie.permission.cache', NULL),
(1185, 1727687258, 'cache_hit', 'spatie.permission.cache', NULL),
(1186, 1727687258, 'cache_hit', 'spatie.permission.cache', NULL),
(1187, 1727687260, 'cache_hit', 'spatie.permission.cache', NULL),
(1188, 1727687290, 'cache_hit', 'spatie.permission.cache', NULL),
(1189, 1727687428, 'cache_hit', 'spatie.permission.cache', NULL),
(1190, 1727693743, 'cache_miss', 'spatie.permission.cache', NULL),
(1191, 1727693747, 'cache_hit', 'spatie.permission.cache', NULL),
(1192, 1727693785, 'cache_hit', 'spatie.permission.cache', NULL),
(1193, 1727693789, 'cache_hit', 'spatie.permission.cache', NULL),
(1194, 1727693790, 'cache_hit', 'spatie.permission.cache', NULL),
(1195, 1727693791, 'cache_hit', 'spatie.permission.cache', NULL),
(1196, 1727693795, 'cache_hit', 'spatie.permission.cache', NULL),
(1197, 1727694099, 'cache_hit', 'spatie.permission.cache', NULL),
(1198, 1727694102, 'cache_hit', 'spatie.permission.cache', NULL),
(1199, 1727694121, 'cache_hit', 'spatie.permission.cache', NULL),
(1200, 1727694124, 'cache_hit', 'spatie.permission.cache', NULL),
(1201, 1727694128, 'cache_hit', 'spatie.permission.cache', NULL),
(1202, 1727694129, 'cache_hit', 'spatie.permission.cache', NULL),
(1203, 1727694135, 'cache_hit', 'spatie.permission.cache', NULL),
(1204, 1727694139, 'cache_hit', 'spatie.permission.cache', NULL),
(1205, 1727694139, 'cache_hit', 'spatie.permission.cache', NULL),
(1206, 1727694141, 'cache_hit', 'spatie.permission.cache', NULL),
(1207, 1727694147, 'cache_hit', 'spatie.permission.cache', NULL),
(1208, 1727694633, 'cache_hit', 'spatie.permission.cache', NULL),
(1209, 1727694654, 'cache_hit', 'spatie.permission.cache', NULL),
(1210, 1727694675, 'cache_hit', 'spatie.permission.cache', NULL),
(1211, 1727694708, 'cache_hit', 'spatie.permission.cache', NULL),
(1212, 1727758721, 'cache_miss', 'spatie.permission.cache', NULL),
(1213, 1727759225, 'cache_hit', 'spatie.permission.cache', NULL),
(1214, 1727759485, 'cache_hit', 'spatie.permission.cache', NULL),
(1215, 1727759502, 'cache_hit', 'spatie.permission.cache', NULL),
(1216, 1727759523, 'cache_hit', 'spatie.permission.cache', NULL),
(1217, 1727777828, 'cache_miss', 'spatie.permission.cache', NULL),
(1218, 1727777857, 'cache_hit', 'spatie.permission.cache', NULL),
(1219, 1727779326, 'cache_hit', 'spatie.permission.cache', NULL),
(1220, 1727779507, 'cache_hit', 'spatie.permission.cache', NULL),
(1221, 1727779573, 'cache_hit', 'spatie.permission.cache', NULL),
(1222, 1727779573, 'cache_hit', 'spatie.permission.cache', NULL),
(1223, 1727779577, 'cache_hit', 'spatie.permission.cache', NULL),
(1224, 1727779788, 'cache_hit', 'spatie.permission.cache', NULL),
(1225, 1727779788, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductStoreRequest.php:93\"]', 1727779788),
(1226, 1727779798, 'cache_hit', 'spatie.permission.cache', NULL),
(1227, 1727779800, 'cache_hit', 'spatie.permission.cache', NULL),
(1228, 1727779803, 'cache_hit', 'spatie.permission.cache', NULL),
(1229, 1727779807, 'cache_hit', 'spatie.permission.cache', NULL),
(1230, 1727779915, 'cache_hit', 'spatie.permission.cache', NULL),
(1231, 1727779915, 'cache_hit', 'spatie.permission.cache', NULL),
(1232, 1727779932, 'cache_hit', 'spatie.permission.cache', NULL),
(1233, 1727779932, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:91\"]', 1727779932),
(1234, 1727779933, 'cache_hit', 'spatie.permission.cache', NULL),
(1235, 1727779935, 'cache_hit', 'spatie.permission.cache', NULL),
(1236, 1727779959, 'cache_hit', 'spatie.permission.cache', NULL),
(1237, 1727779962, 'cache_hit', 'spatie.permission.cache', NULL),
(1238, 1727779965, 'cache_hit', 'spatie.permission.cache', NULL),
(1239, 1727779965, 'cache_hit', 'spatie.permission.cache', NULL),
(1240, 1727779972, 'cache_hit', 'spatie.permission.cache', NULL),
(1241, 1727779972, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:91\"]', 1727779972),
(1242, 1727779975, 'cache_hit', 'spatie.permission.cache', NULL),
(1243, 1727779976, 'cache_hit', 'spatie.permission.cache', NULL),
(1244, 1727779986, 'cache_hit', 'spatie.permission.cache', NULL),
(1245, 1727779988, 'cache_hit', 'spatie.permission.cache', NULL),
(1246, 1727780134, 'cache_hit', 'spatie.permission.cache', NULL),
(1247, 1727780134, 'exception', '[\"Intervention\\\\Image\\\\Exceptions\\\\RuntimeException\",\"app\\\\Http\\\\Requests\\\\Admin\\\\Product\\\\ProductUpdateRequest.php:90\"]', 1727780134),
(1248, 1727780188, 'cache_hit', 'spatie.permission.cache', NULL),
(1249, 1727780190, 'cache_hit', 'spatie.permission.cache', NULL),
(1250, 1727780194, 'cache_hit', 'spatie.permission.cache', NULL),
(1251, 1727780204, 'cache_hit', 'spatie.permission.cache', NULL),
(1252, 1727780204, 'cache_hit', 'spatie.permission.cache', NULL),
(1253, 1727780210, 'cache_hit', 'spatie.permission.cache', NULL),
(1254, 1727780213, 'cache_hit', 'spatie.permission.cache', NULL),
(1255, 1727780230, 'cache_hit', 'spatie.permission.cache', NULL),
(1256, 1727780232, 'cache_hit', 'spatie.permission.cache', NULL),
(1257, 1727780242, 'cache_hit', 'spatie.permission.cache', NULL),
(1258, 1727780242, 'cache_hit', 'spatie.permission.cache', NULL),
(1259, 1727780246, 'cache_hit', 'spatie.permission.cache', NULL),
(1260, 1727780341, 'cache_hit', 'spatie.permission.cache', NULL),
(1261, 1727780343, 'cache_hit', 'spatie.permission.cache', NULL),
(1262, 1727780477, 'cache_hit', 'spatie.permission.cache', NULL),
(1263, 1727780480, 'cache_hit', 'spatie.permission.cache', NULL),
(1264, 1727780486, 'cache_hit', 'spatie.permission.cache', NULL),
(1265, 1727780494, 'cache_hit', 'spatie.permission.cache', NULL),
(1266, 1727780496, 'cache_hit', 'spatie.permission.cache', NULL),
(1267, 1727780538, 'cache_hit', 'spatie.permission.cache', NULL),
(1268, 1727780541, 'cache_hit', 'spatie.permission.cache', NULL),
(1269, 1727780576, 'cache_hit', 'spatie.permission.cache', NULL),
(1270, 1727780578, 'cache_hit', 'spatie.permission.cache', NULL),
(1271, 1727780579, 'cache_hit', 'spatie.permission.cache', NULL),
(1272, 1727780614, 'cache_hit', 'spatie.permission.cache', NULL),
(1273, 1727780615, 'cache_hit', 'spatie.permission.cache', NULL),
(1274, 1727780619, 'cache_hit', 'spatie.permission.cache', NULL),
(1275, 1727780621, 'cache_hit', 'spatie.permission.cache', NULL),
(1276, 1727780743, 'cache_hit', 'spatie.permission.cache', NULL),
(1277, 1727780744, 'cache_hit', 'spatie.permission.cache', NULL),
(1278, 1727780830, 'cache_hit', 'spatie.permission.cache', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pulse_values`
--

CREATE TABLE `pulse_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `key` mediumtext NOT NULL,
  `key_hash` binary(16) GENERATED ALWAYS AS (unhex(md5(`key`))) VIRTUAL,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin', '2023-12-27 21:23:43', '2023-12-27 21:23:43'),
(2, 'Admin', 'admin', '2023-12-28 04:26:30', '2023-12-28 04:26:30'),
(3, 'Test', 'admin', '2023-12-31 10:30:30', '2023-12-31 10:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8WMZS3uX1MJKxy28Kb7AV5klfhIVauDhwhIZf69F', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicjlkWFY3bG96QnlHM0NFUWFoN2ZuUVNxU1IyWVhPMzVCbERieHRESiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9yb2xlIjt9czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1706595222),
('jr5swHDyeBRESfJAP0KvRLdh4CL3DyUJEaY2NqRB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNTVTUUZTWEU0U3g4Y1Fkb1ZFTmFycjJheWxNdWIwMGhZVjg1NHVsQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wdWxzZSI7fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1706596037);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size_name` varchar(255) NOT NULL,
  `size_status` tinyint(1) NOT NULL DEFAULT 1,
  `size_create_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size_name`, `size_status`, `size_create_by`, `created_at`, `updated_at`) VALUES
(1, '21.8', 1, 1, '2024-09-23 03:53:25', '2024-09-23 03:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `solution_categories`
--

CREATE TABLE `solution_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) DEFAULT NULL,
  `category_status` tinyint(1) NOT NULL DEFAULT 1,
  `category_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Not Deleted 1=Deleted',
  `category_added_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `solution_categories`
--

INSERT INTO `solution_categories` (`id`, `parent_category_id`, `category_name`, `category_image`, `category_status`, `category_delete`, `category_added_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Solutions by Industry', '', 1, 0, 1, '2024-09-24 11:01:02', '2024-09-24 11:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `solution_parent_categories`
--

CREATE TABLE `solution_parent_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_category_name` varchar(255) NOT NULL,
  `parent_category_image` varchar(255) DEFAULT NULL,
  `parent_category_status` tinyint(1) NOT NULL DEFAULT 1,
  `parent_category_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Not Deleted 1=Deleted',
  `parent_category_added_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `solution_parent_categories`
--

INSERT INTO `solution_parent_categories` (`id`, `parent_category_name`, `parent_category_image`, `parent_category_status`, `parent_category_delete`, `parent_category_added_by`, `created_at`, `updated_at`) VALUES
(1, 'All Solutions', '', 1, 0, 1, '2024-09-24 10:43:38', '2024-09-24 10:47:50');

-- --------------------------------------------------------

--
-- Table structure for table `solution_sub_categories`
--

CREATE TABLE `solution_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_name` varchar(255) NOT NULL,
  `sub_category_image` varchar(255) DEFAULT NULL,
  `sub_category_status` tinyint(1) NOT NULL DEFAULT 1,
  `sub_category_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Not Deleted 1=Deleted',
  `sub_category_added_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `solution_sub_categories`
--

INSERT INTO `solution_sub_categories` (`id`, `parent_category_id`, `category_id`, `sub_category_name`, `sub_category_image`, `sub_category_status`, `sub_category_delete`, `sub_category_added_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Buildings', '', 1, 0, 1, '2024-09-24 11:15:37', '2024-09-24 11:16:05');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_name` varchar(255) NOT NULL,
  `sub_category_image` varchar(255) DEFAULT NULL,
  `sub_category_status` tinyint(1) NOT NULL DEFAULT 1,
  `sub_category_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Not Deleted 1=Deleted',
  `sub_category_added_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_category_id`, `category_id`, `sub_category_name`, `sub_category_image`, `sub_category_status`, `sub_category_delete`, `sub_category_added_by`, `created_at`, `updated_at`) VALUES
(1, 2, 9, 'Turbo HD Cameras with ColorVu', '', 1, 0, 1, '2024-09-23 04:58:50', '2024-09-23 04:58:50'),
(2, 2, 9, 'Value Series', '', 1, 0, 1, '2024-09-23 04:59:33', '2024-09-23 04:59:33'),
(3, 2, 9, 'Pro Series', '', 1, 0, 1, '2024-09-23 04:59:50', '2024-09-23 04:59:50'),
(4, 2, 9, 'Ultra Series', '', 1, 0, 1, '2024-09-23 05:00:34', '2024-09-23 05:00:34'),
(5, 2, 9, 'IOT Series', '', 1, 0, 1, '2024-09-23 05:05:32', '2024-09-23 05:05:32'),
(6, 2, 10, 'eDVR Series', '', 1, 0, 1, '2024-09-23 05:06:15', '2024-09-23 05:06:15'),
(7, 2, 10, 'Pro Series With AcuSense', '', 1, 0, 1, '2024-09-23 05:09:08', '2024-09-23 05:09:08'),
(8, 2, 10, 'Value Series', '', 1, 0, 1, '2024-09-23 05:10:15', '2024-09-23 05:10:15'),
(9, 2, 10, 'Ultra Series', '', 1, 0, 1, '2024-09-23 05:11:12', '2024-09-23 05:11:12'),
(10, 2, 10, 'Special Series', '', 1, 0, 1, '2024-09-23 05:12:08', '2024-09-23 05:12:08'),
(11, 2, 10, 'Back-end Accessories', '', 1, 0, 1, '2024-09-23 05:24:47', '2024-09-23 05:24:47'),
(12, 2, 11, 'Pro Series', '', 1, 0, 1, '2024-09-23 05:25:08', '2024-09-23 05:25:08'),
(13, 1, 1, 'Pro Series All', '', 1, 0, 1, '2024-09-23 05:26:52', '2024-09-23 05:26:52'),
(14, 1, 1, 'Pro Series With AcuSense', '', 1, 0, 1, '2024-09-23 05:27:10', '2024-09-23 05:27:10'),
(15, 1, 1, 'Pro Series with ColorVu', '', 1, 0, 1, '2024-09-23 05:27:27', '2024-09-23 05:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `support_categories`
--

CREATE TABLE `support_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) DEFAULT NULL,
  `category_status` tinyint(1) NOT NULL DEFAULT 1,
  `category_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Not Deleted 1=Deleted',
  `category_added_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_categories`
--

INSERT INTO `support_categories` (`id`, `parent_category_id`, `category_name`, `category_image`, `category_status`, `category_delete`, `category_added_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Software', '', 1, 0, 1, '2024-09-25 09:40:53', '2024-09-25 09:40:53'),
(2, 1, 'Testu', '', 1, 1, 1, '2024-09-25 09:41:20', '2024-09-25 09:41:31'),
(3, 1, 'SDK', '', 1, 0, 1, '2024-09-25 10:02:43', '2024-09-25 10:02:43'),
(4, 1, 'Firmware', '', 1, 0, 1, '2024-09-25 10:02:52', '2024-09-25 10:02:52'),
(5, 2, 'Product Selectors & System Designers', '', 1, 0, 1, '2024-09-25 10:03:37', '2024-09-25 10:03:37'),
(6, 2, 'Installation & Maintenance Tools', '', 1, 0, 1, '2024-09-25 10:03:56', '2024-09-25 10:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `support_parent_categories`
--

CREATE TABLE `support_parent_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_category_name` varchar(255) NOT NULL,
  `parent_category_image` varchar(255) DEFAULT NULL,
  `parent_category_status` tinyint(1) NOT NULL DEFAULT 1,
  `parent_category_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Not Deleted 1=Deleted',
  `parent_category_added_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_parent_categories`
--

INSERT INTO `support_parent_categories` (`id`, `parent_category_name`, `parent_category_image`, `parent_category_status`, `parent_category_delete`, `parent_category_added_by`, `created_at`, `updated_at`) VALUES
(1, 'Download', '', 1, 0, 1, '2024-09-25 09:40:30', '2024-09-25 09:40:30'),
(2, 'Tools', '', 1, 0, 1, '2024-09-25 10:03:16', '2024-09-25 10:03:16');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_code` varchar(255) NOT NULL,
  `unit_name` varchar(255) NOT NULL,
  `base_unit` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `unit_status` tinyint(1) NOT NULL DEFAULT 0,
  `unit_created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_code`, `unit_name`, `base_unit`, `operator`, `operation_value`, `unit_status`, `unit_created_by`, `created_at`, `updated_at`) VALUES
(1, 'PC', 'Piece', NULL, NULL, 1, 1, '1', '2024-09-23 03:52:39', '2024-09-23 03:52:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=Inactive 1=Active',
  `delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Not Deleted 1=Deleted',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `username`, `image`, `email_verified_at`, `password`, `status`, `delete`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mUTASIM TEST', 'm@m.com', NULL, NULL, NULL, NULL, '$2y$12$UX1/99iM985uAjhHQ5DB4OnTsRDrfRNwtSOJnNhwUgPSvV5cmb8Sy', 1, 0, NULL, '2024-01-30 06:32:39', '2024-01-30 06:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=not deleted 1=deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `address`, `created_by`, `status`, `delete`, `created_at`, `updated_at`) VALUES
(1, 'Sumit Store', '12354698778', 'test@gmail.com', 'Test', 1, 1, 0, '2024-01-28 04:55:45', '2024-01-29 09:31:37'),
(2, 'Polin Store', '12354698779', 'test2@gmail.com', 'Test', 1, 1, 0, '2024-01-28 07:02:55', '2024-02-07 03:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_prices`
--

CREATE TABLE `warehouse_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Not Deleted and 1= Not Deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouse_prices`
--

INSERT INTO `warehouse_prices` (`id`, `product_id`, `warehouse_id`, `price`, `quantity`, `created_by`, `updated_by`, `delete`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 0, 7, 1, 1, 0, '2024-01-28 05:35:46', '2024-01-31 10:18:26'),
(2, 1, 1, 0, 4, 1, 1, 0, '2024-01-29 09:56:48', '2024-02-08 03:58:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adjustments_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `adjustments_created_by_foreign` (`created_by`),
  ADD KEY `adjustments_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_category_id_foreign` (`parent_category_id`),
  ADD KEY `categories_category_added_by_foreign` (`category_added_by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenances`
--
ALTER TABLE `maintenances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maintenances_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `parent_categories`
--
ALTER TABLE `parent_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_categories_parent_category_added_by_foreign` (`parent_category_added_by`);

--
-- Indexes for table `partner_categories`
--
ALTER TABLE `partner_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partner_categories_parent_category_id_foreign` (`parent_category_id`),
  ADD KEY `partner_categories_category_added_by_foreign` (`category_added_by`);

--
-- Indexes for table `partner_parent_categories`
--
ALTER TABLE `partner_parent_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partner_parent_categories_parent_category_added_by_foreign` (`parent_category_added_by`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_unit_id_foreign` (`unit_id`),
  ADD KEY `products_created_by_foreign` (`created_by`),
  ADD KEY `products_updated_by_foreign` (`updated_by`),
  ADD KEY `products_parent_category_id_foreign` (`parent_category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`),
  ADD KEY `product_variants_created_by_foreign` (`created_by`),
  ADD KEY `product_variants_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `pulse_aggregates`
--
ALTER TABLE `pulse_aggregates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pulse_aggregates_bucket_period_type_aggregate_key_hash_unique` (`bucket`,`period`,`type`,`aggregate`,`key_hash`),
  ADD KEY `pulse_aggregates_period_bucket_index` (`period`,`bucket`),
  ADD KEY `pulse_aggregates_type_index` (`type`),
  ADD KEY `pulse_aggregates_period_type_aggregate_bucket_index` (`period`,`type`,`aggregate`,`bucket`);

--
-- Indexes for table `pulse_entries`
--
ALTER TABLE `pulse_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pulse_entries_timestamp_index` (`timestamp`),
  ADD KEY `pulse_entries_type_index` (`type`),
  ADD KEY `pulse_entries_key_hash_index` (`key_hash`),
  ADD KEY `pulse_entries_timestamp_type_key_hash_value_index` (`timestamp`,`type`,`key_hash`,`value`);

--
-- Indexes for table `pulse_values`
--
ALTER TABLE `pulse_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pulse_values_type_key_hash_unique` (`type`,`key_hash`),
  ADD KEY `pulse_values_timestamp_index` (`timestamp`),
  ADD KEY `pulse_values_type_index` (`type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solution_categories`
--
ALTER TABLE `solution_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solution_parent_categories`
--
ALTER TABLE `solution_parent_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solution_parent_categories_parent_category_added_by_foreign` (`parent_category_added_by`);

--
-- Indexes for table `solution_sub_categories`
--
ALTER TABLE `solution_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solution_sub_categories_parent_category_id_foreign` (`parent_category_id`),
  ADD KEY `solution_sub_categories_category_id_foreign` (`category_id`),
  ADD KEY `solution_sub_categories_sub_category_added_by_foreign` (`sub_category_added_by`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_parent_category_id_foreign` (`parent_category_id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`),
  ADD KEY `sub_categories_sub_category_added_by_foreign` (`sub_category_added_by`);

--
-- Indexes for table `support_categories`
--
ALTER TABLE `support_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_categories_parent_category_id_foreign` (`parent_category_id`),
  ADD KEY `support_categories_category_added_by_foreign` (`category_added_by`);

--
-- Indexes for table `support_parent_categories`
--
ALTER TABLE `support_parent_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_parent_categories_parent_category_added_by_foreign` (`parent_category_added_by`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_created_by_foreign` (`created_by`);

--
-- Indexes for table `warehouse_prices`
--
ALTER TABLE `warehouse_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_prices_product_id_foreign` (`product_id`),
  ADD KEY `warehouse_prices_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `warehouse_prices_created_by_foreign` (`created_by`),
  ADD KEY `warehouse_prices_updated_by_foreign` (`updated_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `maintenances`
--
ALTER TABLE `maintenances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `parent_categories`
--
ALTER TABLE `parent_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `partner_categories`
--
ALTER TABLE `partner_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `partner_parent_categories`
--
ALTER TABLE `partner_parent_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pulse_aggregates`
--
ALTER TABLE `pulse_aggregates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5609;

--
-- AUTO_INCREMENT for table `pulse_entries`
--
ALTER TABLE `pulse_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1279;

--
-- AUTO_INCREMENT for table `pulse_values`
--
ALTER TABLE `pulse_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `solution_categories`
--
ALTER TABLE `solution_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `solution_parent_categories`
--
ALTER TABLE `solution_parent_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `solution_sub_categories`
--
ALTER TABLE `solution_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `support_categories`
--
ALTER TABLE `support_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `support_parent_categories`
--
ALTER TABLE `support_parent_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `warehouse_prices`
--
ALTER TABLE `warehouse_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD CONSTRAINT `adjustments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `adjustments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `adjustments_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_category_added_by_foreign` FOREIGN KEY (`category_added_by`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `categories_parent_category_id_foreign` FOREIGN KEY (`parent_category_id`) REFERENCES `parent_categories` (`id`);

--
-- Constraints for table `maintenances`
--
ALTER TABLE `maintenances`
  ADD CONSTRAINT `maintenances_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `parent_categories`
--
ALTER TABLE `parent_categories`
  ADD CONSTRAINT `parent_categories_parent_category_added_by_foreign` FOREIGN KEY (`parent_category_added_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `partner_categories`
--
ALTER TABLE `partner_categories`
  ADD CONSTRAINT `partner_categories_category_added_by_foreign` FOREIGN KEY (`category_added_by`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `partner_categories_parent_category_id_foreign` FOREIGN KEY (`parent_category_id`) REFERENCES `partner_parent_categories` (`id`);

--
-- Constraints for table `partner_parent_categories`
--
ALTER TABLE `partner_parent_categories`
  ADD CONSTRAINT `partner_parent_categories_parent_category_added_by_foreign` FOREIGN KEY (`parent_category_added_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `products_parent_category_id_foreign` FOREIGN KEY (`parent_category_id`) REFERENCES `parent_categories` (`id`),
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`),
  ADD CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`),
  ADD CONSTRAINT `products_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_variants_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `solution_parent_categories`
--
ALTER TABLE `solution_parent_categories`
  ADD CONSTRAINT `solution_parent_categories_parent_category_added_by_foreign` FOREIGN KEY (`parent_category_added_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `solution_sub_categories`
--
ALTER TABLE `solution_sub_categories`
  ADD CONSTRAINT `solution_sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `solution_categories` (`id`),
  ADD CONSTRAINT `solution_sub_categories_parent_category_id_foreign` FOREIGN KEY (`parent_category_id`) REFERENCES `solution_parent_categories` (`id`),
  ADD CONSTRAINT `solution_sub_categories_sub_category_added_by_foreign` FOREIGN KEY (`sub_category_added_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `sub_categories_parent_category_id_foreign` FOREIGN KEY (`parent_category_id`) REFERENCES `parent_categories` (`id`),
  ADD CONSTRAINT `sub_categories_sub_category_added_by_foreign` FOREIGN KEY (`sub_category_added_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `support_categories`
--
ALTER TABLE `support_categories`
  ADD CONSTRAINT `support_categories_category_added_by_foreign` FOREIGN KEY (`category_added_by`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `support_categories_parent_category_id_foreign` FOREIGN KEY (`parent_category_id`) REFERENCES `support_parent_categories` (`id`);

--
-- Constraints for table `support_parent_categories`
--
ALTER TABLE `support_parent_categories`
  ADD CONSTRAINT `support_parent_categories_parent_category_added_by_foreign` FOREIGN KEY (`parent_category_added_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD CONSTRAINT `warehouses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `warehouse_prices`
--
ALTER TABLE `warehouse_prices`
  ADD CONSTRAINT `warehouse_prices_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `warehouse_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `warehouse_prices_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `warehouse_prices_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
