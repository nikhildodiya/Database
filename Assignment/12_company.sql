-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2023 at 11:15 AM
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
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_id` int(10) NOT NULL,
  `First_Name` varchar(10) DEFAULT NULL,
  `Last_Name` varchar(10) DEFAULT NULL,
  `Salary` int(10) DEFAULT NULL,
  `Joining_Date` varchar(10) DEFAULT NULL,
  `Department` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_id`, `First_Name`, `Last_Name`, `Salary`, `Joining_Date`, `Department`) VALUES
(1, 'John', 'Abraham', 1000000, '01-Jan-13 ', 'Banking'),
(2, 'Michael', 'Clarke', 800000, '01-Jan-13 ', 'Insurance'),
(3, 'Roy', 'Thomas', 70000, '01-Feb-13 ', 'Banking'),
(4, 'Tom', 'Jose', 600000, '01-Feb-13 ', 'Insurance'),
(5, 'Jerry', 'Pinto', 650000, '01-Feb-13 ', 'Insurance'),
(6, 'Philip', 'Mathew', 750000, '01-Jan-13 ', 'Services'),
(7, 'TestName1', '123', 650000, '01-Jan-13 ', 'Services'),
(8, 'TestName2', 'Lname%', 600000, '01-Feb-13 ', 'Insurance');

--
-- Triggers `employee`
--
DELIMITER $$
CREATE TRIGGER `tr_insert_employee` AFTER INSERT ON `employee` FOR EACH ROW BEGIN
    INSERT INTO ViewTable (Employee_id, First_Name, Last_Name, Salary, Joining_Date, Department)
    VALUES (NEW.employee_id, NEW.First_Name, NEW.Last_Name, NEW.Salary, NEW.Joining_Date, NEW.Department);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `incetive`
--

CREATE TABLE `incetive` (
  `Employee_Ref_Id` int(10) DEFAULT NULL,
  `Incetive_Date` varchar(10) DEFAULT NULL,
  `incetive_Amount` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `incetive`
--

INSERT INTO `incetive` (`Employee_Ref_Id`, `Incetive_Date`, `incetive_Amount`) VALUES
(1, '01-Feb-13', 5000),
(2, '01-Feb-13', 3000),
(3, '01-Feb-13', 4000),
(1, '01-Jan-13', 4500),
(2, '01-Feb-13', 3500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_id`);

--
-- Indexes for table `incetive`
--
ALTER TABLE `incetive`
  ADD KEY `Employee_Ref_Id` (`Employee_Ref_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `incetive`
--
ALTER TABLE `incetive`
  ADD CONSTRAINT `incetive_ibfk_1` FOREIGN KEY (`Employee_Ref_Id`) REFERENCES `employee` (`Employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
