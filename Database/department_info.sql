-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2022 at 10:04 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mail_tracker_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `department_info`
--

CREATE TABLE `department_info` (
  `office_id` smallint(5) UNSIGNED NOT NULL,
  `postal_code` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_info`
--

INSERT INTO `department_info` (`office_id`, `postal_code`, `name`) VALUES
(1, 800, 'Borella(CO)'),
(2, 60200, 'Kuliyapitiya(KG)'),
(3, 20000, 'Kandy(KY)'),
(4, 20160, 'Ampitiya(KY)'),
(5, 20270, 'Gunnepana(KY)'),
(6, 10107, 'Rajagiriya(CO)'),
(7, 61130, 'Dankotuwa(PX)'),
(8, 90000, 'Badulla(BD)'),
(9, 11100, 'Veyangoda(GQ)'),
(10, 11250, 'Divulapitiya(GQ)'),
(11, 61000, 'Chillaw(PX)'),
(12, 20185, 'Digana(KY)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department_info`
--
ALTER TABLE `department_info`
  ADD PRIMARY KEY (`office_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department_info`
--
ALTER TABLE `department_info`
  MODIFY `office_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
