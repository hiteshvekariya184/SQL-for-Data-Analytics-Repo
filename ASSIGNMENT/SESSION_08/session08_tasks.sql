-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2026 at 09:27 AM
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
-- Database: `session08_tasks`
--

-- --------------------------------------------------------

--
-- Table structure for table `customersegments`
--

CREATE TABLE `customersegments` (
  `segment_id` int(11) NOT NULL,
  `segment_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customersegments`
--

INSERT INTO `customersegments` (`segment_id`, `segment_name`) VALUES
(1, 'Premium'),
(2, 'Regular'),
(3, 'New');

-- --------------------------------------------------------

--
-- Stand-in structure for view `inner_join`
-- (See below for the actual view)
--
CREATE TABLE `inner_join` (
`username` varchar(50)
,`product` varchar(100)
,`amount` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `left_join`
-- (See below for the actual view)
--
CREATE TABLE `left_join` (
`username` varchar(50)
,`product` varchar(100)
,`amount` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product`, `amount`) VALUES
(1, 1, 'Paneer Burger', 180.00),
(2, 1, 'Masala Dosa', 120.00),
(3, 2, 'Veg Pizza', 350.00),
(4, 2, 'Cold Coffee', 90.00),
(5, 1, 'French Fries', 100.00);

-- --------------------------------------------------------

--
-- Stand-in structure for view `right_join`
-- (See below for the actual view)
--
CREATE TABLE `right_join` (
`username` varchar(50)
,`product` varchar(100)
,`amount` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `segment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `city`, `segment_id`) VALUES
(1, 'Hitesh', 'Ahmedabad', 1),
(2, 'Rahul', 'Surat', 2),
(3, 'Priya', 'Rajkot', 3),
(4, 'Amit', 'Vadodara', NULL),
(5, 'Neha', 'Mumbai', NULL),
(6, 'Hitesh', 'Ahmedabad', NULL),
(7, 'Rahul', 'Surat', NULL),
(8, 'Priya', 'Rajkot', NULL);

-- --------------------------------------------------------

--
-- Structure for view `inner_join`
--
DROP TABLE IF EXISTS `inner_join`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `inner_join`  AS SELECT `users`.`username` AS `username`, `orders`.`product` AS `product`, `orders`.`amount` AS `amount` FROM (`users` join `orders` on(`users`.`user_id` = `orders`.`order_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `left_join`
--
DROP TABLE IF EXISTS `left_join`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `left_join`  AS SELECT `users`.`username` AS `username`, `orders`.`product` AS `product`, `orders`.`amount` AS `amount` FROM (`users` left join `orders` on(`users`.`user_id` = `orders`.`order_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `right_join`
--
DROP TABLE IF EXISTS `right_join`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `right_join`  AS SELECT `users`.`username` AS `username`, `orders`.`product` AS `product`, `orders`.`amount` AS `amount` FROM (`orders` left join `users` on(`users`.`user_id` = `orders`.`order_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customersegments`
--
ALTER TABLE `customersegments`
  ADD PRIMARY KEY (`segment_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_user_segment` (`segment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customersegments`
--
ALTER TABLE `customersegments`
  MODIFY `segment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_user_segment` FOREIGN KEY (`segment_id`) REFERENCES `customersegments` (`segment_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
