-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2022 at 10:05 AM
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
-- Table structure for table `user_account_info`
--

CREATE TABLE `user_account_info` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `employer_id` mediumint(8) UNSIGNED NOT NULL,
  `email` varchar(60) NOT NULL,
  `psswd_hash` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_account_info`
--
ALTER TABLE `user_account_info`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_employer_id_2` (`employer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_account_info`
--
ALTER TABLE `user_account_info`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_account_info`
--
ALTER TABLE `user_account_info`
  ADD CONSTRAINT `fk_employer_id_2` FOREIGN KEY (`employer_id`) REFERENCES `employer_info` (`employer_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
