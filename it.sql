-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2023 at 01:22 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `quantity`, `color`, `size`, `user_id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(35, 12, '1', 'Gold', '40cm', 2, 'salwa yehya', '0778079514', 'Jorden', NULL, NULL),
(36, 8, '1', 'Gold', '180cm *80cm', 2, 'salwa yehya', '0778079514', 'Jorden', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'OUR MADE', 'upload/category/1763010385433874.jpg', NULL, '2023-04-12 19:15:24'),
(8, 'MEN\'S', 'upload/category/1763010368367895.jpg', NULL, '2023-04-12 19:15:07'),
(9, 'WOMEN\'S', 'upload/category/1763010184649660.jpg', NULL, '2023-04-12 19:12:12'),
(10, 'BRAND\'S', 'upload/category/1763010276976924.jpg', NULL, '2023-04-12 19:13:40');

-- --------------------------------------------------------

--
-- Table structure for table `checkouts`
--

CREATE TABLE `checkouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_month` varchar(255) NOT NULL,
  `order_year` varchar(255) NOT NULL,
  `delivered_date` varchar(255) DEFAULT NULL,
  `cancel_date` varchar(255) DEFAULT NULL,
  `return_date` varchar(255) DEFAULT NULL,
  `return_reason` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `checkouts`
--

INSERT INTO `checkouts` (`id`, `user_id`, `state_id`, `name`, `email`, `phone`, `country`, `city`, `notes`, `amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `delivered_date`, `cancel_date`, `return_date`, `return_reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'salwa yehya', 'user@gmail.com', '0778079514', '1', '1', 'test', 84.00, '1', 'EOS27427597', '29 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, 'pending', '2023-03-29 20:37:35', NULL),
(2, 2, 1, 'salwa yehya', 'user@gmail.com', '0778079514', NULL, NULL, NULL, 70.00, '1', 'EOS39255402', '31 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, 'deliverd', '2023-03-30 22:01:14', '2023-03-31 20:48:25'),
(3, 2, 1, 'salwa yehya', 'user@gmail.com', '0778079514', '1', '1', 'test', 60.00, '1', 'EOS42466768', '31 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, 'pending', '2023-03-30 22:27:43', NULL),
(4, 2, 1, 'salwa yehya', 'user@gmail.com', '0778079514', NULL, NULL, NULL, 65.00, '1', 'EOS31681822', '31 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, 'pending', '2023-03-30 22:33:29', NULL),
(5, 2, 1, 'salwa yehya', 'user@gmail.com', '0778079514', '1', '1', NULL, 199.00, '1', 'EOS21872846', '31 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, 'pending', '2023-03-30 22:51:21', NULL),
(6, 16, 1, 'salwatest111', 'salwatest111@gmail.com', '077889944', '1', '1', 'test', 45.00, '1', 'EOS80774706', '01 April 2023', 'April', '2023', NULL, NULL, NULL, NULL, 'deliverd', '2023-04-01 08:55:54', '2023-04-01 11:44:39'),
(7, 16, 1, 'salwatest111', 'salwatest111@gmail.com', '0123456', '1', '1', '1111111111', 135.00, '1', 'EOS60826884', '01 April 2023', 'April', '2023', NULL, NULL, NULL, NULL, 'deliverd', '2023-04-01 12:16:56', '2023-04-01 12:17:26'),
(8, 2, 1, 'salwa yehya', 'user@gmail.com', '0778079514', '1', '1', 'test test', 105.00, '1', 'EOS63605125', '04 April 2023', 'April', '2023', NULL, NULL, NULL, NULL, 'deliverd', '2023-04-04 10:27:18', '2023-04-04 10:30:01');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_22_223850_create_categories_table', 2),
(6, '2023_03_03_135718_create_products_table', 3),
(7, '2023_03_07_210612_create_sliders_table', 4),
(8, '2023_03_25_110403_create_carts_table', 5),
(9, '2023_03_26_104833_create_ship_cities_table', 6),
(10, '2023_03_26_110304_create_ship_countries_table', 6),
(11, '2023_03_26_191114_create_ship_countries_table', 7),
(12, '2023_03_26_191155_create_ship_cities_table', 7),
(13, '2023_03_29_223548_create_checkouts_table', 8),
(14, '2023_03_29_225721_create_order_items_table', 9),
(15, '2023_04_01_000439_create_reviews_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `checkout_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `qty` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `checkout_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 6, 10, 'Black', '60 cm', '1', 45.00, '2023-04-01 08:55:54', NULL),
(2, 7, 9, 'Black', '170cm * 70cm', '1', 135.00, '2023-04-01 12:16:56', NULL),
(3, 7, 13, 'Gold', '10cm - 30cm', '1', 135.00, '2023-04-01 12:16:56', NULL),
(4, 8, 10, 'Black', '60 cm', '3', 105.00, '2023-04-04 10:27:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_qty` varchar(255) NOT NULL,
  `product_size` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) NOT NULL,
  `selling_price` varchar(255) NOT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `short_descp` text NOT NULL,
  `long_descp` text NOT NULL,
  `offer` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_qty`, `product_size`, `product_color`, `product_image`, `selling_price`, `discount_price`, `short_descp`, `long_descp`, `offer`, `status`, `created_at`, `updated_at`) VALUES
(10, 9, 'CHANEL N°5', '5', '35ML', NULL, 'upload/products/1763011238917560.webp', '40', NULL, 'Eau de Parfum Spray', '<div class=\"product_descr__container j-product_descr__container expanded\" style=\"box-sizing: border-box; overflow: hidden; font-family: Muli, Arial, sans-serif; font-size: 16px; background-color: #ffffff; height: 368px;\">\r\n<div class=\"product_descr__core_text\" style=\"box-sizing: border-box; padding: 34px 20px; order: 1;\">\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">CHANEL N&deg;5 EAU DE PARFUM</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">N&deg;5, the very essence of femininity. A powdery floral bouquet housed in an iconic bottle with a minimalist design. A timeless, legendary fragrance.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">The eau de parfum comes in a spray for smooth and supple application on skin or clothing.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">To revive the notes of the fragrance throughout the day, the spray also comes in a practical travel format you can slip into your purse and take with you anywhere.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">A complete perfuming ritual for the bath and body is also available to enhance the scent trail of the fragrance.</p>\r\n</div>\r\n</div>\r\n<div class=\"product_descr__more_less_container\" style=\"box-sizing: border-box; display: flex; flex: 1 1 auto; flex-direction: column; width: 901px; align-items: center; align-self: center; place-content: center; position: relative; padding-top: 18px; padding-bottom: 18px; text-align: center; font-family: Muli, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">&nbsp;</div>', NULL, 1, '2023-04-12 19:30:15', '2023-04-12 19:30:15'),
(11, 9, 'CHANEL COCO MADEMOISELLE', '3', '100ML', NULL, 'upload/products/1763011454713973.webp', '50', '40', 'Fresh Moisture Mist', '<p><span style=\"font-family: Muli, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">CHANEL COCO MADEMOISELLE FRESH MOISTURE MIST 100ML</span><br style=\"box-sizing: border-box; font-family: Muli, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; font-family: Muli, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"font-family: Muli, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">A fresh body mist with moisturising properties. An airy texture that envelops the skin with the modern notes of COCO MADEMOISELLE. A wave of softness and comfort that prolongs the trail of this ambery-fresh fragrance.</span><br style=\"box-sizing: border-box; font-family: Muli, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; font-family: Muli, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"font-family: Muli, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">A complete perfuming ritual for the bath and body to enhance the ambery-fresh fragrance trail of COCO MADEMOISELLE. The fresh moisture mist is applied in a spray on the skin.</span></p>', 1, 1, '2023-04-12 19:33:26', '2023-04-12 19:33:26'),
(12, 8, 'CHANEL BLEU DE CHANEL', '3', '100ML', NULL, 'upload/products/1763011615291947.webp', '60', '55', 'Parfum Spray', '<p><span style=\"font-family: Muli, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">An ode to masculine freedom expressed in an aromatic-woody fragrance with a captivating trail. A timeless scent housed in a bottle of deep and mysterious blue. BLEU DE CHANEL Parfum is an accomplished composition with a pure, deep character. An intensely masculine signature that exudes self-confidence. BLEU DE CHANEL Parfum is an aromatic, intensely woody fragrance. It opens with powerful freshness, then lingers with a precious accord of New Caledonian sandalwood that unfurls its generous, powerful notes in a dense and sophisticated trail.</span></p>', 1, 1, '2023-04-12 19:35:48', '2023-04-12 19:35:48'),
(13, 8, 'CHANEL ALLURE HOMME SPORT', '0', '100ML', NULL, 'upload/products/1763011885740500.webp', '30', NULL, 'Eau de Toilette Spray', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Muli, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">CHANEL ALLURE HOMME SPORT EAU DE TOILETTE SPRAY</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Muli, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">Allure in motion. A fresh-sensual fragrance that evokes escape and serenity. Allure exudes from both the body and mind, in perfect harmony.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Muli, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">The eau de toilette is sprayed directly onto clothes and skin for lavish perfuming. A full range of shaving and body products is also available to intensify the fragrance throughout the day.</p>', NULL, 1, '2023-04-12 19:40:30', '2023-04-12 19:40:30'),
(15, 10, 'Crystal Noir', '2', '90ML', NULL, 'upload/products/1763012186271843.webp', '40', NULL, 'Eau de Toilette for her', '<div class=\"product_descr__core_text\" style=\"box-sizing: border-box; padding: 34px 20px; order: 1; color: #000000; font-family: Muli, Arial, sans-serif; font-size: 16px;\">A magical fragrance, ethereal yet carnal. The jewel like bottle is inspired by the facets of a diamond. Made of garnet glass, it is understated but sumptuous. A floral scent composed of gardenia, blended with amber. Which creates a wonderful contradiction, like two sides of every woman: sweet and sensual, earthy and sophisticated.</div>', NULL, 1, '2023-04-12 19:45:59', '2023-04-12 19:45:59'),
(17, 10, 'Blue Jeans', '10', '75ML', NULL, 'upload/products/1763012430293371.webp', '50', '30', 'Eau de Toilette for him', '<div class=\"product_descr__experts_say\" style=\"box-sizing: border-box; padding: 38px 20px 14px; order: 1; font-family: Muli, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">\r\n<dl class=\"product_descr__experts_say_list\" style=\"box-sizing: border-box; margin: 0px; display: flex; flex: 1 1 0%; flex-flow: row wrap; justify-content: flex-start; align-items: stretch;\">\r\n<dt style=\"box-sizing: border-box; font-weight: bold; flex: 1 1 10%; max-width: 10%;\">Top notes</dt>\r\n<dd style=\"box-sizing: border-box; margin-bottom: 20px; margin-left: 0px; flex: 1 1 40%; max-width: 40%;\">Citrus, Bergamot, Juniper, Rose, Geranium</dd>\r\n<dt style=\"box-sizing: border-box; font-weight: bold; flex: 1 1 10%; max-width: 10%;\">Heart notes</dt>\r\n<dd style=\"box-sizing: border-box; margin-bottom: 20px; margin-left: 0px; flex: 1 1 40%; max-width: 40%;\">Lavender, Jasmine, Violet Flower, Nutmeg</dd>\r\n<dt style=\"box-sizing: border-box; font-weight: bold; flex: 1 1 10%; max-width: 10%;\">Base notes</dt>\r\n<dd style=\"box-sizing: border-box; margin-bottom: 20px; margin-left: 0px; flex: 1 1 40%; max-width: 40%;\">Cedar, Iriswood, Sandalwood, Vetiver, Amber, Vanilla, Musk</dd>\r\n<dt style=\"box-sizing: border-box; font-weight: bold; flex: 1 1 10%; max-width: 10%;\">Launch date</dt>\r\n<dd style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; flex: 1 1 40%; max-width: 40%;\">1994</dd>\r\n</dl>\r\n</div>\r\n<div class=\"product_descr__core_text\" style=\"box-sizing: border-box; padding: 34px 20px; order: 1; font-family: Muli, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">A fresh and woody blend of bergamot, nutmeg, sandalwood and vetiver.</div>', 1, 1, '2023-04-12 19:49:27', '2023-04-12 19:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `comment`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(7, 10, 2, 'very good', '4', '1', '2023-04-04 10:25:26', '2023-04-04 10:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `ship_cities`
--

CREATE TABLE `ship_cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_cities`
--

INSERT INTO `ship_cities` (`id`, `country_id`, `city_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aqaba', NULL, NULL),
(2, 1, 'Amman', NULL, NULL),
(3, 1, 'Zarqa', NULL, NULL),
(4, 1, 'Irbid', NULL, NULL),
(5, 1, 'Salt', NULL, NULL),
(6, 1, 'Mafraq', NULL, NULL),
(7, 1, 'Madaba', NULL, NULL),
(8, 1, 'Balqa', NULL, NULL),
(9, 1, 'Karak', NULL, NULL),
(10, 1, 'Tafilah', NULL, NULL),
(12, 1, 'Ma\'an', NULL, NULL),
(13, 1, 'Jerash', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_countries`
--

CREATE TABLE `ship_countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_countries`
--

INSERT INTO `ship_countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES
(1, 'Jorden', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `short_title` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_title`, `short_title`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, 'it Perfume\'s', 'The Best Perfume Ever', 'upload/slider/1763007172228845.jpg', NULL, '2023-04-12 18:24:19'),
(3, 'We Make it', 'Try Our Perfume\'s', 'upload/slider/1763007341034693.jpg', NULL, '2023-04-12 18:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mohammad', 'admin', 'admin@gmail.com', NULL, '$2y$10$dqu1IHRXiMS/ItiD4b9cfunnhKzIDsM29fyS8c6zhH49oqUqh7mFi', '2023041220277.jpg', '0797229875', 'amman, abu nsear', 'admin', 'active', NULL, NULL, '2023-04-12 17:27:56'),
(2, 'salwa yehya', 'usertest', 'user@gmail.com', NULL, '$2y$10$HUh6wD8KPLZabCdBTrGbL.nFOwitCX578N5pbug1d0nXRH/y0jGvy', '202303260922salllllwa-removebg (3) (1).png', '0778079514', 'Jorden', 'user', 'active', NULL, NULL, '2023-03-29 18:39:26'),
(3, 'Kristopher Bayer', NULL, 'xdaniel@example.org', '2023-02-04 18:34:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00aa88?text=impedit', '+1-307-729-2676', '52692 Howell Mountain Suite 378\nRosemarystad, KY 21680', 'user', 'active', 'YDBE62TW41', '2023-02-04 18:34:14', '2023-02-04 18:34:14'),
(4, 'Dr. Zola Heidenreich', NULL, 'rfunk@example.com', '2023-02-04 18:34:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00dddd?text=id', '+1-951-383-9089', '9157 Ethyl Fork\nConnside, ND 22474-3226', 'user', 'active', '80GHAh1sDp', '2023-02-04 18:34:14', '2023-02-04 18:34:14'),
(5, 'Carlee Klein', NULL, 'jpadberg@example.net', '2023-02-04 18:34:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/006622?text=cum', '316-787-6680', '98151 Howell Street\nWest Royfort, AZ 48103-4246', 'user', 'active', 'saUslbJDPg', '2023-02-04 18:34:14', '2023-02-04 18:34:14'),
(6, 'Tremayne Waelchi', NULL, 'iokon@example.net', '2023-02-04 18:34:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00bbff?text=iure', '+15855403527', '61573 Nedra Junctions\nEmeryton, ME 73942', 'admin', 'inactive', '5VpjCzpg7ky0Q2GkLJJCXuLHxIXSWPQf1KTGPDZWeIaxOVFYdWs2Y3Pm7WsC', '2023-02-04 18:34:14', '2023-02-04 18:34:14'),
(7, 'Myrna Hettinger', NULL, 'hamill.mozelle@example.org', '2023-02-04 18:34:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00aa77?text=ad', '(283) 244-8548', '53028 Volkman Springs\nNorth Deondre, MD 41771-3024', 'admin', 'active', '8dIHOIug4u', '2023-02-04 18:34:14', '2023-02-04 18:34:14'),
(8, 'Emmanuel Mayert IV', NULL, 'tbogan@example.com', '2023-02-04 18:34:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0055ff?text=sit', '1-661-419-6255', '34989 Von Haven\nLake Walterton, VA 31496-3367', 'admin', 'inactive', '6B9GWbRDmc', '2023-02-04 18:34:14', '2023-02-04 18:34:14'),
(11, 'salwa', NULL, 'Salwa@gmail.com', NULL, '$2y$10$z/Stzxl9YmG21ZJ0Bmfiy.ZbDB33M9goHLSRGLEGe7Wy2z57YkTNK', NULL, NULL, NULL, 'user', 'active', NULL, '2023-02-04 18:47:05', '2023-02-04 18:47:05'),
(12, 'huda', NULL, 'huda@gmail.com', NULL, '$2y$10$6byrAEN/rSrfSUHfy96ZGevRBDmag5T0YykUE7MX3.pqNZED6rWZG', NULL, NULL, NULL, 'user', 'active', NULL, '2023-02-22 05:16:44', '2023-02-22 05:16:44'),
(13, 'test', NULL, 'test@gmail.com', NULL, '$2y$10$T1z74dhG/0PhwVCb8VLUbOGK01i5GklE.uf3T7m2lRrGdJRtRewjm', NULL, NULL, NULL, 'user', 'active', NULL, '2023-03-04 11:35:45', '2023-03-04 11:35:45'),
(14, 'mohammad', 'mohammad', 'mohammad@gmail.com', NULL, '$2y$10$V/UBp.iqKr9D.3EWhNDdpu9tGP8fcExJOS7bRL2C48qtNiQs1g02a', '202303150748logo.png', '00000000000', 'Jorden - Aqaba - 1', 'user', 'active', NULL, '2023-03-15 05:48:00', '2023-03-15 05:48:43'),
(15, 'Username', NULL, 'Username@gmail.com', NULL, '$2y$10$/kaRbF2OnsFg6NDPSnaHWOR1.Rs.gaB18B4brjDpose/V7gm/P8Qa', NULL, NULL, NULL, 'user', 'active', NULL, '2023-03-19 15:53:41', '2023-03-19 15:53:41'),
(16, 'salwatest111', 'Salwa', 'salwatest111@gmail.com', NULL, '$2y$10$lO7NTvXqpZSW3gDFIxgPjug0S0cTmSsoyC6Bc9OF6c5seX0P4ahyG', '202304011250c4.jfif', '0123456', 'Jorden - Aqaba', 'user', 'active', NULL, '2023-04-01 08:55:07', '2023-04-01 09:50:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkouts`
--
ALTER TABLE `checkouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_checkout_id_foreign` (`checkout_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `ship_cities`
--
ALTER TABLE `ship_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_countries`
--
ALTER TABLE `ship_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `checkouts`
--
ALTER TABLE `checkouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ship_cities`
--
ALTER TABLE `ship_cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ship_countries`
--
ALTER TABLE `ship_countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_checkout_id_foreign` FOREIGN KEY (`checkout_id`) REFERENCES `checkouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
