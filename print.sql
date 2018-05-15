-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2018 at 03:29 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `print`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` varchar(30) DEFAULT NULL,
  `id` varchar(15) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phno` varchar(10) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `role` varchar(10) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `id`, `email`, `phno`, `password`, `role`) VALUES
('abhayham', '2015csse004', 'abhayham@gmail.com', '1234567890', '1234567890', 'user'),
('owner', '2016own001', 'owner@gmail.com', '9844490288', '23456789', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `account` varchar(15) DEFAULT NULL,
  `papersize` varchar(10) DEFAULT NULL,
  `printtype` varchar(5) DEFAULT NULL,
  `note` longtext,
  `location` varchar(30) DEFAULT NULL,
  `copies` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`account`, `papersize`, `printtype`, `note`, `location`, `copies`) VALUES
('2015csse004', '2', '1', 'dn', NULL, 12),
('2015csse004', '2', '1', 'dn', NULL, 12),
('2015csse004', '2', '1', 'dn', NULL, 12),
('2015csse004', '2', '1', 'dn', 'pending', 12),
('2015csse004', '2', '1', 'dn', 'pending', 12),
('2015csse004', '2', '2', '', 'pending', 12),
('2015csse004', '2', '2', '', 'pending', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
