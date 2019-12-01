-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2017 at 07:09 AM
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
(1, 'Pearel Nazareth', 'pearel', '93bd1bb2e0389bdfb0cc8225e16fb0c0', 'Active'),
(2, 'Vijay', 'vijay', '4f9fecabbd77fba02d2497f880f44e6f', 'Active');

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
(1, 'shirva', 'jckzXLKDN', 'dfgydujmfg', '9008663694', 'Active');

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
(1, 'Pearel Nazareth', 0, 'pearel', '93bd1bb2e0389bdfb0cc8225e16fb0c0', '7760003649', 'Active'),
(2, 'vijay', 0, 'vijay', '4f9fecabbd77fba02d2497f880f44e6f', '8970131246', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `parking_cost`
--

CREATE TABLE `parking_cost` (
  `parking_cost_id` int(10) NOT NULL,
  `parking_slot_id` int(10) NOT NULL,
  `no_of_hours` float(10,2) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `parking_cost_id` int(10) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `total_cost` float(10,2) NOT NULL,
  `vehicle_no` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `parking_cost`
--
ALTER TABLE `parking_cost`
  MODIFY `parking_cost_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parking_location`
--
ALTER TABLE `parking_location`
  MODIFY `parking_location_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parking_record`
--
ALTER TABLE `parking_record`
  MODIFY `parking_record_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parking_slots`
--
ALTER TABLE `parking_slots`
  MODIFY `parking_slot_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  MODIFY `vehicle_type_id` int(10) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
