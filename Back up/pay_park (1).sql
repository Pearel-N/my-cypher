-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2017 at 10:50 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pay&park`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(25) NOT NULL,
  `login_id` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `login_id`, `password`, `status`) VALUES
(4, 'Pearel', 'admin', '0192023a7bbd73250516f069df18b500', 'Active'),
(5, 'Vijaya', 'vijay', '25f9e794323b453885f5181f1b624d0b', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(10) NOT NULL,
  `branch_name` varchar(25) NOT NULL,
  `branch_details` text NOT NULL,
  `address` text NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_details`, `address`, `contact_no`, `status`) VALUES
(1, 'City center', 'Mangaluru', 'Mangaluru', '7760003649', 'Active'),
(2, 'Big bazar', 'Udupi', 'Udupi', '9008663694', 'Active'),
(3, 'udupi', 'udygedhbwics', 'yuebdhw', '1234567890', 'Active'),
(4, 'shirva ', 'shirva \r\nmanchakal', 'gsgdhhbc', '1234567890', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(25) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `vehicle_no` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `mobile_no`, `address`, `vehicle_no`) VALUES
(1, 'Raj ', '9986058114', '3rd floor, city light building', 'ka123ab1212'),
(2, 'Mahesh kiran', '7894562300', '5th floor, balmatta cross', 'ka456'),
(3, 'Sudarshan', '7894561230', 'fdsasd', '5643'),
(4, 'xxx', '1234567890', 'katapadi', '12');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(10) NOT NULL,
  `emp_name` varchar(25) NOT NULL,
  `branch_id` int(10) NOT NULL,
  `login_id` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mob_no` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `emp_name`, `branch_id`, `login_id`, `password`, `mob_no`, `status`) VALUES
(1, 'Pearel Nazareth', 1, 'pearel', '350322071ccae77ae5f36fd5d097bf1a', '7760003649', 'Active'),
(2, 'Vijay', 2, 'vijay', '0eda29932f1eef898e78b7d5f08a8641', '1234567890', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `parking_cost`
--

CREATE TABLE `parking_cost` (
  `parking_cost_id` int(10) NOT NULL,
  `parking_slot_id` int(10) NOT NULL,
  `no_of_hours` int(10) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parking_cost`
--

