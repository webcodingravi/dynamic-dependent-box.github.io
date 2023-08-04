-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2023 at 08:46 AM
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
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `country_db`
--

CREATE TABLE `country_db` (
  `cid` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `country_db`
--

INSERT INTO `country_db` (`cid`, `cname`) VALUES
(1, 'India'),
(2, 'Pakistan'),
(3, 'Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `state_db`
--

CREATE TABLE `state_db` (
  `sid` int(11) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `country` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `state_db`
--

INSERT INTO `state_db` (`sid`, `sname`, `country`) VALUES
(1, 'Haryana', 1),
(2, 'Gujrat', 1),
(3, 'Uttar Pradesh', 1),
(4, 'Maharashtra', 1),
(5, 'Rajasthan', 1),
(6, 'Madhya Pradesh', 1),
(7, 'Balochistan', 2),
(8, 'Punjab', 2),
(9, 'Sindh', 2),
(10, 'Bansal', 3),
(11, 'Cittagong', 3),
(12, 'Dhaka', 3),
(13, 'Khulna', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country_db`
--
ALTER TABLE `country_db`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `state_db`
--
ALTER TABLE `state_db`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `country` (`country`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country_db`
--
ALTER TABLE `country_db`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `state_db`
--
ALTER TABLE `state_db`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `state_db`
--
ALTER TABLE `state_db`
  ADD CONSTRAINT `state_db_ibfk_1` FOREIGN KEY (`country`) REFERENCES `country_db` (`cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
