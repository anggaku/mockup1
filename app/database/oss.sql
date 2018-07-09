-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2018 at 03:05 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esdm`
--

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `action` varchar(150) NOT NULL,
  `result` varchar(150) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `username`, `action`, `result`, `time`) VALUES
(1, 'admin', 'Login', 'Success', '2018-07-03 01:27:10'),
(2, 'admin', 'Logout', 'Success', '2018-07-03 01:29:19'),
(3, 'admin', 'Login', 'Success', '2018-07-03 01:43:19'),
(4, 'admin', 'Logout', 'Success', '2018-07-03 02:17:13'),
(5, 'admin', 'Login', 'Success', '2018-07-03 02:25:13'),
(6, 'admin', 'Logout', 'Success', '2018-07-03 02:20:19'),
(7, 'admin', 'Login', 'Success', '2018-07-03 02:29:19'),
(8, 'admin', 'Logout', 'Success', '2018-07-03 02:24:20'),
(9, 'admin', 'Login', 'Success', '2018-07-03 02:32:20'),
(10, 'admin', 'Login', 'Success', '2018-07-03 03:24:26'),
(11, 'admin', 'Logout', 'Success', '2018-07-03 04:04:08'),
(12, 'admin', 'Login', 'Success', '2018-07-03 04:10:08'),
(13, 'admin', 'Logout', 'Success', '2018-07-03 08:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'd87741ec11c44c476260dff2e5e43f43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
