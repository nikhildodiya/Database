-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2023 at 05:17 PM
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
-- Database: `nobel`
--

-- --------------------------------------------------------

--
-- Table structure for table `nobel_win`
--

CREATE TABLE `nobel_win` (
  `Year` int(10) DEFAULT NULL,
  `Subject` varchar(10) DEFAULT NULL,
  `Winner` varchar(10) DEFAULT NULL,
  `Country` varchar(10) DEFAULT NULL,
  `Category` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nobel_win`
--

INSERT INTO `nobel_win` (`Year`, `Subject`, `Winner`, `Country`, `Category`) VALUES
(1970, 'Physics', 'HannesAlfv', 'Sweden', 'Scientist'),
(1970, 'Physics', 'Louis Neel', 'France', 'Scientist'),
(1970, 'Chemistry', 'Luis Feder', 'France', 'Scientist'),
(1970, 'Physiology', 'Ulf Von Eu', 'Sweden', 'Scientist'),
(1970, 'Physiology', 'Bernard Ka', 'Germany', 'Scientist'),
(1970, 'Literatre', 'Aleksandr ', 'Russia', 'Linguist'),
(1970, 'Economics', 'Paul Samue', 'USA', 'Economist'),
(1970, 'Physiology', 'Julius Axe', 'USA', 'Scientist'),
(1971, 'Physics', 'Denis Goba', 'Hungary', 'Scientist'),
(1971, 'Chemistry', 'Gerhard He', 'Germany', 'Scientist'),
(1971, 'Peace', 'Willy Bran', 'Germany', 'Chancellor'),
(1971, 'Literature', 'Pablo Neru', 'Chile', 'Linguist'),
(1971, 'Economics', 'Simon kuzn', 'Russia', 'Economist'),
(1978, 'Peace', 'Anwar Al-S', 'Egpyt', 'President'),
(1978, 'Peace', 'Menachem B', 'Israel', 'Prime Mini'),
(1987, 'Chemistry', 'Donald j. ', 'USA', 'Scientist'),
(1987, 'Chemistry', 'Jean-Marie', 'France', 'Scientist'),
(1987, 'Physiology', 'Susumu Ton', 'Japan', 'Scientist'),
(1994, 'Economics', 'Reinhard S', 'Germany', 'Economist'),
(1994, 'Peace', 'Yitzhak Ra', 'Israel', 'Prime Mini'),
(1987, 'Physics', 'Johannes G', 'Germany', 'Scientist'),
(1987, 'Literatre', 'Joseph Bro', 'Russia', 'Linguist'),
(1987, 'Economics', 'Robert Sol', 'USA', 'Economist'),
(1994, 'Literatre', 'Kenzaburo ', 'Japan', 'Linguist');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