INSERT INTO `parking_cost` (`parking_cost_id`, `parking_slot_id`, `no_of_hours`, `cost`, `status`) VALUES
(1, 1, 1, 10.00, 'Active'),
(2, 1, 2, 7.00, 'Active'),
(3, 1, 3, 7.00, 'Active'),
(4, 1, 4, 7.00, 'Active'),
(5, 1, 5, 7.00, 'Active'),
(6, 1, 6, 5.00, 'Active'),
(7, 1, 7, 5.00, 'Active'),
(8, 1, 8, 5.00, 'Active'),
(9, 1, 9, 5.00, 'Active'),
(10, 1, 10, 5.00, 'Active'),
(11, 1, 11, 5.00, 'Active'),
(12, 1, 12, 5.00, 'Active'),
(13, 1, 13, 4.00, 'Active'),
(14, 1, 14, 4.00, 'Active'),
(15, 1, 15, 4.00, 'Active'),
(16, 1, 16, 4.00, 'Active'),
(17, 1, 17, 4.00, 'Active'),
(18, 1, 18, 4.00, 'Active'),
(19, 1, 19, 4.00, 'Active'),
(20, 1, 20, 3.00, 'Active'),
(21, 1, 21, 3.00, 'Active'),
(22, 1, 22, 2.00, 'Active'),
(23, 1, 23, 2.00, 'Active'),
(24, 1, 24, 2.00, 'Active'),
(25, 2, 1, 20.00, 'Active'),
(26, 2, 2, 10.00, 'Active'),
(27, 2, 3, 10.00, 'Active'),
(28, 2, 4, 10.00, 'Active'),
(29, 2, 5, 10.00, 'Active'),
(30, 2, 6, 10.00, 'Active'),
(31, 2, 7, 10.00, 'Active'),
(32, 2, 8, 7.00, 'Active'),
(33, 2, 9, 7.00, 'Active'),
(34, 2, 10, 7.00, 'Active'),
(35, 2, 11, 7.00, 'Active'),
(36, 2, 12, 7.00, 'Active'),
(37, 2, 13, 7.00, 'Active'),
(38, 2, 14, 7.00, 'Active'),
(39, 2, 15, 7.00, 'Active'),
(40, 2, 16, 7.00, 'Active'),
(41, 2, 17, 5.00, 'Active'),
(42, 2, 18, 5.00, 'Active'),
(43, 2, 19, 5.00, 'Active'),
(44, 2, 20, 5.00, 'Active'),
(45, 2, 21, 5.00, 'Active'),
(46, 2, 22, 3.00, 'Active'),
(47, 2, 23, 3.00, 'Active'),
(48, 2, 24, 3.00, 'Active'),
(49, 3, 1, 20.00, 'Active'),
(50, 3, 2, 10.00, 'Active'),
(51, 3, 3, 10.00, 'Active'),
(52, 3, 4, 10.00, 'Active'),
(53, 3, 5, 10.00, 'Active'),
(54, 3, 6, 10.00, 'Active'),
(55, 3, 7, 10.00, 'Active'),
(56, 3, 8, 10.00, 'Active'),
(57, 3, 9, 10.00, 'Active'),
(58, 3, 10, 5.00, 'Active'),
(59, 3, 11, 5.00, 'Active'),
(60, 3, 12, 5.00, 'Active'),
(61, 3, 13, 5.00, 'Active'),
(62, 3, 14, 5.00, 'Active'),
(63, 3, 15, 5.00, 'Active'),
(64, 3, 16, 5.00, 'Active'),
(65, 3, 17, 5.00, 'Active'),
(66, 3, 18, 5.00, 'Active'),
(67, 3, 19, 4.00, 'Active'),
(68, 3, 20, 4.00, 'Active'),
(69, 3, 21, 3.00, 'Active'),
(70, 3, 22, 2.00, 'Active'),
(71, 3, 23, 2.00, 'Active'),
(72, 3, 24, 2.00, 'Active'),
(73, 4, 1, 15.00, 'Active'),
(74, 4, 2, 5.00, 'Active'),
(75, 4, 3, 5.00, 'Active'),
(76, 4, 4, 5.00, 'Active'),
(77, 4, 5, 5.00, 'Active'),
(78, 4, 6, 5.00, 'Active'),
(79, 4, 7, 5.00, 'Active'),
(80, 4, 8, 5.00, 'Active'),
(81, 4, 9, 4.00, 'Active'),
(82, 4, 10, 4.00, 'Active'),
(83, 4, 11, 4.00, 'Active'),
(84, 4, 12, 4.00, 'Active'),
(85, 4, 13, 4.00, 'Active'),
(86, 4, 14, 4.00, 'Active'),
(87, 4, 15, 4.00, 'Active'),
(88, 4, 16, 4.00, 'Active'),
(89, 4, 17, 4.00, 'Active'),
(90, 4, 18, 4.00, 'Active'),
(91, 4, 19, 3.00, 'Active'),
(92, 4, 20, 3.00, 'Active'),
(93, 4, 21, 3.00, 'Active'),
(94, 4, 22, 3.00, 'Active'),
(95, 4, 23, 2.00, 'Active'),
(96, 4, 24, 2.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `parking_location`
--

CREATE TABLE `parking_location` (
  `parking_location_id` int(10) NOT NULL,
  `parking_location` varchar(25) NOT NULL,
  `branch_id` int(10) NOT NULL,
  `location_img` varchar(100) NOT NULL,
  `location_address` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parking_location`
--

INSERT INTO `parking_location` (`parking_location_id`, `parking_location`, `branch_id`, `location_img`, `location_address`, `status`) VALUES
(1, '5th floor', 1, '3472CAR.png', 'Mangaluru', 'Active'),
(2, 'Ground floor', 2, '18062CAR.png', 'Udupi', 'Active'),
(4, 'udupi', 2, '17553CAR.png', 'udupi', 'Active'),
(5, 'Mangalore', 3, '30695CAR.png', 'yergtf', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `parking_record`
--

CREATE TABLE `parking_record` (
  `parking_record_id` int(10) NOT NULL,
  `receipt_no` int(10) NOT NULL,
  `bill_no` int(10) NOT NULL,
  `in_date_time` datetime NOT NULL,
  `out_date_time` datetime NOT NULL,
  `vehicle_type_id` int(10) NOT NULL,
  `parking_location_id` int(10) NOT NULL,
  `parking_slot_id` int(10) NOT NULL,
  `slot_no` int(10) NOT NULL,
  `parking_cost_id` int(10) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `total_cost` float(10,2) NOT NULL,
  `vehicle_no` varchar(25) NOT NULL,
  `customer_name` varchar(25) NOT NULL,
  `customer_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parking_record`
--

INSERT INTO `parking_record` (`parking_record_id`, `receipt_no`, `bill_no`, `in_date_time`, `out_date_time`, `vehicle_type_id`, `parking_location_id`, `parking_slot_id`, `slot_no`, `parking_cost_id`, `employee_id`, `total_cost`, `vehicle_no`, `customer_name`, `customer_id`) VALUES
(1, 101, 101, '2017-03-20 10:05:44', '2017-03-20 10:06:08', 2, 2, 3, 1, 0, 2, 0.00, 'KA 20 EJ 7106', 'Kishore', 0),
(2, 102, 102, '2017-03-20 13:53:27', '2017-03-20 13:54:12', 1, 1, 1, 7, 0, 1, 0.00, 'bbksdkcjs', 'ygfuhdcs', 0),
(3, 103, 0, '2017-03-20 13:56:47', '0000-00-00 00:00:00', 2, 1, 2, 18, 0, 1, 0.00, 'kjfureick xm', 'q0riu[ozcsklx', 0),
(4, 104, 103, '2017-03-22 09:33:42', '2017-03-22 09:33:58', 1, 1, 1, 3, 0, 1, 0.00, 'ka 20 eh 5040', 'Pearel', 0),
(5, 105, 104, '2017-03-22 10:34:33', '2017-03-22 10:35:09', 1, 1, 1, 15, 0, 1, 0.00, '8988', 'nmhh', 0),
(6, 106, 0, '2017-03-22 15:03:19', '0000-00-00 00:00:00', 2, 1, 2, 3, 0, 1, 0.00, '67', 'xxx', 0);

-- --------------------------------------------------------

--
-- Table structure for table `parking_slots`
--

CREATE TABLE `parking_slots` (
  `parking_slot_id` int(10) NOT NULL,
  `vehicle_type_id` int(10) NOT NULL,
  `parking_location_id` int(10) NOT NULL,
  `number_of_slots` int(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parking_slots`
--

INSERT INTO `parking_slots` (`parking_slot_id`, `vehicle_type_id`, `parking_location_id`, `number_of_slots`, `status`) VALUES
(1, 1, 1, 15, 'Active'),
(2, 2, 1, 25, 'Active'),
(3, 2, 2, 25, 'Active'),
(4, 2, 2, 30, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `vehicle_type_id` int(10) NOT NULL,
  `vehicle_type` varchar(25) NOT NULL,
  `vehicle_icon` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_type`
--

INSERT INTO `vehicle_type` (`vehicle_type_id`, `vehicle_type`, `vehicle_icon`, `status`) VALUES
(1, 'Two Wheeler', '219CAR.png', 'Active'),
(2, 'Four wheeler', '18296CAR.png', 'Active'),
(3, 'Four wheeler', '31765Car.jpg', 'Active'),
(4, 'Four wheeler', '26785Car.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `voucher_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `voucher_no` int(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`voucher_id`, `customer_id`, `voucher_no`, `status`) VALUES
(2, 1, 1001, 'Active'),
(3, 2, 1002, 'Active'),
(4, 3, 1003, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_transaction`
--

CREATE TABLE `voucher_transaction` (
  `vouher_transaction_id` int(10) NOT NULL,
  `voucher_id` int(10) NOT NULL,
  `transaction_type` varchar(10) NOT NULL,
  `transaction_amt` float(10,2) NOT NULL,
  `trans_date` date NOT NULL,
  `parking_record_id` int(10) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_transaction`
--

INSERT INTO `voucher_transaction` (`vouher_transaction_id`, `voucher_id`, `transaction_type`, `transaction_amt`, `trans_date`, `parking_record_id`, `note`, `status`) VALUES
(1, 0, '', 5000.00, '0000-00-00', 0, 'try', 'Active'),
(2, 0, '', 2000.00, '0000-00-00', 0, 'sdfs', 'Active'),
(3, 0, '', 2000.00, '0000-00-00', 0, 'test', 'Active'),
(4, 0, '', 8000.00, '0000-00-00', 0, 'Note test', 'Active'),
(5, 0, '', 789456.00, '0000-00-00', 0, 'test', 'Active'),
(6, 0, '', 2000.00, '0000-00-00', 0, 'Test note', 'Active'),
(7, 0, '', 500.00, '0000-00-00', 0, 'test note', 'Active'),
(8, 2, 'Credit', 1000.00, '2017-03-21', 0, 'test note', 'Active'),
(9, 4, 'Credit', 7000.00, '2017-03-22', 0, 'ghghg', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `parking_cost`
--
ALTER TABLE `parking_cost`
  ADD PRIMARY KEY (`parking_cost_id`);

--
-- Indexes for table `parking_location`
--
ALTER TABLE `parking_location`
  ADD PRIMARY KEY (`parking_location_id`);

--
-- Indexes for table `parking_record`
--
ALTER TABLE `parking_record`
  ADD PRIMARY KEY (`parking_record_id`);

--
-- Indexes for table `parking_slots`
--
ALTER TABLE `parking_slots`
  ADD PRIMARY KEY (`parking_slot_id`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`vehicle_type_id`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `voucher_transaction`
--
ALTER TABLE `voucher_transaction`
  ADD PRIMARY KEY (`vouher_transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `parking_cost`
--
ALTER TABLE `parking_cost`
  MODIFY `parking_cost_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `parking_location`
--
ALTER TABLE `parking_location`
  MODIFY `parking_location_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `parking_record`
--
ALTER TABLE `parking_record`
  MODIFY `parking_record_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `parking_slots`
--
ALTER TABLE `parking_slots`
  MODIFY `parking_slot_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  MODIFY `vehicle_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `voucher_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `voucher_transaction`
--
ALTER TABLE `voucher_transaction`
  MODIFY `vouher_transaction_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
