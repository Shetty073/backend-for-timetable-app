-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2019 at 07:08 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timetable`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(512) NOT NULL,
  `date_added` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `date_added`, `is_admin`) VALUES
(1, 'ashish', '$2y$10$0wQ3VyWEF.4o7cy05O3Qqeizk/lNcMPJySFy1GdsVNUzuBswovn1m', '2019-11-06 14:04:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fy_bms`
--

CREATE TABLE `fy_bms` (
  `week` int(1) NOT NULL,
  `lec1` varchar(256) DEFAULT NULL,
  `lec2` varchar(256) DEFAULT NULL,
  `lec3` varchar(256) DEFAULT NULL,
  `lec4` varchar(256) DEFAULT NULL,
  `lec5` varchar(256) DEFAULT NULL,
  `lec6` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fy_bms`
--

INSERT INTO `fy_bms` (`week`, `lec1`, `lec2`, `lec3`, `lec4`, `lec5`, `lec6`) VALUES
(1, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(2, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(3, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(4, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(5, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(6, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fy_commerce_a`
--

CREATE TABLE `fy_commerce_a` (
  `week` int(1) NOT NULL,
  `lec1` varchar(256) DEFAULT NULL,
  `lec2` varchar(256) DEFAULT NULL,
  `lec3` varchar(256) DEFAULT NULL,
  `lec4` varchar(256) DEFAULT NULL,
  `lec5` varchar(256) DEFAULT NULL,
  `lec6` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fy_commerce_a`
--

INSERT INTO `fy_commerce_a` (`week`, `lec1`, `lec2`, `lec3`, `lec4`, `lec5`, `lec6`) VALUES
(1, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', ''),
(2, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', ''),
(3, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', ''),
(4, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', ''),
(5, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', ''),
(6, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', '');

-- --------------------------------------------------------

--
-- Table structure for table `fy_commerce_b`
--

CREATE TABLE `fy_commerce_b` (
  `week` int(1) NOT NULL,
  `lec1` varchar(256) DEFAULT NULL,
  `lec2` varchar(256) DEFAULT NULL,
  `lec3` varchar(256) DEFAULT NULL,
  `lec4` varchar(256) DEFAULT NULL,
  `lec5` varchar(256) DEFAULT NULL,
  `lec6` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fy_commerce_b`
--

INSERT INTO `fy_commerce_b` (`week`, `lec1`, `lec2`, `lec3`, `lec4`, `lec5`, `lec6`) VALUES
(1, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(2, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(3, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(4, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(5, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(6, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fy_commerce_c`
--

CREATE TABLE `fy_commerce_c` (
  `week` int(1) NOT NULL,
  `lec1` varchar(256) DEFAULT NULL,
  `lec2` varchar(256) DEFAULT NULL,
  `lec3` varchar(256) DEFAULT NULL,
  `lec4` varchar(256) DEFAULT NULL,
  `lec5` varchar(256) DEFAULT NULL,
  `lec6` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fy_commerce_c`
--

INSERT INTO `fy_commerce_c` (`week`, `lec1`, `lec2`, `lec3`, `lec4`, `lec5`, `lec6`) VALUES
(1, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(2, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(3, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(4, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(5, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(6, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fy_cs`
--

CREATE TABLE `fy_cs` (
  `week` int(1) NOT NULL,
  `lec1` varchar(256) DEFAULT NULL,
  `lec2` varchar(256) DEFAULT NULL,
  `lec3` varchar(256) DEFAULT NULL,
  `lec4` varchar(256) DEFAULT NULL,
  `lec5` varchar(256) DEFAULT NULL,
  `lec6` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fy_cs`
--

INSERT INTO `fy_cs` (`week`, `lec1`, `lec2`, `lec3`, `lec4`, `lec5`, `lec6`) VALUES
(1, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lac6'),
(2, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lac6'),
(3, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lac6'),
(4, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lac6'),
(5, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lac6'),
(6, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lac6');

-- --------------------------------------------------------

--
-- Table structure for table `fy_it`
--

CREATE TABLE `fy_it` (
  `week` int(1) NOT NULL,
  `lec1` varchar(256) DEFAULT NULL,
  `lec2` varchar(256) DEFAULT NULL,
  `lec3` varchar(256) DEFAULT NULL,
  `lec4` varchar(256) DEFAULT NULL,
  `lec5` varchar(256) DEFAULT NULL,
  `lec6` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fy_it`
--

INSERT INTO `fy_it` (`week`, `lec1`, `lec2`, `lec3`, `lec4`, `lec5`, `lec6`) VALUES
(1, 'test1', 'test2', 'test3', 'test4', 'test5', 'test'),
(2, 'tes', 'test', 'test', 'test', 'test', 'test'),
(3, 'test', 'test', 'test', 'test', 'test', 'test'),
(4, 'test', 'test', 'test', 'test', 'test', 'test'),
(5, 'test', 'test', 'test', 'test', 'test', 'test'),
(6, 'test', 'test', 'test', 'test', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `sy_bms`
--

CREATE TABLE `sy_bms` (
  `week` int(1) NOT NULL,
  `lec1` varchar(256) DEFAULT NULL,
  `lec2` varchar(256) DEFAULT NULL,
  `lec3` varchar(256) DEFAULT NULL,
  `lec4` varchar(256) DEFAULT NULL,
  `lec5` varchar(256) DEFAULT NULL,
  `lec6` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sy_bms`
--

INSERT INTO `sy_bms` (`week`, `lec1`, `lec2`, `lec3`, `lec4`, `lec5`, `lec6`) VALUES
(1, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(2, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(3, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(4, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(5, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(6, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sy_commerce_a`
--

CREATE TABLE `sy_commerce_a` (
  `week` int(1) NOT NULL,
  `lec1` varchar(256) DEFAULT NULL,
  `lec2` varchar(256) DEFAULT NULL,
  `lec3` varchar(256) DEFAULT NULL,
  `lec4` varchar(256) DEFAULT NULL,
  `lec5` varchar(256) DEFAULT NULL,
  `lec6` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sy_commerce_a`
--

INSERT INTO `sy_commerce_a` (`week`, `lec1`, `lec2`, `lec3`, `lec4`, `lec5`, `lec6`) VALUES
(1, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(2, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(3, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(4, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(5, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(6, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sy_commerce_b`
--

CREATE TABLE `sy_commerce_b` (
  `week` int(1) NOT NULL,
  `lec1` varchar(256) DEFAULT NULL,
  `lec2` varchar(256) DEFAULT NULL,
  `lec3` varchar(256) DEFAULT NULL,
  `lec4` varchar(256) DEFAULT NULL,
  `lec5` varchar(256) DEFAULT NULL,
  `lec6` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sy_commerce_b`
--

INSERT INTO `sy_commerce_b` (`week`, `lec1`, `lec2`, `lec3`, `lec4`, `lec5`, `lec6`) VALUES
(1, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(2, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(3, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(4, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(5, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(6, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sy_commerce_c`
--

CREATE TABLE `sy_commerce_c` (
  `week` int(1) NOT NULL,
  `lec1` varchar(256) DEFAULT NULL,
  `lec2` varchar(256) DEFAULT NULL,
  `lec3` varchar(256) DEFAULT NULL,
  `lec4` varchar(256) DEFAULT NULL,
  `lec5` varchar(256) DEFAULT NULL,
  `lec6` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sy_commerce_c`
--

INSERT INTO `sy_commerce_c` (`week`, `lec1`, `lec2`, `lec3`, `lec4`, `lec5`, `lec6`) VALUES
(1, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(2, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(3, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(4, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(5, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(6, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sy_cs`
--

CREATE TABLE `sy_cs` (
  `week` int(1) NOT NULL,
  `lec1` varchar(256) DEFAULT NULL,
  `lec2` varchar(256) DEFAULT NULL,
  `lec3` varchar(256) DEFAULT NULL,
  `lec4` varchar(256) DEFAULT NULL,
  `lec5` varchar(256) DEFAULT NULL,
  `lec6` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sy_cs`
--

INSERT INTO `sy_cs` (`week`, `lec1`, `lec2`, `lec3`, `lec4`, `lec5`, `lec6`) VALUES
(1, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lac6'),
(2, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lac6'),
(3, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lac6'),
(4, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lac6'),
(5, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lac6'),
(6, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lac6');

-- --------------------------------------------------------

--
-- Table structure for table `sy_it`
--

CREATE TABLE `sy_it` (
  `week` int(1) NOT NULL,
  `lec1` varchar(256) DEFAULT NULL,
  `lec2` varchar(256) DEFAULT NULL,
  `lec3` varchar(256) DEFAULT NULL,
  `lec4` varchar(256) DEFAULT NULL,
  `lec5` varchar(256) DEFAULT NULL,
  `lec6` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sy_it`
--

INSERT INTO `sy_it` (`week`, `lec1`, `lec2`, `lec3`, `lec4`, `lec5`, `lec6`) VALUES
(1, 'Mobile Programming (Pract)', 'Mobile Programming (Pract)', 'Mobile Programming (Pract)', 'Maths', 'Computer Networks', 'Python'),
(2, 'DBMS', 'DBMS', 'Data Structures', 'Python (Pract)', 'Python (Pract)', 'Python'),
(3, 'Maths', 'DBMS', 'Data Structures', 'Computer Networks (Pract)', 'Computer Networks (Pract)', 'Maths'),
(4, 'Maths', 'Computer Networks', 'DBMS', 'DBMS (Pract)', 'DBMS (Pract)', 'Computer Networks'),
(5, 'Maths', 'DBMS', 'Data Structures', 'Computer Networks (Pract)', 'Computer Networks (Pract)', 'Maths'),
(6, 'Maths', 'Computer Networks', 'DBMS', 'DBMS (Pract)', 'DBMS (Pract)', 'Computer Networks');

-- --------------------------------------------------------

--
-- Table structure for table `ty_bms`
--

CREATE TABLE `ty_bms` (
  `week` int(1) NOT NULL,
  `lec1` varchar(256) DEFAULT NULL,
  `lec2` varchar(256) DEFAULT NULL,
  `lec3` varchar(256) DEFAULT NULL,
  `lec4` varchar(256) DEFAULT NULL,
  `lec5` varchar(256) DEFAULT NULL,
  `lec6` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ty_bms`
--

INSERT INTO `ty_bms` (`week`, `lec1`, `lec2`, `lec3`, `lec4`, `lec5`, `lec6`) VALUES
(1, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(2, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(3, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(4, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(5, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(6, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ty_commerce_a`
--

CREATE TABLE `ty_commerce_a` (
  `week` int(1) NOT NULL,
  `lec1` varchar(256) DEFAULT NULL,
  `lec2` varchar(256) DEFAULT NULL,
  `lec3` varchar(256) DEFAULT NULL,
  `lec4` varchar(256) DEFAULT NULL,
  `lec5` varchar(256) DEFAULT NULL,
  `lec6` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ty_commerce_a`
--

INSERT INTO `ty_commerce_a` (`week`, `lec1`, `lec2`, `lec3`, `lec4`, `lec5`, `lec6`) VALUES
(1, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(2, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(3, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(4, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(5, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(6, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ty_commerce_b`
--

CREATE TABLE `ty_commerce_b` (
  `week` int(1) NOT NULL,
  `lec1` varchar(256) DEFAULT NULL,
  `lec2` varchar(256) DEFAULT NULL,
  `lec3` varchar(256) DEFAULT NULL,
  `lec4` varchar(256) DEFAULT NULL,
  `lec5` varchar(256) DEFAULT NULL,
  `lec6` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ty_commerce_b`
--

INSERT INTO `ty_commerce_b` (`week`, `lec1`, `lec2`, `lec3`, `lec4`, `lec5`, `lec6`) VALUES
(1, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(2, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(3, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(4, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(5, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(6, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ty_commerce_c`
--

CREATE TABLE `ty_commerce_c` (
  `week` int(1) NOT NULL,
  `lec1` varchar(256) DEFAULT NULL,
  `lec2` varchar(256) DEFAULT NULL,
  `lec3` varchar(256) DEFAULT NULL,
  `lec4` varchar(256) DEFAULT NULL,
  `lec5` varchar(256) DEFAULT NULL,
  `lec6` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ty_commerce_c`
--

INSERT INTO `ty_commerce_c` (`week`, `lec1`, `lec2`, `lec3`, `lec4`, `lec5`, `lec6`) VALUES
(1, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(2, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(3, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(4, 'lec1', 'lec2', 'lec3', 'lec4', NULL, NULL),
(5, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL),
(6, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ty_cs`
--

CREATE TABLE `ty_cs` (
  `week` int(1) NOT NULL,
  `lec1` varchar(256) DEFAULT NULL,
  `lec2` varchar(256) DEFAULT NULL,
  `lec3` varchar(256) DEFAULT NULL,
  `lec4` varchar(256) DEFAULT NULL,
  `lec5` varchar(256) DEFAULT NULL,
  `lec6` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ty_cs`
--

INSERT INTO `ty_cs` (`week`, `lec1`, `lec2`, `lec3`, `lec4`, `lec5`, `lec6`) VALUES
(1, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lac6'),
(2, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lac6'),
(3, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lac6'),
(4, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lac6'),
(5, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lac6'),
(6, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lac6');

-- --------------------------------------------------------

--
-- Table structure for table `ty_it`
--

CREATE TABLE `ty_it` (
  `week` int(1) NOT NULL,
  `lec1` varchar(256) DEFAULT NULL,
  `lec2` varchar(256) DEFAULT NULL,
  `lec3` varchar(256) DEFAULT NULL,
  `lec4` varchar(256) DEFAULT NULL,
  `lec5` varchar(256) DEFAULT NULL,
  `lec6` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ty_it`
--

INSERT INTO `ty_it` (`week`, `lec1`, `lec2`, `lec3`, `lec4`, `lec5`, `lec6`) VALUES
(1, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lec6'),
(2, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lec6'),
(3, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lec6'),
(4, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lec6'),
(5, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lec6'),
(6, 'lec1', 'lec2', 'lec3', 'lec4', 'lec5', 'lec6');

-- --------------------------------------------------------

--
-- Table structure for table `weekdays`
--

CREATE TABLE `weekdays` (
  `week` int(1) NOT NULL,
  `week_day` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weekdays`
--

INSERT INTO `weekdays` (`week`, `week_day`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `fy_bms`
--
ALTER TABLE `fy_bms`
  ADD PRIMARY KEY (`week`);

--
-- Indexes for table `fy_commerce_a`
--
ALTER TABLE `fy_commerce_a`
  ADD PRIMARY KEY (`week`);

--
-- Indexes for table `fy_commerce_b`
--
ALTER TABLE `fy_commerce_b`
  ADD PRIMARY KEY (`week`);

--
-- Indexes for table `fy_commerce_c`
--
ALTER TABLE `fy_commerce_c`
  ADD PRIMARY KEY (`week`);

--
-- Indexes for table `fy_cs`
--
ALTER TABLE `fy_cs`
  ADD PRIMARY KEY (`week`);

--
-- Indexes for table `fy_it`
--
ALTER TABLE `fy_it`
  ADD PRIMARY KEY (`week`);

--
-- Indexes for table `sy_bms`
--
ALTER TABLE `sy_bms`
  ADD PRIMARY KEY (`week`);

--
-- Indexes for table `sy_commerce_a`
--
ALTER TABLE `sy_commerce_a`
  ADD PRIMARY KEY (`week`);

--
-- Indexes for table `sy_commerce_b`
--
ALTER TABLE `sy_commerce_b`
  ADD PRIMARY KEY (`week`);

--
-- Indexes for table `sy_commerce_c`
--
ALTER TABLE `sy_commerce_c`
  ADD PRIMARY KEY (`week`);

--
-- Indexes for table `sy_cs`
--
ALTER TABLE `sy_cs`
  ADD PRIMARY KEY (`week`);

--
-- Indexes for table `sy_it`
--
ALTER TABLE `sy_it`
  ADD PRIMARY KEY (`week`);

--
-- Indexes for table `ty_bms`
--
ALTER TABLE `ty_bms`
  ADD PRIMARY KEY (`week`);

--
-- Indexes for table `ty_commerce_a`
--
ALTER TABLE `ty_commerce_a`
  ADD PRIMARY KEY (`week`);

--
-- Indexes for table `ty_commerce_b`
--
ALTER TABLE `ty_commerce_b`
  ADD PRIMARY KEY (`week`);

--
-- Indexes for table `ty_commerce_c`
--
ALTER TABLE `ty_commerce_c`
  ADD PRIMARY KEY (`week`);

--
-- Indexes for table `ty_cs`
--
ALTER TABLE `ty_cs`
  ADD PRIMARY KEY (`week`);

--
-- Indexes for table `ty_it`
--
ALTER TABLE `ty_it`
  ADD PRIMARY KEY (`week`);

--
-- Indexes for table `weekdays`
--
ALTER TABLE `weekdays`
  ADD PRIMARY KEY (`week`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
