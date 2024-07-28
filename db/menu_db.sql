-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2024 at 02:12 PM
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
-- Database: `menu_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user`, `password`) VALUES
(1, 'admin', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `quantity` varchar(120) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `description`, `quantity`, `price`) VALUES
(11, 'SHAVIGE', '', '1KG', 100.00),
(12, 'SHAVIGE', '', '500GMS', 50.00),
(13, 'DOSA BATTER', '', '1KG', 70.00),
(14, 'APPAM BATTER', '', '1KG', 100.00),
(15, 'PICKELS', '', '1PC', 100.00),
(16, 'SEASONAL PICKLES', '', '1PC', 200.00),
(17, 'THOKKU', '', '1PC', 100.00),
(18, 'PUDI', '', '250GMS', 150.00),
(19, 'ONION THOKKU', '', '1PC', 160.00),
(20, 'PULYOGARE GOJJU', '', '250GMS', 100.00),
(21, 'KASHI HALWA', '', '250GMS', 150.00),
(22, 'TIRUPATI VADA', '', '1PC', 100.00),
(23, 'CURD PAPAD', '', '1PC', 100.00),
(24, 'CURD MASALA PAPAD', '', '1PC', 150.00),
(25, 'CURD MURUKKU', '', '250GMS', 100.00),
(26, 'BANANA CHIPS', '', '250GMS', 100.00),
(27, 'POTATO CHIPS', '', '200GMS', 100.00),
(28, 'SABBAKKI NIPPATU', '', '200GMS', 100.00),
(29, 'SAMOSA', '', '250GMS', 100.00),
(30, 'RAVA IDLLI /DOSA MIX', '', '500GMS', 120.00),
(31, 'RAVA KODBELLE', '', '250GMS', 100.00),
(32, 'MIXTURE', '', '500GRMS', 120.00),
(33, 'CASHEW MIXTURE', '', '500GMS', 250.00),
(34, 'RED RICE MENTHYA KODBELLE', '', '200GMS', 80.00),
(35, 'CURD KODBELLE', '', '200GMS', 80.00),
(36, 'MINI KODBELLE', '', '200GMS', 80.00),
(37, 'NAMAKAL CHAKKLI', '', '200GMS', 80.00),
(38, 'PAPER AVALAKKI', '', '200GMS', 80.00),
(39, 'PUFFED AVALAKKI', '', '200GMS', 80.00),
(40, 'RED RICE AVALAKKI', '', '200GMS', 80.00),
(41, 'SABBUDANA MIXTURE', '', '200GMS', 80.00),
(42, 'KARA BOONDI', '', '250GMS', 100.00),
(43, 'TROPICANA CHIPS', '', '250GMS', 100.00),
(44, 'CURRYLEAVES KODBELLE', '', '250GMS', 100.00),
(45, 'SEV', '', '250GMS', 100.00),
(46, 'SMALL KODBELLE', '', '250GMS', 100.00),
(47, 'TROPICANA STICK', '', '250GMS', 100.00),
(48, 'MASALA POORI', '', '200GMS', 70.00),
(49, 'LEMON POORI', '', '200GMS', 70.00),
(50, 'PUDDINA POORI', '', '200GMS', 70.00),
(51, 'GARLIC POORI', '', '200GMS', 70.00),
(52, 'PUNGUNURU POORI', '', '200GMS', 70.00),
(53, 'PUNGUNURU GARLIC POORI', '', '200GMS', 70.00),
(54, 'NARAGIS POORI', '', '200GMS', 80.00),
(55, 'STUFFED CHILLI', '', '100GMS', 100.00),
(56, 'CURD CHILLI', '', '100GMS', 50.00),
(57, 'CHIKKI', '', '200GMS', 80.00),
(58, 'CHINTAMANI', '', '200GMS', 60.00),
(59, 'CONGRESS', '', '200GMS', 80.00),
(60, 'MONG DAL', '', '200GMS', 80.00),
(61, 'BONDA KADDALEKAYI', '', '200GMS', 80.00),
(62, 'CHANNA DAL', '', '200GMS', 80.00),
(63, 'MADDUR VADA', '', '200GMS', 100.00),
(64, 'KARJIKAYYEI', '', '200GMS', 100.00),
(65, 'BARFFI', '', '200GMS', 80.00),
(66, 'POORI UNDE', '', '200GMS', 80.00),
(67, 'AVALAKKI POORI UNDE', '', '200GMS', 80.00),
(68, 'WHITHE TIL UNDE', '', '200GMS', 80.00),
(69, 'BLACK TIL UNDE', '', '200GMD', 80.00),
(70, 'PUTTAREKKALU', '', '1PC', 150.00),
(71, 'PUTTAREKKALU DRYFRUITS', '', '1PC', 180.00),
(72, 'SAJJE ROTI', '', '1PC', 40.00),
(73, 'DRYFRUIT CHIKKI', '', '1PC', 20.00),
(74, 'BOTI', '', '200GMS', 50.00),
(75, 'HARALLU ONION SONDIGE', '', '200GMS', 120.00),
(76, 'HARALLU SONDIGE', '', '200GMS', 100.00),
(77, 'SWEET PAYASA', '', '1KG', 320.00),
(78, 'SWEET PAYASA', '', '500GMS', 160.00),
(79, 'SWEET PAYASA', '', '250GMS', 80.00),
(80, 'DRY POTATO CHIPS', '', '200GMS', 80.00),
(81, 'KARA SHAVIGE', '', '1PLATE', 40.00),
(82, 'SWEET SHAVIGE', '', '1PLATE', 60.00),
(83, 'PULYOGARE SHAVIGE', '', '1PLATE', 50.00),
(84, 'GHEE PUDI SHAVIGE', '', '1PLATE', 70.00),
(85, 'CURD SHAVIGE', '', '1PLATE', 60.00),
(86, 'KARA SHAVIGE', '', '1KG', 200.00),
(87, 'KARA SHAVIGE', '', '500GMS', 100.00),
(88, 'PULYOGARE SHAVIGE', '', '1KG', 250.00),
(89, 'PULYOGARE SHAVIGE', '', '500GMS', 125.00),
(90, 'SPL KARA SHAVIGE', '', '1KG', 300.00),
(91, 'SPL KARA SHAVIGE', '', '500GMS', 150.00),
(92, 'DELUXE SPL KARA SHAVIGE', '', '1KG', 350.00),
(93, 'DELUXE SPL KARA SHAVIGE', '', '500GMS', 175.00),
(94, 'RAGI SHAVIGE', '', '1KG', 150.00),
(95, 'RAGI SHAVIGE', '', '500GMS', 75.00),
(96, 'SEASONAL GOJJU', '', '250GMS', 150.00),
(97, 'TOMATO CHUTNEY', '', '250GMS', 100.00),
(98, 'PINEAPPLE CHUTNEY', '', '250GMS', 150.00),
(99, 'BAG SMALL', '', '1PC', 10.00),
(100, 'BAG BIG', '', '1PC', 20.00),
(101, 'CONTAINER', '', '1PC', 5.00),
(102, 'CONTAINER', '', '1PC', 10.00),
(103, 'DRYFRUITS LADDU', '', '1PC', 120.00),
(104, 'FLAXSEEDS LADDU', '', '1PC', 120.00),
(105, 'DATES LADDU', '', '1PC', 120.00),
(106, 'DRY BOONDI', '', '200GMS', 60.00),
(107, 'RICE PUFFED POORI', '', '200GMS', 80.00),
(108, 'BENNE MURUKKU', '', '250GMS', 100.00),
(109, 'SHANKRAPOOLI', '', '200GMS', 80.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
