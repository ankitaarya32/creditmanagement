-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2019 at 01:03 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `creditmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `transfer_id` int(11) NOT NULL,
  `transfer_amount` int(11) NOT NULL,
  `sender_name` text NOT NULL,
  `receiver_name` text NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`transfer_id`, `transfer_amount`, `sender_name`, `receiver_name`, `sender_id`, `receiver_id`) VALUES
(2, 500, 'Ritesh', 'Ankita', 1, 8),
(3, 500, 'Ankit', 'Amarjeet', 2, 7),
(4, 100, 'Ankit', 'Suman', 2, 4),
(5, 100, 'Vishwajeet', 'Ankit', 10, 2),
(6, 100, 'Shreya', 'Ankita', 5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `current_credit` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `current_credit`) VALUES
(1, 'Ritesh', 'ritesh@gmail.com', 4000),
(2, 'Ankit', 'ankit@gmail.com', 3000),
(3, 'Ashutosh', 'ashutosh@gmail.com', 3000),
(4, 'Suman', 'suman@gmail.com', 3600),
(5, 'Shreya', 'shreya@gmail.com', 2400),
(6, 'Sameera', 'sameera@gmail.com', 2600),
(7, 'Amarjeet', 'amarjeet@hotmail.com', 4000),
(8, 'Ankita', 'ankita@yahoo.in', 3100),
(9, 'Aashish', 'ashishcine@gmail.com', 3000),
(10, 'Vishwajeet', 'vishwa@gmail.com', 2900);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`transfer_id`),
  ADD UNIQUE KEY `transfers_transfer_id_uindex` (`transfer_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_uindex` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
