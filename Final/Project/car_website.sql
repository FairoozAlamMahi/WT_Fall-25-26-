-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2026 at 06:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `color` varchar(50) NOT NULL,
  `engine_capacity` varchar(50) NOT NULL,
  `horsepower` int(11) NOT NULL,
  `transmission` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `brand`, `model`, `color`, `engine_capacity`, `horsepower`, `transmission`, `price`, `category`, `image`) VALUES
(8, 'Toyota', 'Corolla', 'White', '1.8L', 139, 'Automatic', 2500000, 'Family', '2020-toyota-corolla-sedan.jpg'),
(9, 'Honda', 'Civic', 'Black', '2.0L', 158, 'Automatic', 2400000, 'Family', 'honda civic.jpg'),
(10, 'Toyota', 'RAV4', 'Silver', '2.5L', 203, 'AWD', 2800000, 'Family', '2019-toyota-rav4.jpg'),
(11, 'Nissan', 'X-Trail', 'Gray', '2.5L', 169, 'CVT', 2700500, 'Family', 'nissan.jpg'),
(12, 'Suzuki', 'Swift', 'Red', '1.2L', 82, 'Manual', 1500000, 'Family', '10816_suzuki_swift_505_r1.jpg'),
(13, 'Mazda', 'CX-5', 'Blue', '2.5L', 187, 'Automatic', 1229000, 'Family', '2024_Mazda.jpg'),
(14, 'Kia', 'Sportage', 'Brown', '2.4L', 181, 'Automatic', 1227000, 'Family', 'kia-sportage-review.jpg'),
(16, 'Toyota', 'Supra', 'Yellow', '3.0L', 382, 'Automatic', 8500000, 'Sports', 'Toyota_Supra.jpg'),
(17, 'Porsche', '911 Carrera', 'White', '3.0L', 379, 'Automatic', 12000000, 'Sports', 'Porsche-992-Carrera-s-001.jpg'),
(18, 'Ford', 'Mustang GT', 'Red', '5.0L', 450, 'Manual', 7800000, 'Sports', '2018_Ford_Mustang_GT_5.0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketplace_listings`
--

CREATE TABLE `marketplace_listings` (
  `id` int(11) NOT NULL,
  `car_name` varchar(100) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `cond` varchar(10) NOT NULL,
  `price` int(11) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(20) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marketplace_listings`
--

INSERT INTO `marketplace_listings` (`id`, `car_name`, `brand`, `location`, `cond`, `price`, `phonenumber`, `description`, `image`, `status`) VALUES
(1, 'Toyota Corolla', 'Toyota', 'Dhaka', 'used', 2450000, '01711112222', 'Well maintained family sedan', 'u1.jpg', 'active'),
(2, 'Honda Civic', 'Honda', 'Chattogram', 'used', 2650000, '01822223333', 'Sporty look, smooth drive', 'u2.jpg', 'active'),
(3, 'Nissan X-Trail', 'Nissan', 'Sylhet', 'used', 2850000, '01933334444', 'Spacious SUV, good condition', 'u3.jpg', 'active'),
(4, 'Toyota Allion', 'Toyota', 'Rajshahi', 'used', 2350000, '01644445555', 'Comfortable ride, clean interior', 'u4.jpg', 'active'),
(5, 'Mazda Axela', 'Mazda', 'Khulna', 'used', 2550000, '01755556666', 'Good mileage, stylish design', 'u5.jpg', 'active'),
(6, 'Toyota Premio', 'Toyota', 'Dhaka', 'used', 2750000, '01866667777', 'Popular sedan, smooth engine', 'u6.jpg', 'active'),
(7, 'Honda Vezel', 'Honda', 'Barishal', 'used', 2950000, '01977778888', 'Hybrid SUV, fuel efficient', 'u7.jpg', 'active'),
(8, 'Suzuki Swift', 'Suzuki', 'Rangpur', 'used', 1650000, '01688889999', 'Compact hatchback, easy drive', 'u8.jpg', 'active'),
(9, 'Mitsubishi Outlander', 'Mitsubishi', 'Mymensingh', 'used', 3050000, '01799990000', 'Strong build, reliable SUV', 'u9.jpg', 'active'),
(10, 'Toyota Noah', 'Toyota', 'Dhaka', 'used', 2850000, '01811112222', 'Family MPV, spacious seating', 'u10.jpg', 'active'),
(11, 'EXAMPLECAR', 'Abarth', 'Dhaka', 'used', 999999, '01839393939', 'HEHEHEHEHEHEHEHEHEHE', '1767401615_undefined - Imgur.jpg', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `role`) VALUES
(1, 'saidur rahman', 'sr02346@gmail.com', '$2y$10$6Mi9Q8qUAt.XIodFyeloQeieZOXLKebJ1Vv/PPWUgldfHgqzLfpVG', 'customer'),
(5, 'aaa', 'ddd@gmai.com', '', 'customer'),
(8, 'aaa', 'xyz@gmail.com', '111111', 'customer'),
(9, 'aaa', 'xyzz@gmail.com', '111111', 'customer'),
(10, 'aaaa', 'aaa@123.com', '1', 'customer'),
(11, 'saidur', 'ab@gmail.com', '$2y$10$HUYYF47unz0V0JpJpbWGbeEBxizl8rqdOjOTfKVLIU2ntKGGeMTb2', 'customer'),
(12, 'saidur rahman', 'asd@gmail.com', '$2y$10$05HxGTALzvrbxWB1LyZOgusPZ.nV/jZoIxkV42R7N5bX2ET7WmN86', 'customer'),
(13, 'saidur', 'ffff@.com', '$2y$10$OuZ1dcte02TX3olVbq/C6OUOZ65Ug05XeYwyQv5mAq.7Ve8fKV2Qi', 'customer'),
(14, 'saidur', 'fffff@.com', '$2y$10$iPN4EaNErCgQv5yETj7nkuWUrEPEeslCLGTIj0dKGCENvBL94WZZ2', 'customer'),
(15, 'aa', 'a@gmail.com', '$2y$10$d.Wcpi6YQet.kdDfl03OFel3cEpBTt3bJwNpSxfNCdZfUl7fZZx/2', 'customer'),
(16, 'aa', 'ffff@l.com', '$2y$10$AA0iakAqZs0PYuOoDjC/ROXPJm9PXnBz2bBdqdXOGRfVQrto1GXGe', 'customer'),
(17, 'Fairooz Alam', '23-51878-2@gmail.com', '$2y$10$Ex9AOsHZON0gSqypvIuaJew8Rm63i6tNzonOYcz4XS1V1SMewoeRC', 'admin'),
(18, 'Saidur Rahman', '23-51985-2@gmail.com', '$2y$10$sihBYplq.d5bAqIffqyQ6ulVtSeNX7d0KIWIQkFipqkS7YGtMB0Sy', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketplace_listings`
--
ALTER TABLE `marketplace_listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketplace_listings`
--
ALTER TABLE `marketplace_listings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
