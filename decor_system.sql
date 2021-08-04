-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2021 at 07:35 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `decor_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_db`
--

CREATE TABLE `book_db` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `sta` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_db`
--

INSERT INTO `book_db` (`booking_id`, `user_id`, `service_id`, `sta`) VALUES
(1, 1, 2, 'pending'),
(2, 1, 1, 'Accepted'),
(3, 11, 3, 'Accepted'),
(7, 1, 2, 'pending'),
(8, 4, 1, 'pending'),
(9, 5, 3, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_db`
--

CREATE TABLE `complaint_db` (
  `complaint_id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `subj` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_db`
--

CREATE TABLE `contacts_db` (
  `contact_id` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_db`
--

INSERT INTO `contacts_db` (`contact_id`, `phone`, `email`, `address`) VALUES
(1, '12121212112', 'aa@a.com', 'asap');

-- --------------------------------------------------------

--
-- Table structure for table `login_tbl`
--

CREATE TABLE `login_tbl` (
  `login_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_tbl`
--

INSERT INTO `login_tbl` (`login_id`, `username`, `password`, `role`) VALUES
(1, 'Babu N', 'ba', 'user'),
(2, 'admin', 'admin', 'admin'),
(3, 'user', 'user', 'user'),
(4, 'ancy', '12345', 'user'),
(5, 'achu', '1234', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `services_db`
--

CREATE TABLE `services_db` (
  `services_id` int(11) NOT NULL,
  `services` varchar(30) NOT NULL,
  `price` varchar(10) NOT NULL,
  `sdesc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services_db`
--

INSERT INTO `services_db` (`services_id`, `services`, `price`, `sdesc`) VALUES
(1, 'Birthday', '8000', 'All interior works included with the cake'),
(2, 'Marriage', '22000', 'Except for food and drinks'),
(3, 'Inauguration', '29000', 'All programs are done'),
(4, 'love anniversary', '3000', 'interior ');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `user_id` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_db`
--
ALTER TABLE `book_db`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `complaint_db`
--
ALTER TABLE `complaint_db`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `contacts_db`
--
ALTER TABLE `contacts_db`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `login_tbl`
--
ALTER TABLE `login_tbl`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `services_db`
--
ALTER TABLE `services_db`
  ADD PRIMARY KEY (`services_id`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_db`
--
ALTER TABLE `book_db`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `complaint_db`
--
ALTER TABLE `complaint_db`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts_db`
--
ALTER TABLE `contacts_db`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_tbl`
--
ALTER TABLE `login_tbl`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services_db`
--
ALTER TABLE `services_db`
  MODIFY `services_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_registration`
--
ALTER TABLE `user_registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
