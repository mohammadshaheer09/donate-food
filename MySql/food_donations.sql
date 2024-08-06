-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2024 at 05:21 AM
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
-- Database: `food_donations`
--

-- --------------------------------------------------------

--
-- Table structure for table `adp`
--

CREATE TABLE `adp` (
  `admin` varchar(11) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adp`
--

INSERT INTO `adp` (`admin`, `admin_pass`) VALUES
('admin', 'asa');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `meal` varchar(256) NOT NULL,
  `quantity` int(100) NOT NULL,
  `category` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `meal`, `quantity`, `category`) VALUES
(86, 6, 'idli', 'veg', 1, 'cooked-food'),
(87, 6, 'dosa', 'veg', 1, 'cooked-food'),
(88, 6, 'vada', 'veg', 1, 'cooked-food');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(11) NOT NULL,
  `foodname` varchar(255) NOT NULL,
  `meal` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneno` varchar(20) NOT NULL,
  `district` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `foodname`, `meal`, `category`, `quantity`, `email`, `phoneno`, `district`, `address`, `submission_date`) VALUES
(45, 'dosa', 'veg', 'cooked-food', 25, 'sa1@gmail.com', '1234567891', 'chennai', 'puttur', '2024-07-22 11:58:23'),
(46, 'dosa', 'veg', 'cooked-food', 5, 'sha12@gmail.com', '1234567891', 'chennai', 'puttur', '2024-07-23 19:02:18'),
(47, 'dosa', 'veg', 'cooked-food', 5, 'sha12@gmail.com', '1234567891', 'chennai', 'puttur', '2024-07-23 19:02:25'),
(48, 'dosa', 'veg', 'cooked-food', 5, 'sha12@gmail.com', '1234567891', 'chennai', 'puttur', '2024-07-23 19:02:28'),
(49, 'dosa', 'veg', 'cooked-food', 5, 'sha12@gmail.com', '1234567891', 'chennai', 'puttur', '2024-07-23 19:02:32'),
(50, 'idli', 'veg', 'cooked-food', 5, 'sha12@gmail.com', '1234567891', 'chennai', 'puttur', '2024-07-23 19:26:35'),
(51, 'vada', 'veg', 'cooked-food', 3, 'sha12@gmail.com', '1234567891', 'chennai', 'puttur', '2024-07-23 19:29:15'),
(52, 'pulav', 'veg', 'cooked-food', 3, 'sha12@gmail.com', '1234567891', 'chennai', 'puttur', '2024-07-23 19:29:42'),
(53, 'pulav', 'veg', 'cooked-food', 3, 'sha12@gmail.com', '1234567891', 'chennai', 'puttur', '2024-07-23 19:29:47'),
(54, 'dosa', 'veg', 'cooked-food', 5, 'sg12@vh.com', '123454678', 'chennai', 'puttur', '2024-07-23 19:33:07'),
(55, 'dosa', 'veg', 'cooked-food', 5, 'sg12@vh.com', '123454678', 'chennai', 'puttur', '2024-07-23 19:35:58'),
(56, 'dosa', 'veg', 'cooked-food', 5, 'sg12@vh.com', '123454678', 'chennai', 'puttur', '2024-07-23 19:36:02'),
(57, 'idli', 'veg', 'cooked-food', 5, 'sg12@vh.com', '123454678', 'chennai', 'puttur', '2024-07-23 19:36:38'),
(58, 'dosa', 'veg', 'cooked-food', 9, 'sha2@gmail.com', '22334', 'chennai', 'tttt', '2024-07-29 18:06:58'),
(59, 'dosa', 'veg', 'cooked-food', 9, 'sha2@gmail.com', '22334', 'chennai', 'tttt', '2024-07-29 18:07:39'),
(60, 'biriyani', 'Non-veg', 'cooked-food', 9, 'sha2@gmail.com', '22334', 'chennai', 'tttt', '2024-07-29 18:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(100) NOT NULL,
  `foodname` varchar(256) NOT NULL,
  `meal` varchar(256) NOT NULL,
  `quantity` int(100) NOT NULL,
  `category` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `foodname`, `meal`, `quantity`, `category`) VALUES
(1, 'dosa', 'veg', 39, 'cooked-food'),
(2, 'idli', 'veg', 16, 'cooked-food'),
(3, 'vada', 'veg', 11, 'cooked-food'),
(4, 'pulav', 'veg', 11, 'cooked-food'),
(5, 'biriyani', 'Non-veg', 9, 'cooked-food');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(14, 1, 'sam', 'shaheer1440@gmail.com', '45234', 'sanida'),
(16, 0, 'Sanida', 'shaheer1443@gmail.com', '9865678945', 'Hello');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `placed_on` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `address`, `placed_on`) VALUES
(15, 6, 'sha', '577', 'sha12@gmail.com', 'flat no. 555, esdf, hjnu, hn - 67878', '22-Jul-2024'),
(16, 8, 'mohammad', '9164208714', 'sha2@gmail.com', 'flat no. 11, koornadka, puttur, India - 574202', '29-Jul-2024');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(6, 'sha', 'sha12@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'user'),
(7, 'as', 'sa1@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'admin'),
(8, 'mohammad', 'sha2@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(9, 'mohammads', 'sha22@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
