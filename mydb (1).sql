-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2021 at 08:38 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `ip` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `img` text NOT NULL,
  `text` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `product_name` text DEFAULT NULL,
  `article_number` text DEFAULT NULL,
  `box` text DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `qty_type` text DEFAULT NULL,
  `retail` text DEFAULT NULL,
  `up` text DEFAULT NULL,
  `vat` text DEFAULT NULL,
  `price` text DEFAULT NULL,
  `price_gel` text DEFAULT NULL,
  `transport` text DEFAULT NULL,
  `import` text DEFAULT NULL,
  `service_price` text DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `total_price` text DEFAULT NULL,
  `qty_gel_price` text DEFAULT NULL,
  `warehouse` text NOT NULL,
  `addDate` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `code`, `product_name`, `article_number`, `box`, `qty`, `qty_type`, `retail`, `up`, `vat`, `price`, `price_gel`, `transport`, `import`, `service_price`, `balance`, `total_price`, `qty_gel_price`, `warehouse`, `addDate`, `time`) VALUES
(161004026, '54', 'პურის საცხობი', NULL, NULL, 2, '1', '3.6740000000000004', NULL, '0.671', '2.2', NULL, NULL, NULL, NULL, 0, '4.4', NULL, '4', '2021-06-28 01:38:38', '2021-06-28 05:39:54'),
(161004101, '324', '325', NULL, NULL, 3, '1', '5.01', NULL, '1.37', '3', NULL, NULL, NULL, NULL, 0, '9', NULL, '4', '2021-06-28 12:47:51', '2021-06-28 12:47:57'),
(161004102, '54', '322', NULL, NULL, 3, '2', '56.78', NULL, '15.6', '34', NULL, NULL, NULL, NULL, 0, '102', NULL, '4', '2021-06-28 08:47:58', '2021-06-28 12:48:04'),
(161004113, '54', '34', NULL, NULL, 4, '1', '5.01', NULL, '1.83', '3', NULL, NULL, NULL, NULL, 0, '12', NULL, '4', '2021-06-28 13:30:45', '2021-06-28 13:31:05'),
(161004114, '43', '4534', NULL, NULL, 43, '1', '5734.78', NULL, '22 500', '3434', NULL, NULL, NULL, NULL, 0, '147662', NULL, '9', '2021-06-28 09:31:12', '2021-06-28 13:31:18');

-- --------------------------------------------------------

--
-- Table structure for table `shopswarehouse`
--

CREATE TABLE `shopswarehouse` (
  `sh_w_id` int(11) NOT NULL,
  `warehouse_name` text NOT NULL,
  `address` text NOT NULL,
  `phone` text NOT NULL,
  `product_count` text NOT NULL,
  `addDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shopswarehouse`
--

INSERT INTO `shopswarehouse` (`sh_w_id`, `warehouse_name`, `address`, `phone`, `product_count`, `addDate`, `time`) VALUES
(3, 'ST_saburtalo', 'ცინცაძის 45', '555412454', '0', '2021-06-17 09:53:28', '2021-06-17 09:53:28'),
(4, 'ST', 'გურამიშვლის 45', '555414784', '24', '2021-06-25 06:59:15', '2021-06-25 06:59:15'),
(6, 'ST_Samgori', 'გაბრიელ სალოსის 10', '598171414', '25', '2021-06-25 07:02:59', '2021-06-25 07:02:59'),
(8, 'ST_batumi', 'ბათუმი,ჭავჭავაძის 45', '322422215', '10', '2021-06-25 07:01:22', '2021-06-25 07:01:22'),
(9, 'ST_kutaisi', 'ჭავჭავაძის 54', '5981497414', '', '2021-06-28 04:29:27', '2021-06-28 08:29:50'),
(10, 'ST_Gori', 'აბაშიძის 4', '598147514', '', '2021-06-28 04:29:50', '2021-06-28 08:30:15');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `sup_id` int(11) NOT NULL,
  `company_name` text NOT NULL,
  `species` int(11) NOT NULL,
  `vat` int(11) NOT NULL,
  `identifyNumber` int(11) NOT NULL,
  `phone` text NOT NULL,
  `address` text NOT NULL,
  `company_status` text NOT NULL,
  `company_balance` text NOT NULL,
  `addDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`sup_id`, `company_name`, `species`, `vat`, `identifyNumber`, `phone`, `address`, `company_status`, `company_balance`, `addDate`, `time`) VALUES
(1402, 'შპს სტუდიო ბიფლექსი', 0, 0, 40414548, '598197373', 'კარტოზიას 10', 'creditor', '0', '2021-06-14 01:39:44', '2021-06-15 05:49:49'),
(1406, 'შპს ნიკა', 0, 1, 404254570, '555474147', 'გლდანსკი, 6 მკ, 8 კორპ, ბინა 8', 'creditor', '0', '2021-06-14 03:07:32', '2021-06-14 12:56:43'),
(1407, 'შპს გრინი', 0, 0, 404512414, '598144741', 'თბილისი', 'debetor', '0', '2021-06-16 21:06:56', '2021-06-28 04:52:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `time`) VALUES
(34, 'erekle', '$2b$10$gVRjFa0QclODURd2K.FUWe53n1Aftyrw/FZkKx58BZv/dpfrjK3x2', '2021-03-08 06:12:18'),
(45, 'giorgi', '$2b$10$9JsKoNovOqzFbk7z6asAjOhnVjp1lAf2CX6vbQR0EADqBrERr.VMG', '2021-03-10 11:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `warehousecount`
--

CREATE TABLE `warehousecount` (
  `warehouseCount_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warehousecount`
--

INSERT INTO `warehousecount` (`warehouseCount_id`, `warehouse_id`, `product_count`, `product_id`, `price`, `time`) VALUES
(102, 4, 2, 161004026, '2.2', '2021-06-28 05:39:54'),
(168, 4, 3, 161004101, '3', '2021-06-28 12:47:57'),
(169, 4, 3, 161004102, '34', '2021-06-28 12:48:04'),
(180, 4, 4, 161004113, '3', '2021-06-28 13:31:05'),
(181, 9, 43, 161004114, '3434', '2021-06-29 07:34:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `shopswarehouse`
--
ALTER TABLE `shopswarehouse`
  ADD PRIMARY KEY (`sh_w_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`sup_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `warehousecount`
--
ALTER TABLE `warehousecount`
  ADD PRIMARY KEY (`warehouseCount_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161004117;

--
-- AUTO_INCREMENT for table `shopswarehouse`
--
ALTER TABLE `shopswarehouse`
  MODIFY `sh_w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `sup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1408;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `warehousecount`
--
ALTER TABLE `warehousecount`
  MODIFY `warehouseCount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
