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
-- Table structure for table `mail_tracking_info`
--

CREATE TABLE `mail_tracking_info` (
  `mail_id` bigint(20) UNSIGNED NOT NULL,
  `office_id` smallint(5) UNSIGNED NOT NULL,
  `employer_id` mediumint(8) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `action` enum('mail_accepted','mail_sorted','mail_sent_to_delivery','mail_received_from_delivery','mail_delivered','mail_status_validated') NOT NULL,
  `comment` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mail_tracking_info`
--
ALTER TABLE `mail_tracking_info`
  ADD PRIMARY KEY (`mail_id`,`office_id`,`employer_id`),
  ADD KEY `fk_employer_id` (`employer_id`),
  ADD KEY `fk_office_id_2` (`office_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mail_tracking_info`
--
ALTER TABLE `mail_tracking_info`
  ADD CONSTRAINT `fk_employer_id` FOREIGN KEY (`employer_id`) REFERENCES `employer_info` (`employer_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mail_id` FOREIGN KEY (`mail_id`) REFERENCES `mail_info` (`mail_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_office_id_2` FOREIGN KEY (`office_id`) REFERENCES `department_info` (`office_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
