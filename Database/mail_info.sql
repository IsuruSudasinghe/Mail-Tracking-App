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
-- Table structure for table `mail_info`
--

CREATE TABLE `mail_info` (
  `mail_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `destination_office` smallint(5) UNSIGNED NOT NULL,
  `current_office` smallint(5) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mail_info`
--

INSERT INTO `mail_info` (`mail_id`, `customer_id`, `destination_office`, `current_office`, `status`) VALUES
(1, 5, 1, 7, 0),
(2, 2, 1, 2, 0),
(3, 2, 1, 3, 0),
(4, 4, 3, 4, 0),
(5, 4, 3, 5, 0),
(6, 3, 5, 6, 0),
(7, 3, 5, 7, 0),
(8, 5, 1, 5, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mail_info`
--
ALTER TABLE `mail_info`
  ADD PRIMARY KEY (`mail_id`),
  ADD KEY `fk_customer_id` (`customer_id`),
  ADD KEY `fk_destination_office` (`destination_office`),
  ADD KEY `fk_current_office` (`current_office`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mail_info`
--
ALTER TABLE `mail_info`
  MODIFY `mail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mail_info`
--
ALTER TABLE `mail_info`
  ADD CONSTRAINT `fk_current_office` FOREIGN KEY (`current_office`) REFERENCES `department_info` (`office_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer_info` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_destination_office` FOREIGN KEY (`destination_office`) REFERENCES `department_info` (`office_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
