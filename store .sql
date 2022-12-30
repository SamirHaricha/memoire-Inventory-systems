-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06 يونيو 2022 الساعة 00:59
-- إصدار الخادم: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- بنية الجدول `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `pic` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `categories`
--

INSERT INTO `categories` (`id`, `name`, `pic`, `date`) VALUES
(18, 'Nivea', 'Nivea-pack.jpg', '2022-06-05 20:03:05'),
(20, 'Suavinex', 'suavinex.jpg', '2022-06-05 20:05:06'),
(22, 'Chicco', 'chicco.jpg', '2022-06-05 20:05:45'),
(23, 'Uriage', 'uriage.jpg', '2022-06-05 20:07:09'),
(24, 'NUK', 'nuk.jpg', '2022-06-05 20:07:51'),
(25, 'Mustela', 'mustela.JPG', '2022-06-05 20:08:10'),
(26, 'Klorane', 'klorane.jpg', '2022-06-05 20:08:29'),
(27, 'Johnson', 'johnson.png', '2022-06-05 20:10:42');

-- --------------------------------------------------------

--
-- بنية الجدول `inventeries`
--

CREATE TABLE `inventeries` (
  `id` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `supplier` varchar(222) NOT NULL,
  `name` text NOT NULL,
  `unit` text NOT NULL,
  `price` text NOT NULL,
  `company` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `inventeries`
--

INSERT INTO `inventeries` (`id`, `catId`, `supplier`, `name`, `unit`, `price`, `company`, `date`) VALUES
(23, 18, 'LTC', 'cocoa Butter', '50', '300.00', 'nivea', '2022-06-05 22:14:22'),
(24, 18, 'LTC', 'EVEN GLOW', '40', '350.00', 'nivea', '2022-06-05 22:15:21'),
(25, 18, 'LTC', 'Lingettes humides', '50', '120.00', 'nivea', '2022-06-05 22:16:05'),
(26, 18, 'LTC', 'PEARL & BEAUTY', '30', '450.00', 'nivea', '2022-06-05 22:16:46'),
(27, 18, 'LTC', 'NIVEA MEN', '30', '200.00', 'nivea', '2022-06-05 22:17:09'),
(28, 18, 'LTC', 'BB-CREAM', '20', '150.00', 'nivea', '2022-06-05 22:17:51'),
(29, 20, 'FeDex', 'Paediatric', '30', '100.00', 'suavinex', '2022-06-05 22:20:55'),
(30, 20, 'LTC', 'Nappy cream', '20', '180.00', 'suavinex', '2022-06-05 22:21:32'),
(31, 20, 'LTC', 'My First Face Cream', '20', '190.00', 'suavinex', '2022-06-05 22:22:12'),
(32, 20, 'FeDex', 'baby care essentials set', '40', '170.00', 'suavinex', '2022-06-05 22:22:50'),
(33, 20, 'LTC', 'suavenix', '15', '110.00', 'suavinex', '2022-06-05 22:24:50'),
(34, 22, 'JUMIA', 'chicco gentle body wash ', '70', '230.00', 'Chicco', '2022-06-05 22:27:10'),
(35, 22, 'JUMIA', 'chicco baby moments body lotion', '45', '450.00', 'Chicco', '2022-06-05 22:27:42'),
(36, 22, 'JUMIA', 'chicco no-tears shampoo', '30', '220.00', 'Chicco', '2022-06-05 22:28:03'),
(37, 22, 'LTC', 'chicco baby moments soap', '30', '240.00', 'Chicco', '2022-06-05 22:28:27'),
(38, 22, 'FeDex', 'chicco rich cream', '35', '280.00', 'Chicco', '2022-06-05 22:32:04'),
(39, 27, 'CODINAF', 'HUILL', '43', '860.00', 'JOHNSON', '2022-06-05 22:36:12'),
(40, 27, 'CODINAF', 'EDT', '33', '700.00', 'JOHNSON', '2022-06-05 22:36:37'),
(41, 23, 'CODINAF', 'CREAM LAVANT', '55', '250.00', 'URIAGE', '2022-06-05 22:37:32'),
(42, 22, 'LTC', '2TETENE', '53', '1400.00', 'Chicco', '2022-06-05 22:38:13'),
(43, 24, 'LTC', 'SUCETTE', '41', '460.00', 'NUK', '2022-06-05 22:38:58'),
(44, 24, 'CODINAF', 'SUCETTE 18.36M', '40', '720.00', 'NUK', '2022-06-05 22:39:49'),
(45, 27, 'LTC', 'POWDER', '40', '780.00', 'JOHNSON', '2022-06-05 22:40:26'),
(46, 22, 'LTC', 'bibron', '70', '160.00', 'Chicco', '2022-06-05 22:43:36'),
(47, 24, 'LTC', 'bibron 300ml', '20', '140.00', 'NUK', '2022-06-05 22:44:15'),
(48, 24, 'LTC', 'bibron 220ml', '40', '125.00', 'NUK', '2022-06-05 22:44:46'),
(49, 23, 'CODINAF', 'lait ', '50', '250.00', 'URIAGE', '2022-06-05 22:45:17'),
(50, 23, 'CODINAF', 'creme minirale', '44', '180.00', 'URIAGE', '2022-06-05 22:46:12'),
(51, 23, 'CODINAF', 'eau thermale', '15', '210.00', 'URIAGE', '2022-06-05 22:46:33'),
(52, 25, 'FeDex', 'spray corps', '35', '180.00', 'musti', '2022-06-05 22:47:06'),
(53, 25, 'LTC', 'eau nettoyant', '15', '220.00', 'musti', '2022-06-05 22:47:58'),
(54, 25, 'LTC', 'gel lavant doux', '50', '250.00', 'musti', '2022-06-05 22:48:27'),
(55, 25, 'LTC', 'shampo', '33', '100.00', 'musti', '2022-06-05 22:48:59'),
(56, 26, 'CODINAF', 'gel lavant', '20', '270.00', 'kloran', '2022-06-05 22:49:31'),
(57, 26, 'CODINAF', 'gel douceur', '45', '250.00', 'kloran', '2022-06-05 22:50:08'),
(58, 26, 'LTC', 'leniment ', '63', '170.00', 'kloran', '2022-06-05 22:50:38'),
(59, 26, 'CODINAF', 'savon', '15', '80.00', 'kloran', '2022-06-05 22:51:02'),
(60, 27, 'LTC', 'lotion bebe', '40', '700.00', 'JOHNSON', '2022-06-05 22:52:42'),
(61, 27, 'LTC', 'shampo ', '50', '600.00', 'JOHNSON', '2022-06-05 22:53:10'),
(62, 27, 'LTC', 'savon ', '30', '120.00', 'JOHNSON', '2022-06-05 22:54:06'),
(63, 23, 'LTC', 'huil lavant', '54', '150.00', 'URIAGE', '2022-06-05 22:55:45'),
(64, 23, 'LTC', ' eau nettoyant', '47', '220.00', 'URIAGE', '2022-06-05 22:56:11');

-- --------------------------------------------------------

--
-- بنية الجدول `sold`
--

CREATE TABLE `sold` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `contact` varchar(222) NOT NULL,
  `discount` varchar(222) NOT NULL,
  `item` varchar(222) NOT NULL,
  `amount` varchar(222) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL,
  `pic` varchar(222) NOT NULL,
  `number` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `pic`, `number`, `date`) VALUES
(1, 'samir_haricha@store.com', 'haricha', 'samir', 'samir.png', '0676172892', '2022-06-04 23:00:00'),
(2, 'guichouba_kouider@store.com', 'guichuoba', 'kouider', 'kouider.png', '0776295542', '2022-06-05 18:13:54'),
(3, 'sioussiou_youcef@store.com', 'sioussiou', 'youcef', 'youcef.png', '0796299537', '2022-06-05 18:18:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventeries`
--
ALTER TABLE `inventeries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sold`
--
ALTER TABLE `sold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `inventeries`
--
ALTER TABLE `inventeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `sold`
--
ALTER TABLE `sold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
