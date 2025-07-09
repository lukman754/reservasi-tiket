-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2025 at 04:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tkc_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `name`, `icon`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Tiket Masuk', 'fas fa-ticket-alt', 'Tiket masuk ke area Taman Kopses Ciseeng', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(2, 'Gazebo', 'fas fa-umbrella-beach', 'Tempat berteduh dan beristirahat', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(3, 'Welcome Drink & Snack Ringan', 'fas fa-utensils', 'Minuman dan makanan ringan sebagai sambutan', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(4, 'Bakso Kuah', 'fas fa-cookie', 'Makanan berupa bakso kuah', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(5, 'Kaos Batik', 'fas fa-tshirt', 'Kaos batik sebagai souvenir', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(6, 'Sertifikat', 'fas fa-certificate', 'Sertifikat keikutsertaan dalam kegiatan', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(7, 'Outbound Games', 'fas fa-users', 'Berbagai permainan outbound yang menyenangkan', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(8, 'Outbound Tantangan', 'fas fa-mountain', 'Aktivitas outbound yang menantang', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(9, 'Outbound Kreatif', 'fas fa-palette', 'Aktivitas outbound yang mengasah kreativitas', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(10, 'Outbound Army Kids', 'fas fa-child', 'Aktivitas outbound bertema militer untuk anak-anak', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(11, 'Outbound Water Activity', 'fas fa-water', 'Aktivitas outbound di air', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(12, 'Dokumentasi Foto Grup', 'fas fa-camera', 'Dokumentasi foto bersama', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(13, 'Akses Jamaah Objek Wisata', 'fas fa-user-tie', 'Akses ke berbagai objek wisata di area', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(14, 'Kearifan Lokal', 'fas fa-map-marked', 'Pengenalan kearifan lokal daerah sekitar', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(15, 'Flying Fox / Tubing', 'fas fa-water', 'Aktivitas flying fox atau tubing', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(16, 'Warming Up', 'fas fa-running', 'Pemanasan sebelum aktivitas utama', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(17, 'Ice Breaking', 'fas fa-gamepad', 'Aktivitas untuk mencairkan suasana', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(18, 'Tenda', 'fas fa-campground', 'Tenda untuk menginap', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(19, 'Api Unggun', 'fas fa-fire', 'Aktivitas api unggun', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(20, 'Akustik', 'fas fa-guitar', 'Hiburan musik akustik', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(21, 'Kasur', 'fas fa-bed', 'Kasur untuk tidur', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(22, 'Lampu', 'fas fa-lightbulb', 'Penerangan', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(23, 'Kipas Angin', 'fas fa-fan', 'Kipas angin untuk kenyamanan', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(24, 'Colokan Listrik', 'fas fa-plug', 'Akses listrik', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(25, 'Kamar Mandi', 'fas fa-toilet', 'Fasilitas kamar mandi', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(26, 'Kolam Renang', 'fas fa-swimming-pool', 'Fasilitas kolam renang', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(27, 'Ikan Nila', 'fas fa-fish', 'Ikan nila untuk memancing', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(28, 'Bumbu', 'fas fa-utensils', 'Bumbu untuk memasak hasil pancingan', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(29, 'Arang', 'fas fa-fire', 'Arang untuk membakar', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(30, 'Tungku', 'fas fa-fire-alt', 'Tungku untuk memasak', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(31, 'Jeruk Nipis', 'fas fa-lemon', 'Jeruk nipis untuk bumbu', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(32, 'Kolam Renang Ikan', 'fas fa-fish', 'berenang bersama ikan', '2025-05-28 15:53:27', '2025-05-28 15:53:27'),
(33, 'Taman Selfie', 'fas fa-camera', '', '2025-05-29 04:06:28', '2025-05-29 04:06:28'),
(34, 'Rakit Bambu', 'fas fa-ship', '', '2025-05-29 04:08:26', '2025-05-29 04:08:26'),
(35, 'Wahana Adventure', 'fas fa-map-signs', '', '2025-05-29 04:10:11', '2025-05-29 04:10:11'),
(36, 'Terapi Ikan', 'fas fa-fish', '', '2025-05-29 04:12:47', '2025-05-29 04:12:47');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price_weekday` decimal(10,2) NOT NULL,
  `price_weekend` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `category_id`, `name`, `description`, `price_weekday`, `price_weekend`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'PAKET ANAK', 'Paket outbound untuk anak-anak dengan berbagai aktivitas menyenangkan', 125000.00, 135000.00, 1, '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(2, 1, 'PAKET DEWASA', 'Paket outbound untuk dewasa dengan berbagai aktivitas menantang', 155000.00, 170000.00, 1, '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(3, 2, 'PAKET WISUDA 1', 'Paket wisuda dasar dengan aktivitas outbound', 100000.00, 110000.00, 1, '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(4, 2, 'PAKET WISUDA 2', 'Paket wisuda lengkap dengan makanan dan aktivitas outbound', 140000.00, 150000.00, 1, '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(5, 3, 'PAKET PENDAMPING', 'Paket untuk pendamping peserta utama', 75000.00, 85000.00, 1, '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(6, 4, 'PAKET CAMPING GROUND', 'Paket camping dengan tenda dan api unggun', 210000.00, 220000.00, 1, '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(7, 4, 'PAKET GLAMPING', 'Paket glamping dengan fasilitas lebih nyaman', 50000.00, 60000.00, 1, '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(8, 5, 'PAKET SEWA', 'Paket sewa tempat dengan akses fasilitas', 35000.00, 40000.00, 1, '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(9, 5, 'PAKET FISHING', 'Paket memancing dengan ikan dan peralatan', 100000.00, 140000.00, 1, '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(10, 6, 'TIKET REGULAR', 'Tiket masuk per orang', 10000.00, 10000.00, 1, '2025-05-28 14:37:53', '2025-05-28 14:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `package_categories`
--

CREATE TABLE `package_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package_categories`
--

INSERT INTO `package_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'PAKET 1 HARI', 'Paket kunjungan satu hari penuh dengan berbagai aktivitas outbound', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(2, 'PAKET WISUDA', 'Paket khusus untuk acara wisuda dengan berbagai pilihan aktivitas', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(3, 'PAKET PENDAMPING', 'Paket untuk pendamping peserta utama', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(4, 'PAKET CAMPING GROUND', 'Paket menginap dengan tenda dan berbagai fasilitas camping', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(5, 'PAKET SEWA & FISHING', 'Paket untuk menyewa tempat dan aktivitas memancing', '2025-05-28 07:29:52', '2025-05-28 07:29:52'),
(6, 'TIKET REGULAR', 'Tiket masuk per orang', '2025-05-28 14:33:23', '2025-05-28 14:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `package_facilities`
--

CREATE TABLE `package_facilities` (
  `package_id` int(11) NOT NULL,
  `facility_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package_facilities`
--

INSERT INTO `package_facilities` (`package_id`, `facility_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 12),
(1, 13),
(1, 14),
(1, 28),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(3, 1),
(3, 3),
(3, 6),
(3, 7),
(3, 8),
(3, 12),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(4, 1),
(4, 3),
(4, 4),
(4, 6),
(4, 7),
(4, 8),
(4, 12),
(4, 14),
(4, 15),
(4, 16),
(4, 17),
(5, 1),
(5, 3),
(5, 4),
(5, 5),
(5, 13),
(5, 14),
(5, 15),
(6, 1),
(6, 3),
(6, 4),
(6, 8),
(6, 12),
(6, 13),
(6, 14),
(6, 15),
(6, 18),
(6, 19),
(6, 20),
(7, 1),
(7, 8),
(7, 12),
(7, 13),
(7, 14),
(7, 15),
(7, 18),
(7, 21),
(7, 22),
(7, 23),
(7, 24),
(7, 25),
(7, 26),
(8, 1),
(8, 8),
(8, 12),
(8, 13),
(8, 14),
(8, 15),
(8, 18),
(8, 25),
(8, 26),
(9, 1),
(9, 27),
(9, 28),
(9, 29),
(9, 30),
(9, 31),
(10, 26),
(10, 33),
(10, 34),
(10, 35),
(10, 36);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('pending','completed','failed','refunded') NOT NULL DEFAULT 'pending',
  `proof_of_payment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `reservation_id`, `payment_method_id`, `amount`, `transaction_id`, `payment_date`, `status`, `proof_of_payment`, `created_at`, `updated_at`) VALUES
(5, 4, 9, 180000.00, NULL, '2025-05-28 14:58:51', 'completed', 'payment_4_1748426202.jpg', '2025-05-28 09:56:42', '2025-05-28 14:58:51'),
(6, 8, 9, 4000000.00, NULL, '2025-05-28 18:08:58', 'completed', 'payment_8_1748455185.jpg', '2025-05-28 17:59:45', '2025-05-28 18:08:58'),
(7, 9, 9, 7700000.00, NULL, '2025-05-28 18:22:18', 'completed', 'payment_9_1748456515.jpg', '2025-05-28 18:21:55', '2025-05-28 18:22:18'),
(8, 10, 4, 2100000.00, NULL, '2025-05-28 18:28:07', 'pending', 'payment_10_1748456887.jpg', '2025-05-28 18:28:07', '2025-05-28 18:28:07');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `type` enum('bank_transfer','ewallet','qris','cash','other') NOT NULL DEFAULT 'other',
  `account_info` text DEFAULT NULL,
  `qr_image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `description`, `type`, `account_info`, `qr_image`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 'Transfer Bank BCA', 'Pembayaran melalui transfer bank BCA', 'bank_transfer', 'BCA 1234567890 a.n. Taman Kopses Ciseeng', NULL, 1, '2025-05-28 09:33:28', '2025-05-28 09:33:28'),
(5, 'Transfer Bank BNI', 'Pembayaran melalui transfer bank BNI', 'bank_transfer', 'BNI 0987654321 a.n. Taman Kopses Ciseeng', NULL, 1, '2025-05-28 09:33:28', '2025-05-28 09:33:28'),
(6, 'QRIS', 'Pembayaran melalui scan QRIS', 'qris', NULL, 'qris_1748425551_6836db4ff118d.jpg', 1, '2025-05-28 09:33:28', '2025-05-28 09:45:52'),
(7, 'GoPay', 'Pembayaran melalui GoPay', 'ewallet', '081234567890', NULL, 1, '2025-05-28 09:33:28', '2025-05-28 09:33:28'),
(8, 'OVO', 'Pembayaran melalui OVO', 'ewallet', '081234567890', NULL, 1, '2025-05-28 09:33:28', '2025-05-28 09:33:28'),
(9, 'Dana', 'Pembayaran melalui Dana', 'ewallet', '081234567890', NULL, 1, '2025-05-28 09:33:28', '2025-05-28 09:33:28');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `visit_date` date NOT NULL,
  `num_visitors` int(11) NOT NULL DEFAULT 1,
  `is_weekday` tinyint(1) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `status` enum('pending','confirmed','cancelled','completed') NOT NULL DEFAULT 'pending',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `user_id`, `package_id`, `visit_date`, `num_visitors`, `is_weekday`, `total_price`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-05-31', 5, 0, 675000.00, 'cancelled', NULL, '2025-05-28 07:51:16', '2025-05-28 08:54:16'),
(2, 2, 7, '2025-05-29', 3, 1, 150000.00, 'cancelled', NULL, '2025-05-28 08:05:51', '2025-05-28 08:55:54'),
(3, 2, 6, '2025-05-31', 1, 0, 220000.00, 'confirmed', NULL, '2025-05-28 09:05:10', '2025-05-28 09:05:49'),
(4, 2, 7, '2025-05-31', 3, 0, 180000.00, 'confirmed', NULL, '2025-05-28 09:18:52', '2025-05-28 16:33:05'),
(5, 2, 5, '2025-05-30', 1, 1, 75000.00, 'confirmed', NULL, '2025-05-28 09:34:25', '2025-05-28 15:04:10'),
(6, 4, 1, '2025-05-30', 13, 1, 1625000.00, 'cancelled', NULL, '2025-05-28 17:39:04', '2025-05-28 17:45:07'),
(7, 4, 2, '2025-05-30', 35, 1, 5425000.00, 'cancelled', NULL, '2025-05-28 17:40:10', '2025-05-28 17:43:21'),
(8, 3, 9, '2025-05-30', 40, 1, 4000000.00, 'confirmed', NULL, '2025-05-28 17:58:55', '2025-05-28 18:08:51'),
(9, 5, 6, '2025-05-31', 35, 0, 7700000.00, 'confirmed', NULL, '2025-05-28 18:21:38', '2025-05-28 18:22:18'),
(10, 6, 7, '2025-05-31', 35, 0, 2100000.00, 'pending', NULL, '2025-05-28 18:26:42', '2025-05-28 18:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'Taman Kopses Ciseeng', '2025-05-28 09:33:55', '2025-05-28 09:33:55'),
(2, 'site_description', 'Tempat wisata keluarga yang menyenangkan di Ciseeng, Bogor', '2025-05-28 09:33:55', '2025-05-28 09:33:55'),
(3, 'contact_whatsapp', '+62812345678', '2025-05-28 09:33:55', '2025-05-28 09:33:55'),
(4, 'contact_instagram', 'tamankopses', '2025-05-28 09:33:55', '2025-05-28 09:33:55'),
(5, 'contact_facebook', 'tamankopsesciseeng', '2025-05-28 09:33:55', '2025-05-28 09:33:55'),
(6, 'weekday_start_time', '08:00', '2025-05-28 09:33:55', '2025-05-28 09:33:55'),
(7, 'weekday_end_time', '17:00', '2025-05-28 09:33:55', '2025-05-28 09:33:55'),
(8, 'weekend_start_time', '08:00', '2025-05-28 09:33:55', '2025-05-28 09:33:55'),
(9, 'weekend_end_time', '18:00', '2025-05-28 09:33:55', '2025-05-28 09:33:55'),
(10, 'holiday_start_time', '08:00', '2025-05-28 09:33:55', '2025-05-28 09:33:55'),
(11, 'holiday_end_time', '18:00', '2025-05-28 09:33:55', '2025-05-28 09:33:55'),
(12, 'maintenance_mode', '0', '2025-05-28 09:33:55', '2025-05-28 09:33:55'),
(13, 'max_reservations_per_day', '100', '2025-05-28 09:33:55', '2025-05-28 09:33:55'),
(14, 'payment_confirmation_required', '1', '2025-05-28 09:33:55', '2025-05-28 09:33:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `whatsapp` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `whatsapp`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '08990559840', 'admin@tamankopsesciseeng.com', '$2y$10$njH3UfwfH7lbMgu6YNeu1eSIJmOVFWgxcZc4NJOrMV.CWuqsHq.xW', 'admin', '2025-05-28 07:29:52', '2025-05-29 01:45:08'),

-- Indexes for dumped tables
--

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `package_categories`
--
ALTER TABLE `package_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_facilities`
--
ALTER TABLE `package_facilities`
  ADD PRIMARY KEY (`package_id`,`facility_id`),
  ADD KEY `facility_id` (`facility_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_id` (`reservation_id`),
  ADD KEY `payment_method_id` (`payment_method_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `package_id` (`package_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `package_categories`
--
ALTER TABLE `package_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `packages_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `package_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `package_facilities`
--
ALTER TABLE `package_facilities`
  ADD CONSTRAINT `package_facilities_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `package_facilities_ibfk_2` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
