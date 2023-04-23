-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 23, 2023 at 08:10 PM
-- Server version: 8.0.30
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `WebProLAB3`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `balance` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `name`, `login`, `password`, `ip`, `balance`) VALUES
(0, 'Admin', 'admin', 'admin', '0.0.0.0', 34122),
(1, 'admln', 'admln', 'hack', '0.0.0.1', 999999),
(111, 'УберДолжник', 'Postavte', 'Zalik', '33.33.33.33', -99999),
(123, 'Victor', 'vic123', '123', '62.16.64.0', 12231),
(231, 'Igor', 'Igor231', '231', '62.16.95.255', -412),
(789, 'Max', 'Max789', '789', '178.219.184.0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `seanse`
--

CREATE TABLE `seanse` (
  `id_seanse` int NOT NULL,
  `start` time NOT NULL,
  `stop` time NOT NULL,
  `in_traffic` int NOT NULL,
  `out_traffic` int NOT NULL,
  `fid_client` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `seanse`
--

INSERT INTO `seanse` (`id_seanse`, `start`, `stop`, `in_traffic`, `out_traffic`, `fid_client`) VALUES
(0, '13:22:26', '15:06:00', 563, 1231, 0),
(1, '12:22:26', '13:06:00', 1231, 1341, 1),
(2, '02:22:26', '07:06:00', 14231, 13411, 123),
(3, '10:22:26', '17:06:00', 1231, 1341, 231),
(4, '00:22:26', '08:06:00', 19731, 13341, 789),
(5, '05:09:03', '14:09:03', 12323, 11124, 111);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `seanse`
--
ALTER TABLE `seanse`
  ADD PRIMARY KEY (`id_seanse`),
  ADD KEY `id_seanse` (`id_seanse`),
  ADD KEY `fid_client` (`fid_client`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `seanse`
--
ALTER TABLE `seanse`
  ADD CONSTRAINT `seanse_ibfk_1` FOREIGN KEY (`fid_client`) REFERENCES `client` (`id_client`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
