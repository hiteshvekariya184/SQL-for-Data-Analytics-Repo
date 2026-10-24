-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2026 at 05:51 PM
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
-- Database: `food_delivery_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `city`, `phone`) VALUES
(1, 'Rahul Mehta', 'Mumbai', '9876500001'),
(2, 'Priya Shah', 'Ahmedabad', '9876500002'),
(3, 'Amit Verma', 'Delhi', '9876500003'),
(4, 'Sneha Patel', 'Mumbai', '9876500004'),
(5, 'Karan Singh', 'Bengaluru', '9876500005'),
(6, 'Neha Joshi', 'Ahmedabad', '9876500006'),
(7, 'Rohan Desai', 'Delhi', '9876500007'),
(8, 'Meera Iyer', 'Bengaluru', '9876500008'),
(9, 'Vikram Nair', 'Mumbai', '9876500009'),
(10, 'Anjali Rao', 'Ahmedabad', '9876500010');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_agents`
--

CREATE TABLE `delivery_agents` (
  `agent_id` int(11) NOT NULL,
  `agent_name` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_agents`
--

INSERT INTO `delivery_agents` (`agent_id`, `agent_name`, `city`, `phone`) VALUES
(1, 'Ravi Kumar', 'Mumbai', '9123400001'),
(2, 'Sanjay Patel', 'Ahmedabad', '9123400002'),
(3, 'Imran Khan', 'Delhi', '9123400003'),
(4, 'Deepa Nair', 'Bengaluru', '9123400004'),
(5, 'Arjun Mehta', 'Mumbai', '9123400005'),
(6, 'Kiran Rao', 'Bengaluru', '9123400006'),
(7, 'Manoj Yadav', 'Delhi', '9123400007'),
(8, 'Faisal Sheikh', 'Mumbai', '9123400008'),
(9, 'Hardik Parmar', 'Ahmedabad', '9123400009'),
(10, 'Suresh Reddy', 'Bengaluru', '9123400010');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `order_amount` decimal(10,2) NOT NULL,
  `order_date` date NOT NULL,
  `delivery_time_mins` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `restaurant_id`, `agent_id`, `order_amount`, `order_date`, `delivery_time_mins`) VALUES
(1, 1, 1, 1, 1400.00, '2026-10-01', 24),
(2, 2, 5, 2, 900.00, '2026-10-01', 35),
(3, 3, 8, 3, 1500.00, '2026-10-02', 28),
(4, 6, 5, 2, 1200.00, '2026-10-02', 34),
(5, 4, 1, 8, 700.00, '2026-10-03', 23),
(6, 2, 6, 9, 700.00, '2026-10-03', 38),
(7, 1, 2, 5, 1800.00, '2026-10-04', 31),
(8, 5, 10, 4, 500.00, '2026-10-04', 18),
(9, 3, 9, 7, 1300.00, '2026-10-05', 33),
(10, 9, 2, 1, 750.00, '2026-10-05', 30),
(11, 6, 7, 9, 1100.00, '2026-10-06', 30),
(12, 4, 4, 1, 600.00, '2026-10-06', 19),
(13, 2, 7, 2, 1000.00, '2026-10-07', 29),
(14, 7, 8, 7, 600.00, '2026-10-07', 31),
(15, 1, 3, 8, 1200.00, '2026-10-08', 27),
(16, 8, 10, 4, 400.00, '2026-10-08', 19),
(17, 3, 8, 3, 1600.00, '2026-10-09', 30),
(18, 5, 10, 6, 450.00, '2026-10-09', 22),
(19, 10, 6, 9, 350.00, '2026-10-09', 33),
(20, 6, 5, 2, 950.00, '2026-10-10', 36),
(21, 9, 3, 8, 800.00, '2026-10-10', 26),
(22, 4, 3, 5, 650.00, '2026-10-11', 28),
(23, 1, 1, 1, 900.00, '2026-10-12', 22),
(24, 7, 9, 3, 600.00, '2026-10-12', 27),
(25, 2, 5, 9, 850.00, '2026-10-13', 32),
(26, 9, 4, 5, 650.00, '2026-10-13', 20),
(27, 3, 9, 7, 1200.00, '2026-10-14', 26),
(28, 8, 10, 6, 500.00, '2026-10-14', 23),
(29, 4, 3, 8, 500.00, '2026-10-14', 24),
(30, 1, 2, 5, 1100.00, '2026-10-15', 29),
(31, 5, 10, 10, 550.00, '2026-10-15', 24),
(32, 10, 7, 2, 250.00, '2026-10-15', 28),
(33, 9, 2, 5, 500.00, '2026-10-15', 28),
(34, 6, 6, 9, 800.00, '2026-10-16', 25),
(35, 4, 4, 8, 550.00, '2026-10-16', 21),
(36, 1, 1, 1, 650.00, '2026-10-16', 25),
(37, 3, 8, 3, 700.00, '2026-10-16', 29),
(38, 7, 9, 7, 300.00, '2026-10-16', 28);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `restaurant_id` int(11) NOT NULL,
  `restaurant_name` varchar(50) NOT NULL,
  `cuisine_type` varchar(30) DEFAULT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`restaurant_id`, `restaurant_name`, `cuisine_type`, `city`) VALUES
(1, 'Spice Villa', 'North Indian', 'Mumbai'),
(2, 'Tandoor Tales', 'Tandoori', 'Mumbai'),
(3, 'Sea Breeze', 'Seafood', 'Mumbai'),
(4, 'Chaat Corner', 'Street Food', 'Mumbai'),
(5, 'Pizza Hub', 'Italian', 'Ahmedabad'),
(6, 'Dosa Corner', 'South Indian', 'Ahmedabad'),
(7, 'Garden Thali', 'Gujarati', 'Ahmedabad'),
(8, 'Biryani House', 'Mughlai', 'Delhi'),
(9, 'Punjabi Dhaba', 'North Indian', 'Delhi'),
(10, 'Burger Point', 'Fast Food', 'Bengaluru');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_daily_order_summary`
-- (See below for the actual view)
--
CREATE TABLE `vw_daily_order_summary` (
`order_date` date
,`customer_name` varchar(50)
,`restaurant_name` varchar(50)
,`agent_name` varchar(50)
,`order_amount` decimal(10,2)
,`delivery_time_mins` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_daily_order_summary`
--
DROP TABLE IF EXISTS `vw_daily_order_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_daily_order_summary`  AS SELECT `orders`.`order_date` AS `order_date`, `customers`.`customer_name` AS `customer_name`, `restaurants`.`restaurant_name` AS `restaurant_name`, `delivery_agents`.`agent_name` AS `agent_name`, `orders`.`order_amount` AS `order_amount`, `orders`.`delivery_time_mins` AS `delivery_time_mins` FROM (((`orders` join `customers` on(`orders`.`customer_id` = `customers`.`customer_id`)) join `restaurants` on(`orders`.`restaurant_id` = `restaurants`.`restaurant_id`)) join `delivery_agents` on(`orders`.`agent_id` = `delivery_agents`.`agent_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `delivery_agents`
--
ALTER TABLE `delivery_agents`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_orders_customer` (`customer_id`),
  ADD KEY `fk_orders_restaurant` (`restaurant_id`),
  ADD KEY `fk_orders_agent` (`agent_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`restaurant_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_agent` FOREIGN KEY (`agent_id`) REFERENCES `delivery_agents` (`agent_id`),
  ADD CONSTRAINT `fk_orders_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `fk_orders_restaurant` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
