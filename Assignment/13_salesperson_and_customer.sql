-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2023 at 04:53 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salesperson_and_customer`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CNM` int(10) NOT NULL,
  `Cname` varchar(10) DEFAULT NULL,
  `City` varchar(10) DEFAULT NULL,
  `Rating` varchar(10) DEFAULT NULL,
  `Sno` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CNM`, `Cname`, `City`, `Rating`, `Sno`) VALUES
(201, 'Hoffman', 'Londan', '100', 1001),
(202, 'Giovanne', 'Roe', '200', 1003),
(203, 'liu', 'San Jose', '300', 1002),
(204, 'Grass', 'Barcelona', '100', 1002),
(206, 'Clemens', 'Londan', '300', 1007),
(207, 'Pereira', 'Roe', '100', 1004);

-- --------------------------------------------------------

--
-- Table structure for table `salesperson`
--

CREATE TABLE `salesperson` (
  `Sno` int(10) NOT NULL,
  `SName` varchar(10) DEFAULT NULL,
  `City` varchar(10) DEFAULT NULL,
  `Comm` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salesperson`
--

INSERT INTO `salesperson` (`Sno`, `SName`, `City`, `Comm`) VALUES
(1001, 'Peel', 'London', 0.12),
(1002, 'Serres', 'San Jones', 0.13),
(1003, 'Axelrod', 'New York', 0.1),
(1004, 'Motika', 'London', 0.11),
(1007, 'Rafkin', 'Barcelona', 0.15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CNM`),
  ADD KEY `Sno` (`Sno`);

--
-- Indexes for table `salesperson`
--
ALTER TABLE `salesperson`
  ADD PRIMARY KEY (`Sno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Sno`) REFERENCES `salesperson` (`Sno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
