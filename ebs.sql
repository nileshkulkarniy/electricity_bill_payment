-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 05:39 AM
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
-- Database: `ebs`
--

-- --------------------------------------------------------

--
-- Table structure for table `allbill`
--

CREATE TABLE `allbill` (
  `name` varchar(20) NOT NULL,
  `meter_no` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `meter_location` varchar(20) NOT NULL,
  `meter_type` varchar(20) NOT NULL,
  `bill_type` varchar(20) NOT NULL,
  `days` int(11) NOT NULL,
  `cost_per_unit` int(11) NOT NULL,
  `meter_rent` int(11) NOT NULL,
  `service_charge` int(11) NOT NULL,
  `service_tax` int(11) NOT NULL,
  `fixed_tax` int(11) NOT NULL,
  `units` int(11) NOT NULL,
  `month` varchar(20) NOT NULL,
  `totalbill` int(11) NOT NULL,
  `netbill` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `allbill`
--

INSERT INTO `allbill` (`name`, `meter_no`, `address`, `city`, `state`, `email`, `phone`, `meter_location`, `meter_type`, `bill_type`, `days`, `cost_per_unit`, `meter_rent`, `service_charge`, `service_tax`, `fixed_tax`, `units`, `month`, `totalbill`, `netbill`, `status`) VALUES
('jugesh kumar', 456123, 'aaa', 'pp', 'br11', 'hgdkyu@gmail.com', '55486', 'Outside', 'Electric Meter', 'Normal', 30, 9, 47, 22, 57, 18, 100, 'December', 900, 1053, ''),
('jugesh kumar', 456123, 'aaa', 'pp', 'br11', 'hgdkyu@gmail.com', '55486', 'Outside', 'Electric Meter', 'Normal', 30, 9, 47, 22, 57, 18, 90, 'November', 810, 963, 'paid'),
('Mukesh Munda', 70047, 'Janta Chowk, Purnea', 'Purnea', 'Bihar', 'mucase@gmail.com', '8292947526', 'Outside', 'Electric Meter', 'Normal', 30, 9, 47, 22, 57, 18, 300, 'January', 2700, 2853, 'paid'),
('raj', 3692, 'thjghkjv', 'nghvjggh', 'nmhgjyuhi', 'nhtfugtyg', '69324587', 'Inside', 'Electric Meter', 'Normal', 30, 9, 47, 22, 57, 18, 100, 'January', 900, 1053, 'paid'),
('raj', 3692, 'thjghkjv', 'nghvjggh', 'nmhgjyuhi', 'nhtfugtyg', '69324587', 'Inside', 'Electric Meter', 'Normal', 30, 9, 47, 22, 57, 18, 200, 'February', 1800, 1953, 'unpaid'),
('Sidd', 4215, 'Rani patra', 'Purnea', 'Bihar', 'sidd@gmail.com', '123456789', 'Outside', 'Electric Meter', 'Normal', 30, 9, 47, 22, 57, 18, 100, 'January', 900, 1053, 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `meter_no` varchar(20) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `month` varchar(30) DEFAULT NULL,
  `units` int(11) DEFAULT NULL,
  `totalbill` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`meter_no`, `address`, `name`, `month`, `units`, `totalbill`, `status`) VALUES
('12345', 'purnia', 'raman', 'March', 50, 400, 'Paid'),
('12345', 'purnia', 'raman', 'March', 50, 400, 'Paid'),
('12345', 'purnia', 'raman', 'March', 50, 400, 'Paid'),
('12345', 'purnia', 'raman', 'March', 50, 400, 'Paid'),
('12345', 'purnia', 'raman', 'March', 50, 400, 'Paid'),
('12345', 'purnia', 'raman', 'March', 50, 400, 'Paid'),
('321654', 'purnia', 'anshuman', 'February', 50, 450, 'Paid'),
('456123', 'aaa', 'jugesh kumar', 'January', 100, 900, 'unpaid'),
('123412', 'patna', 'amit', 'January', 56, 300, 'Paid'),
('123412', 'patna', 'aman', 'feb', 78, 455, 'unpaid'),
('456123', 'aaa', 'jugesh kumar', 'December', 100, 900, 'unpaid'),
('456123', 'aaa', 'jugesh kumar', 'November', 90, 810, 'Paid'),
('70047', 'Janta Chowk, Purnea', 'Mukesh Munda', 'May', 100, 900, 'unpaid'),
('70047', 'Janta Chowk, Purnea', 'Mukesh Munda', 'March', 200, 1800, 'unpaid'),
('70047', 'Janta Chowk, Purnea', 'Mukesh Munda', 'January', 300, 2700, 'unpaid'),
('70047', 'Janta Chowk, Purnea', 'Mukesh Munda', 'January', 300, 2700, 'unpaid'),
('70047', 'Janta Chowk, Purnea', 'Mukesh Munda', 'January', 300, 2700, 'unpaid'),
('3692', 'thjghkjv', 'raj', 'January', 100, 900, 'unpaid'),
('3692', 'thjghkjv', 'raj', 'February', 200, 1800, 'unpaid'),
('4215', 'Rani patra', 'Sidd', 'January', 100, 900, 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `name` varchar(20) DEFAULT NULL,
  `meter_no` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`name`, `meter_no`, `address`, `city`, `state`, `email`, `phone`) VALUES
('Amit kumar singh', '12345', 'purnia', 'purnia', 'bihar', 'bks356130@gmail.com', '7488174817'),
('anshuman', '321654', 'purnia', 'pu', 'br11', 'mnnj@gmail.com', '8877838237'),
('jugesh ', '456123', 'aaa', 'pp', 'br11', 'hgdkyu@gmail.com', '55486'),
('Mukesh Munda', '70047', 'Janta Chowk, Purnea', 'Purnea', 'Bihar', 'mucase@gmail.com', '8292947526'),
('abcd', '3692', 'thjghkjv', 'nghvjggh', 'nmhgjyuhi', 'nhtfugtyg', '69324587'),
('Siddd', '4215', 'Rani patra', 'Purnea', 'Bihar', 'sidd@gmail.com', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `meter_no` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`meter_no`, `username`, `name`, `password`, `user`) VALUES
(NULL, 'akumar', 'amit', '12345', 'Admin'),
('12345', 'amitkumar', 'Amit kumar', '12345', 'Customer'),
(NULL, 'nilesh', 'nilesh yadav', '12345', 'Admin'),
('321654', 'anshu', 'anshuman', '321123', 'Customer'),
(NULL, 'sunil', 'sunil yadav', '789456', 'Admin'),
('456123', 'jugesh', 'jugesh kumar', '963852', 'Customer'),
('123412', 'aaa', 'aman', '111', 'Customer'),
(NULL, 'anshu', 'Anshuman', '7004231615', 'Admin'),
('70047', 'mukase', 'Mukesh Munda', '47700', 'Customer'),
(NULL, 'sid', 'siddhu', '5613', 'Admin'),
(NULL, 'dev', 'devraj', '369258147', 'Admin'),
('3692', 'sdd', 'raj', '123654', 'Customer'),
(NULL, 'nilesh', 'Nilesh Kulkarni', '987654321', 'Admin'),
('4215', 'sidh', 'Sidd', '123', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `meter_info`
--

CREATE TABLE `meter_info` (
  `meter_no` varchar(20) DEFAULT NULL,
  `meter_location` varchar(20) DEFAULT NULL,
  `meter_type` varchar(20) DEFAULT NULL,
  `phase_code` varchar(20) DEFAULT NULL,
  `bill_type` varchar(20) DEFAULT NULL,
  `days` varchar(20) DEFAULT '30'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meter_info`
--

INSERT INTO `meter_info` (`meter_no`, `meter_location`, `meter_type`, `phase_code`, `bill_type`, `days`) VALUES
('12345', 'Outside', 'Electric Meter', '0001', 'Normal', NULL),
('321654', 'Outside', 'Smart Meter', '00001', 'Normal', '30'),
('456123', 'Outside', 'Electric Meter', '0002', 'Normal', '30'),
('70047', 'Outside', 'Electric Meter', 'First', 'Normal', '30'),
('3692', 'Inside', 'Electric Meter', 'first', 'Normal', '30'),
('4215', 'Outside', 'Electric Meter', 'First', 'Normal', '30');

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `cost_per_unit` varchar(20) DEFAULT NULL,
  `meter_rent` varchar(20) DEFAULT NULL,
  `service_charge` varchar(20) DEFAULT NULL,
  `service_tax` varchar(20) DEFAULT NULL,
  `swacch_bharat_cess` varchar(20) DEFAULT NULL,
  `fixed_tax` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`cost_per_unit`, `meter_rent`, `service_charge`, `service_tax`, `swacch_bharat_cess`, `fixed_tax`) VALUES
('9', '47', '22', '57', '6', '18');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
