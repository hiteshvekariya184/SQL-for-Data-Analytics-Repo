-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2026 at 11:37 AM
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
-- Database: `tasks_01`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `city`, `phone`) VALUES
(1, 'Rahul Mehta', 'Mumbai', '9876500001'),
(2, 'Priya Shah', 'Ahmedabad', '9876500002'),
(3, 'Amit Verma', 'Delhi', '9876500003'),
(4, 'Sneha Patel', 'Mumbai', '9876500004'),
(5, 'Karan Singh', 'Bengaluru', '9876500005'),
(6, 'Neha Joshi', 'Ahmedabad', '9876500006'),
(7, 'Rohan Desai', 'Delhi', '9876500007'),
(8, 'Meera Iyer', 'Mumbai', '9876500008');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `delivery_id` int(11) NOT NULL,
  `agent_name` varchar(50) DEFAULT NULL,
  `restaurant_name` varchar(50) DEFAULT NULL,
  `delivery_time_mins` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`delivery_id`, `agent_name`, `restaurant_name`, `delivery_time_mins`, `order_date`) VALUES
(1, 'Ravi Kumar', 'Spice Villa', 22, '2026-10-01'),
(2, 'Sanjay Patel', 'Pizza Hub', 35, '2026-10-01'),
(3, 'Imran Khan', 'Biryani House', 28, '2026-10-02'),
(4, 'Deepa Nair', 'Burger Point', 18, '2026-10-02'),
(5, 'Ravi Kumar', 'Tandoor Tales', 26, '2026-10-03'),
(6, 'Arjun Mehta', 'Dosa Corner', 42, '2026-10-03'),
(7, 'Sanjay Patel', 'Spice Villa', 38, '2026-10-04'),
(8, 'Imran Khan', 'Pizza Hub', 31, '2026-10-05'),
(9, 'Deepa Nair', 'Biryani House', 24, '2026-10-05'),
(10, 'Arjun Mehta', 'Burger Point', 45, '2026-10-06'),
(11, 'Ravi Kumar', 'Dosa Corner', 20, '2026-10-07'),
(12, 'Sanjay Patel', 'Tandoor Tales', 32, '2026-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_orders`
--

CREATE TABLE `delivery_orders` (
  `order_id` int(11) NOT NULL,
  `restaurant_name` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `order_status` varchar(20) DEFAULT NULL,
  `order_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_orders`
--

INSERT INTO `delivery_orders` (`order_id`, `restaurant_name`, `city`, `total_amount`, `order_status`, `order_date`) VALUES
(1, 'Spice Villa', 'Mumbai', 4200.00, 'Delivered', '2026-10-01'),
(2, 'Pizza Hub', 'Ahmedabad', 3500.00, 'Delivered', '2026-10-01'),
(3, 'Biryani House', 'Delhi', 4000.00, 'Delivered', '2026-10-02'),
(4, 'Spice Villa', 'Mumbai', 3800.00, 'Delivered', '2026-10-02'),
(5, 'Burger Point', 'Bengaluru', 1500.00, 'Delivered', '2026-10-03'),
(6, 'Tandoor Tales', 'Mumbai', 6000.00, 'Delivered', '2026-10-03'),
(7, 'Pizza Hub', 'Ahmedabad', 2800.00, 'Delivered', '2026-10-04'),
(8, 'Spice Villa', 'Mumbai', 5100.00, 'Delivered', '2026-10-05'),
(9, 'Burger Point', 'Bengaluru', 1800.00, 'Cancelled', '2026-10-05'),
(10, 'Biryani House', 'Delhi', 3300.00, 'Delivered', '2026-10-06'),
(11, 'Tandoor Tales', 'Mumbai', 5500.00, 'Delivered', '2026-10-06'),
(12, 'Pizza Hub', 'Ahmedabad', 1200.00, 'Delivered', '2026-10-07'),
(13, 'Burger Point', 'Bengaluru', 900.00, 'Delivered', '2026-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `food_orders`
--

CREATE TABLE `food_orders` (
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `restaurant_name` varchar(50) DEFAULT NULL,
  `item_ordered` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price_per_item` decimal(8,2) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_orders`
--

INSERT INTO `food_orders` (`order_id`, `customer_name`, `restaurant_name`, `item_ordered`, `quantity`, `price_per_item`, `order_date`, `city`) VALUES
(1, 'Rahul Mehta', 'Spice Villa', 'Paneer Butter Masala', 2, 280.00, '2026-10-01', 'Mumbai'),
(2, 'Priya Shah', 'Pizza Hub', 'Margherita Pizza', 1, 350.00, '2026-10-01', 'Ahmedabad'),
(3, 'Amit Verma', 'Biryani House', 'Chicken Biryani', 3, 320.00, '2026-10-02', 'Delhi'),
(4, 'Sneha Patel', 'Spice Villa', 'Dal Tadka', 2, 180.00, '2026-10-02', 'Mumbai'),
(5, 'Karan Singh', 'Burger Point', 'Cheese Burger', 4, 150.00, '2026-10-03', 'Bengaluru'),
(6, 'Neha Joshi', 'Pizza Hub', 'Farmhouse Pizza', 2, 450.00, '2026-10-04', 'Mumbai'),
(7, 'Rohan Desai', 'Biryani House', 'Veg Biryani', 1, 260.00, '2026-10-05', 'Ahmedabad'),
(8, 'Anjali Rao', 'Burger Point', 'Veg Burger', 3, 120.00, '2026-10-05', 'Bengaluru'),
(9, 'Vikram Nair', 'Spice Villa', 'Butter Naan', 6, 50.00, '2026-10-06', 'Delhi'),
(10, 'Meera Iyer', 'Tandoor Tales', 'Tandoori Chicken', 2, 520.00, '2026-10-07', 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `order_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `restaurant_id`, `amount`, `order_date`) VALUES
(101, 1, 1, 560.00, '2026-10-01'),
(102, 2, 2, 350.00, '2026-10-01'),
(103, 3, 3, 960.00, '2026-10-02'),
(104, 4, 2, 450.00, '2026-10-02'),
(105, 5, 4, 600.00, '2026-10-03'),
(106, 6, 5, 1040.00, '2026-10-04'),
(107, 1, 5, 780.00, '2026-10-05'),
(108, 2, 6, 240.00, '2026-10-05'),
(109, 3, 1, 520.00, '2026-10-06'),
(110, 6, 6, 300.00, '2026-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `restaurant_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `cuisine_type` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`restaurant_id`, `name`, `cuisine_type`, `city`) VALUES
(1, 'Spice Villa', 'North Indian', 'Mumbai'),
(2, 'Pizza Hub', 'Italian', 'Ahmedabad'),
(3, 'Biryani House', 'Mughlai', 'Delhi'),
(4, 'Burger Point', 'Fast Food', 'Bengaluru'),
(5, 'Tandoor Tales', 'North Indian', 'Mumbai'),
(6, 'Dosa Corner', 'South Indian', 'Ahmedabad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `delivery_orders`
--
ALTER TABLE `delivery_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `food_orders`
--
ALTER TABLE `food_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

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
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
