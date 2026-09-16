-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2026 at 10:30 AM
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
-- Database: `food_delivery_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `apporders`
--

CREATE TABLE `apporders` (
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `order_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apporders`
--

INSERT INTO `apporders` (`order_id`, `customer_name`, `amount`, `order_date`) VALUES
(1, 'Hitesh', 450.00, '2026-09-01'),
(2, 'Rahul', 320.00, '2026-09-02'),
(3, 'Priya', 550.00, '2026-09-03');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `registration_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instoreorders`
--

CREATE TABLE `instoreorders` (
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `order_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instoreorders`
--

INSERT INTO `instoreorders` (`order_id`, `customer_name`, `amount`, `order_date`) VALUES
(1, 'Amit', 280.00, '2026-09-01'),
(2, 'Neha', 620.00, '2026-09-02'),
(3, 'Rahul', 320.00, '2026-09-03');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_data`
--

CREATE TABLE `restaurant_data` (
  `restaurant_id` int(11) NOT NULL,
  `restaurant_name` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `cuisine_type` varchar(50) NOT NULL,
  `rating` float DEFAULT NULL,
  `opening_time` time NOT NULL,
  `closing_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant_data`
--

INSERT INTO `restaurant_data` (`restaurant_id`, `restaurant_name`, `city`, `cuisine_type`, `rating`, `opening_time`, `closing_time`) VALUES
(1, 'Spice Garden', 'Ahmedabad', 'Indian', 4.5, '10:00:00', '23:00:00'),
(2, 'Pizza Hub', 'Surat', 'Italian', 4.2, '11:00:00', '22:30:00'),
(3, 'Dosa Corner', 'Vadodara', 'South Indian', 4.6, '08:00:00', '22:00:00'),
(4, 'Burger House', 'Rajkot', 'Fast Food', 4.1, '11:00:00', '23:30:00'),
(5, 'The Food Factory', 'Ahmedabad', 'Multi-Cuisine', 4.4, '10:30:00', '23:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apporders`
--
ALTER TABLE `apporders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `instoreorders`
--
ALTER TABLE `instoreorders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `restaurant_data`
--
ALTER TABLE `restaurant_data`
  ADD PRIMARY KEY (`restaurant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apporders`
--
ALTER TABLE `apporders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instoreorders`
--
ALTER TABLE `instoreorders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `restaurant_data`
--
ALTER TABLE `restaurant_data`
  MODIFY `restaurant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
