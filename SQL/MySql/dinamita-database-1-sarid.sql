-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:330
-- Generation Time: Jul 04, 2023 at 08:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webmall-database`
--
CREATE DATABASE dinamita;
USE dinamita;
-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','processing','completed','decline') NOT NULL DEFAULT 'pending',
  `grand_total` double(8,2) NOT NULL,
  `item_count` int(11) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `payment_method` enum('cash_on_delivery','paypal','stripe','card') NOT NULL DEFAULT 'cash_on_delivery',
  `shipping_fullname` varchar(255) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `shipping_city` varchar(255) NOT NULL,
  `shipping_state` varchar(255) NOT NULL,
  `shipping_zipcode` varchar(255) NOT NULL,
  `shipping_phone` varchar(255) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `billing_fullname` varchar(255) NOT NULL,
  `billing_address` varchar(255) NOT NULL,
  `billing_city` varchar(255) NOT NULL,
  `billing_state` varchar(255) NOT NULL,
  `billing_zipcode` varchar(255) NOT NULL,
  `billing_phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-02-11 05:10:14', '2020-02-11 05:10:14');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(2, 'browse_bread', NULL, '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(3, 'browse_database', NULL, '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(4, 'browse_media', NULL, '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(5, 'browse_compass', NULL, '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(6, 'browse_menus', 'menus', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(7, 'read_menus', 'menus', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(8, 'edit_menus', 'menus', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(9, 'add_menus', 'menus', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(10, 'delete_menus', 'menus', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(11, 'browse_roles', 'roles', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(12, 'read_roles', 'roles', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(13, 'edit_roles', 'roles', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(14, 'add_roles', 'roles', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(15, 'delete_roles', 'roles', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(16, 'browse_users', 'users', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(17, 'read_users', 'users', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(18, 'edit_users', 'users', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(19, 'add_users', 'users', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(20, 'delete_users', 'users', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(21, 'browse_settings', 'settings', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(22, 'read_settings', 'settings', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(23, 'edit_settings', 'settings', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(24, 'add_settings', 'settings', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(25, 'delete_settings', 'settings', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(26, 'browse_categories', 'categories', '2020-02-11 05:10:14', '2020-02-11 05:10:14'),
(27, 'read_categories', 'categories', '2020-02-11 05:10:14', '2020-02-11 05:10:14'),
(28, 'edit_categories', 'categories', '2020-02-11 05:10:14', '2020-02-11 05:10:14'),
(29, 'add_categories', 'categories', '2020-02-11 05:10:14', '2020-02-11 05:10:14'),
(30, 'delete_categories', 'categories', '2020-02-11 05:10:14', '2020-02-11 05:10:14'),
(31, 'browse_posts', 'posts', '2020-02-11 05:10:14', '2020-02-11 05:10:14'),
(32, 'read_posts', 'posts', '2020-02-11 05:10:14', '2020-02-11 05:10:14'),
(33, 'edit_posts', 'posts', '2020-02-11 05:10:14', '2020-02-11 05:10:14'),
(34, 'add_posts', 'posts', '2020-02-11 05:10:14', '2020-02-11 05:10:14'),
(35, 'delete_posts', 'posts', '2020-02-11 05:10:14', '2020-02-11 05:10:14'),
(36, 'browse_pages', 'pages', '2020-02-11 05:10:14', '2020-02-11 05:10:14'),
(37, 'read_pages', 'pages', '2020-02-11 05:10:14', '2020-02-11 05:10:14'),
(38, 'edit_pages', 'pages', '2020-02-11 05:10:14', '2020-02-11 05:10:14'),
(39, 'add_pages', 'pages', '2020-02-11 05:10:14', '2020-02-11 05:10:14'),
(40, 'delete_pages', 'pages', '2020-02-11 05:10:14', '2020-02-11 05:10:14'),
(41, 'browse_hooks', NULL, '2020-02-11 05:10:14', '2020-02-11 05:10:14'),
(42, 'browse_orders', 'orders', '2020-02-11 05:22:34', '2020-02-11 05:22:34'),
(43, 'read_orders', 'orders', '2020-02-11 05:22:34', '2020-02-11 05:22:34'),
(44, 'edit_orders', 'orders', '2020-02-11 05:22:34', '2020-02-11 05:22:34'),
(45, 'add_orders', 'orders', '2020-02-11 05:22:34', '2020-02-11 05:22:34'),
(46, 'delete_orders', 'orders', '2020-02-11 05:22:34', '2020-02-11 05:22:34'),
(47, 'browse_shops', 'shops', '2020-02-19 22:15:37', '2020-02-19 22:15:37'),
(48, 'read_shops', 'shops', '2020-02-19 22:15:37', '2020-02-19 22:15:37'),
(49, 'edit_shops', 'shops', '2020-02-19 22:15:37', '2020-02-19 22:15:37'),
(50, 'add_shops', 'shops', '2020-02-19 22:15:37', '2020-02-19 22:15:37'),
(51, 'delete_shops', 'shops', '2020-02-19 22:15:37', '2020-02-19 22:15:37'),
(52, 'browse_products', 'products', '2020-02-19 22:18:39', '2020-02-19 22:18:39'),
(53, 'read_products', 'products', '2020-02-19 22:18:39', '2020-02-19 22:18:39'),
(54, 'edit_products', 'products', '2020-02-19 22:18:39', '2020-02-19 22:18:39'),
(55, 'add_products', 'products', '2020-02-19 22:18:39', '2020-02-19 22:18:39'),
(56, 'delete_products', 'products', '2020-02-19 22:18:39', '2020-02-19 22:18:39'),
(57, 'browse_coupons', 'coupons', '2020-04-04 14:11:42', '2020-04-04 14:11:42'),
(58, 'read_coupons', 'coupons', '2020-04-04 14:11:42', '2020-04-04 14:11:42'),
(59, 'edit_coupons', 'coupons', '2020-04-04 14:11:42', '2020-04-04 14:11:42'),
(60, 'add_coupons', 'coupons', '2020-04-04 14:11:42', '2020-04-04 14:11:42'),
(61, 'delete_coupons', 'coupons', '2020-04-04 14:11:42', '2020-04-04 14:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `cover_img` varchar(255) DEFAULT NULL,
  `shop_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `cover_img`, `shop_id`, `created_at`, `updated_at`) VALUES
(3, 'Non ut voluptatem.', '<p>Exercitationem accusantium distinctio fuga aliquid quod sequi praesentium quia et recusandae qui deserunt expedita veniam recusandae ex molestias cumque sed deserunt reprehenderit.</p>', 4721.00, NULL, NULL, '2020-02-19 23:05:00', '2020-03-14 15:04:31'),
(4, 'Sunt et distinctio.', '<p>Itaque dicta quo inventore esse natus enim aliquid molestiae reiciendis cumque ad voluptas nobis.</p>', 3105.00, 'products\\March2020\\ZsIocI2E5iZGZHwCtBxp.jpg', NULL, '2020-02-19 23:05:00', '2020-03-22 14:06:43'),
(5, 'Reprehenderit est.', '<p>Sunt atque aliquam explicabo sapiente et quis ducimus enim molestiae perspiciatis fuga qui corporis nobis iste impedit aut aperiam et aut ut qui eum quia ullam et.</p>', 929.00, NULL, NULL, '2020-02-19 23:05:00', '2020-03-14 15:49:45'),
(6, 'Rerum fugit deserunt.', '<p>Maiores ut qui aperiam voluptates sed quod cum incidunt ut occaecati libero et minus sed earum ea qui sequi nihil aspernatur.</p>', 4839.00, NULL, NULL, '2020-02-19 23:05:00', '2020-03-14 15:05:06'),
(7, 'Ipsa illo.', '<p>Illo sit laborum est quod natus maiores voluptas dolores maxime dolorem sequi nam quis similique qui ut similique est nisi est dolorem quo aut.</p>', 2020.00, NULL, NULL, '2020-02-19 23:05:00', '2020-03-14 15:05:20'),
(8, 'Ducimus perspiciatis provident.', 'Non maxime impedit omnis vero nulla officiis et vel corporis rerum id vero nisi architecto mollitia et qui eaque aut necessitatibus commodi enim.', 3978.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(9, 'Quo reiciendis.', 'Sunt architecto ducimus porro iusto explicabo et quod quibusdam nemo aliquid et accusantium inventore nam totam qui.', 331.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(10, 'Maiores accusantium molestiae.', 'Aut est fugit voluptatem quidem adipisci consectetur architecto tenetur aut id quam enim eaque.', 4207.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(11, 'Quo nostrum voluptas.', 'Voluptas sed et aliquam consequatur temporibus consequatur nulla in commodi dicta est unde totam molestiae recusandae et.', 947.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(12, 'Non ullam.', 'Quis iure quo accusantium ea adipisci non facere odit ducimus aut in sunt velit sunt.', 2179.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(13, 'Mollitia quisquam molestias.', 'Omnis sapiente ut sunt voluptas maiores numquam ut quia debitis exercitationem id accusamus blanditiis quisquam voluptas minus eaque quasi deleniti aut.', 3778.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(14, 'Molestias facilis.', 'Hic numquam dolorum nostrum molestias dolorum quasi debitis cumque error aliquam officia et quae repellat consequatur et nesciunt quam dolores officia deserunt inventore est inventore fugit ducimus maxime.', 4890.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(15, 'Animi recusandae.', 'Odit in asperiores veritatis et a numquam quaerat maxime in quam eos asperiores doloribus et libero sint eos debitis perspiciatis perspiciatis vel nulla est maiores.', 4884.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(16, 'Tenetur quibusdam.', 'Minus nisi sint quo dolor ipsam illum quo soluta sapiente illo porro facilis adipisci ducimus quia nihil temporibus autem non sunt error consequatur nulla nemo.', 2767.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(17, 'Corrupti ut.', 'Ad quo dolores iste deleniti aliquam unde aut molestias officiis est laudantium illo earum ipsum consectetur qui cumque autem nobis quisquam natus harum nostrum qui fugit voluptas fuga vitae.', 3284.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(18, 'Voluptas quisquam.', 'Qui perferendis aut voluptas est ut officia aut quas vitae soluta voluptas perspiciatis omnis ducimus ut error animi ea autem odit voluptas.', 4358.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(19, 'Sint atque enim.', 'Et provident ut nemo placeat amet soluta non ea non beatae ad et quisquam ipsam temporibus quia aut aut nihil soluta.', 719.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(20, 'Atque repellat vitae.', 'Magnam atque ipsa rem numquam qui sint aliquid magni aliquid dolorum labore doloribus dolores et veniam aliquam consequatur quas molestiae natus quos ipsa saepe culpa nihil est.', 4585.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(21, 'Eum quo qui.', 'Cupiditate quia debitis voluptates ut sit aspernatur commodi est aut asperiores ullam placeat rerum sapiente error aspernatur animi laudantium eos molestiae.', 1026.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(22, 'Dolores culpa autem.', 'Qui esse minima deleniti voluptatibus officiis labore omnis voluptatem eius sapiente ut deleniti delectus quo quia officia assumenda.', 4117.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(23, 'Quae eveniet consequuntur.', 'Officia rerum necessitatibus aut sint non voluptatum veritatis harum non eos sunt cupiditate unde deleniti error eum dolorem architecto deserunt omnis dolorum dolore sed voluptatum quia.', 3216.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(24, 'Aperiam vel qui.', 'Et odio totam magnam odio corrupti neque illum sunt quae et rerum perspiciatis non minima soluta et porro esse fuga facilis vitae qui et soluta in alias facere.', 701.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(25, 'Et aut libero.', 'Labore necessitatibus maiores id ab voluptatibus quisquam quaerat est corporis sit dolores nostrum eveniet ad eum aperiam qui saepe natus.', 3577.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(26, 'Tenetur corporis.', 'Voluptates et modi deserunt ullam minus labore neque mollitia nemo provident eius eveniet sint quod veniam tenetur perferendis commodi aspernatur neque aliquid animi amet minima ad.', 1438.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(27, 'Minus voluptatem.', 'In fugiat eum quibusdam et eos aut porro veniam aut aperiam est in pariatur laborum.', 274.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(28, 'Vel qui.', 'At aut qui maiores recusandae non voluptas consequatur est aspernatur cumque laborum eum tenetur molestias.', 2846.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(29, 'Aut neque.', 'Quia reprehenderit accusamus odio eaque et non officiis sapiente et porro reprehenderit laboriosam accusantium et nobis adipisci eos non et.', 3161.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(30, 'Rerum facere.', 'Voluptatem quia repudiandae nulla voluptas aut quia cum qui veritatis minima qui dignissimos aperiam veniam mollitia consequatur et.', 4361.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(31, 'Eum enim.', 'Beatae dolor recusandae similique natus aut aut rerum qui omnis sint omnis excepturi ratione modi iusto modi quis illum maiores rerum molestias reiciendis maxime.', 1943.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(32, 'Ut numquam est.', 'Nisi aut et ut quibusdam et aut laboriosam assumenda iste facilis nemo fugiat est debitis.', 1614.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(33, 'Consequatur vel incidunt.', 'Est repellendus laborum vitae accusantium aut corporis voluptas quos voluptas perspiciatis eaque magnam fuga ut est voluptatem ipsa consequatur reprehenderit voluptatibus aut quidem architecto est voluptatibus modi nulla.', 4119.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(34, 'Tenetur explicabo.', 'Dolor deserunt quia et sequi facilis rerum voluptatibus voluptate sint sint quasi eius assumenda consequatur recusandae possimus cum accusantium perferendis nisi.', 1458.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(35, 'Ex qui non.', 'Beatae commodi consequatur ipsam placeat incidunt maxime iste reprehenderit velit eveniet molestias eligendi sunt facilis laborum eligendi voluptates tenetur quos eveniet cum blanditiis similique commodi.', 4040.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(36, 'Quis modi possimus.', 'Provident numquam assumenda quibusdam aliquam odit accusamus ex sunt quaerat numquam aperiam laborum ea sit numquam voluptas veniam facere doloribus pariatur sed iste cumque assumenda.', 3711.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(37, 'Voluptas ipsum.', 'Dolorum ut qui ratione corporis ut id et omnis aut porro magni fugiat incidunt qui placeat sit est est corporis eos iure praesentium doloremque.', 2986.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(38, 'Quibusdam quas id.', 'Aut suscipit sint voluptatum in aut maxime magnam sed vel velit illo praesentium ut fugit aliquam nulla.', 3519.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(39, 'Perferendis dolores numquam.', 'Nihil ut voluptas voluptate molestiae quas nobis temporibus soluta optio non et sint laudantium eius iusto et harum quibusdam et accusamus.', 4462.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(40, 'Hic quo tempore.', 'Beatae accusantium veritatis deleniti ipsa fugit dolor fugit fugiat inventore a at voluptatem consequatur ea natus deleniti atque et.', 2358.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(41, 'Quis qui.', 'Voluptas et porro unde est eos necessitatibus et doloremque soluta vitae est eligendi non eum adipisci voluptatem.', 2355.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(42, 'Odit temporibus.', 'Et laboriosam saepe nam culpa dolorum ipsam qui occaecati et eius voluptate dicta ut in alias soluta nulla.', 4790.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(43, 'Aut voluptatem.', 'Consequatur nobis corporis quia nemo consequatur quis in at voluptatem dolore sunt voluptas porro ut et autem et.', 1996.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(44, 'Quibusdam incidunt.', 'Aut enim assumenda et expedita temporibus impedit voluptas omnis laudantium ipsam pariatur quas libero architecto pariatur.', 336.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(45, 'Rem ut eaque.', 'Cumque quia ipsum est repellendus vel voluptate dignissimos nihil saepe consequatur perferendis unde cum id et consequuntur.', 2871.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(46, 'Quisquam sint.', 'Corrupti recusandae qui iure id porro soluta delectus exercitationem ipsam blanditiis hic et voluptatibus quo a nam magni eum dolor aut pariatur aut quod sunt.', 1100.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(47, 'Sunt officiis.', 'Ut eligendi commodi eaque animi qui voluptate ipsam fugit sit facilis est ex et ea eaque perspiciatis neque non.', 3071.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(48, 'Atque nisi eius.', 'Tempore et neque et eligendi velit unde unde laudantium cum saepe non corporis et.', 3271.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(49, 'Eos quis doloribus.', 'Eum qui cum cum eligendi voluptates est esse est ipsum quo perspiciatis soluta dolorem quasi animi optio sint magni voluptas.', 4509.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10'),
(50, 'Nihil error pariatur.', 'Omnis amet voluptatibus dolores aut praesentium ab quibusdam dolores doloremque nulla tempora accusamus temporibus.', 1121.00, NULL, NULL, '2020-02-19 23:05:10', '2020-02-19 23:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(2, 'user', 'Normal User', '2020-02-11 05:10:11', '2020-02-11 05:10:11'),
(3, 'seller', 'Seller', '2020-02-19 22:25:16', '2020-02-19 22:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `rating` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name`, `user_id`, `is_active`, `description`, `rating`, `created_at`, `updated_at`) VALUES
(2, 'Recusandae similique : seller 2 shop', 5, 1, 'Id tempora voluptates sed aut quis rerum provident est natus illo dolor quam quia eos.', NULL, '2020-02-19 23:05:00', '2020-02-25 05:39:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@webmall.com', 'users/default.png', '2020-02-09 17:42:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bUcKj1RxZeZGcZ8Bk8Ph0FxVQmOq5KTNdJSzFPfSxyyhXdhOKCd83iB0ZYPb', NULL, '2020-02-09 17:42:53', '2020-02-11 05:15:23'),
(2, 2, 'customer 1', 'customer@webmall.com', 'users/default.png', NULL, '$2y$10$xJacK/k89sSDbvDvqaMnC.KLEHOZr/YhqQMVSrvrTVhjggQgVhzpq', NULL, '{\"locale\":\"en\"}', '2020-02-11 05:16:34', '2020-02-19 22:25:45'),
(3, 2, 'customer 2', 'customer2@webmall.com', 'users/default.png', NULL, '$2y$10$xJacK/k89sSDbvDvqaMnC.KLEHOZr/YhqQMVSrvrTVhjggQgVhzpq', NULL, NULL, '2020-02-11 05:16:34', '2020-02-11 05:16:34'),
(4, 3, 'Seller 1', 'seller1@webmall.com', 'users/default.png', NULL, '$2y$10$xJacK/k89sSDbvDvqaMnC.KLEHOZr/YhqQMVSrvrTVhjggQgVhzpq', NULL, NULL, '2020-02-11 05:16:34', '2020-02-11 05:16:34'),
(5, 3, 'Seller 2', 'seller2@webmall.com', 'users/default.png', NULL, '$2y$10$xJacK/k89sSDbvDvqaMnC.KLEHOZr/YhqQMVSrvrTVhjggQgVhzpq', NULL, NULL, '2020-02-11 05:16:34', '2020-02-11 05:16:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shops_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `shops_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;