-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2022 at 12:23 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `korphil`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` int(255) NOT NULL,
  `Admin_FirstName` varchar(255) NOT NULL,
  `Admin_LastName` varchar(255) NOT NULL,
  `Admin_ContactNumber` varchar(255) NOT NULL,
  `Admin_Username` varchar(255) NOT NULL,
  `Admin_Email` varchar(255) NOT NULL,
  `Admin_Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `Admin_FirstName`, `Admin_LastName`, `Admin_ContactNumber`, `Admin_Username`, `Admin_Email`, `Admin_Password`) VALUES
(0, 'test', 'test', '0', 'user', 'user@gmail.com', '6ad14ba9986e3615423dfca256d04e3f'),
(1, 'Xyril Yee', 'Te', '09468579568', 'Admin', 'xytco@gmail.com', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dep_id` int(11) NOT NULL,
  `dep_category` varchar(110) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dep_id`, `dep_category`, `status`) VALUES
(1, 'DAVET', 'Active'),
(13, 'DIT', 'Inactive'),
(14, 'DWT', 'Active'),
(15, 'VIP', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_ID` int(50) NOT NULL,
  `Employee_Firstname` varchar(50) NOT NULL,
  `Employee_Lastname` varchar(50) NOT NULL,
  `Employee_Username` varchar(50) NOT NULL,
  `Employee_Email` varchar(50) NOT NULL,
  `Employee_Age` int(50) NOT NULL,
  `Employee_ContactNumber` int(50) NOT NULL,
  `Employee_Address` varchar(50) NOT NULL,
  `Employee_Department` varchar(50) NOT NULL,
  `Employee_Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_ID`, `Employee_Firstname`, `Employee_Lastname`, `Employee_Username`, `Employee_Email`, `Employee_Age`, `Employee_ContactNumber`, `Employee_Address`, `Employee_Department`, `Employee_Status`) VALUES
(1, 'test', 'test', 'usser1', 'user@gmail.com', 22, 983735353, 'davao', 'DWT', 'Inactive'),
(2, 'tests', 'tests', 'user2', 'user2@gmail.com', 22, 923445365, 'davao', 'DWT', 'Inactive'),
(4, 'ygay', 'jhonniel', 'jhanniel', 'sample@gmail.com', 21, 2147483647, 'davao', 'DIT', 'Active'),
(5, 'zuriel', 'polinar', 'zzzz1', 'zuriel@fmail.com', 9, 989678576, 'samal', 'DIT', 'Inactive'),
(6, 'jhanniel', 'ygay', 'jjjjj2', 'jhanniel@gmail.com', 22, 93247923, 'davao', 'DAVET', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `ems_tbl`
--

CREATE TABLE `ems_tbl` (
  `id` int(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `status` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ems_tbl`
--

INSERT INTO `ems_tbl` (`id`, `first_name`, `last_name`, `gender`, `department`, `status`) VALUES
(1, 'test', 'test', '', '', -1);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `Status_ID` int(255) NOT NULL,
  `Current_Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`Status_ID`, `Current_Status`) VALUES
(1, 'Active'),
(2, 'Inactive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `ems_tbl`
--
ALTER TABLE `ems_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`Status_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Employee_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ems_tbl`
--
ALTER TABLE `ems_tbl`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
