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
-- Table structure for table `employer_info`
--

CREATE TABLE `employer_info` (
  `employer_id` mediumint(8) UNSIGNED NOT NULL,
  `office_id` smallint(5) UNSIGNED NOT NULL,
  `first_name` varchar(35) NOT NULL,
  `last_name` varchar(35) NOT NULL,
  `date_of_birth` date NOT NULL,
  `contact_number` varchar(12) DEFAULT NULL,
  `position` enum('post_master','postman','sorting_officer','counter_officer','delivery_officer','validating_officer','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employer_info`
--

INSERT INTO `employer_info` (`employer_id`, `office_id`, `first_name`, `last_name`, `date_of_birth`, `contact_number`, `position`) VALUES
(1, 1, 'Kumara', 'Liyanage', '1983-07-19', '+9477859687', 'post_master'),
(2, 1, 'Sunara', 'Kumara', '1992-09-23', '+94778896574', 'postman'),
(3, 1, 'Thilina', 'Amaraweera', '1989-03-05', '+94785566998', 'sorting_officer'),
(4, 1, 'Nimash', 'Lasanatha', '1977-08-19', '+94784512369', 'counter_officer'),
(5, 1, 'Farook', 'Niyaz', '2002-01-02', '+94744569874', 'delivery_officer'),
(6, 1, 'Suneth', 'Yamasinghe', '1988-10-12', '+94789966523', 'validating_officer'),
(7, 3, 'Raj', 'Kumara', '1997-06-10', '+94778855449', 'postman'),
(8, 3, 'Anil', 'Edirisinghe', '1968-04-15', '+94778475126', 'post_master'),
(9, 3, 'Hasantha', 'Jaliya', '1994-11-05', '+94701236547', 'sorting_officer'),
(10, 3, 'Gayani', 'de Silva', '1990-06-13', '+94778956231', 'counter_officer'),
(11, 3, 'Gihan', 'Ferando', '1979-02-14', '+94701122004', 'delivery_officer'),
(12, 3, 'Lasith', 'Silva', '1984-01-31', '+94745569820', 'validating_officer'),
(13, 5, 'Srinath', 'Wickramanayaka', '1964-12-31', '+94711103258', 'post_master'),
(14, 5, 'Kumar', 'Selvam', '1988-08-11', '+94778532104', 'postman'),
(15, 5, 'Dasun', 'Dasanayaka', '1983-07-25', '+94711889577', 'sorting_officer'),
(16, 5, 'Amara', 'Disanayaka', '1978-01-19', '+94778958887', 'counter_officer'),
(17, 5, 'Wimal', 'Liyanasinge', '1987-06-10', '+94718359966', 'delivery_officer'),
(18, 5, 'Hemantha', 'Hemarathne', '1965-11-09', '+94745567963', 'validating_officer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employer_info`
--
ALTER TABLE `employer_info`
  ADD PRIMARY KEY (`employer_id`),
  ADD KEY `fk_office_id` (`office_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employer_info`
--
ALTER TABLE `employer_info`
  MODIFY `employer_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employer_info`
--
ALTER TABLE `employer_info`
  ADD CONSTRAINT `fk_office_id` FOREIGN KEY (`office_id`) REFERENCES `department_info` (`office_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
