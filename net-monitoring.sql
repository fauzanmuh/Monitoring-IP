-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2022 at 02:37 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `net-monitoring`
--

-- --------------------------------------------------------

--
-- Table structure for table `blok`
--

CREATE TABLE `blok` (
  `id_blok` int(50) NOT NULL,
  `name_blok` varchar(255) NOT NULL,
  `telp_blok` varchar(100) NOT NULL,
  `add_blok` longtext NOT NULL,
  `sum_client` int(100) NOT NULL,
  `pusat_client` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blok`
--

INSERT INTO `blok` (`id_blok`, `name_blok`, `telp_blok`, `add_blok`, `sum_client`, `pusat_client`) VALUES
(11, 'NCC', '(034) 198-5345', 'Jl. Tugu Kec. Klojen Kota Malang', 0, '1'),
(13, 'Customers', '(034) 198-5234', 'Jl. Mayjen Sungkono, Kec. Kedung Kandang', 0, '0'),
(14, 'WIFI SARPAS APTIKA', '(034) 123-4875', 'Jl. Mayjen Sungkono, Kec. Kedung Kandang', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` int(50) NOT NULL,
  `id_blok` int(50) NOT NULL,
  `ip_client` varchar(50) NOT NULL,
  `name_client` varchar(255) NOT NULL,
  `status_client` enum('Connected','Disconnected','Destination net unreachable','Destination host unreachable','Request timed out') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `id_blok`, `ip_client`, `name_client`, `status_client`) VALUES
(28, 11, '103.135.14.1', 'PTP Router BGP - Firewall', 'Connected'),
(29, 11, '10.0.0.1', 'PTP Router Balaikota (LAN)', 'Connected'),
(30, 11, '10.73.1.1', 'PTP Router Distribusi', 'Connected'),
(31, 11, '103.135.14.9', 'DMZ Public', 'Connected'),
(32, 13, '10.8.9.2', 'Fauzan', 'Connected'),
(33, 14, '192.168.216.15', 'Printer EPSON L1455', 'Connected');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id_log` int(10) NOT NULL,
  `id_client` varchar(100) NOT NULL,
  `date_log` varchar(25) NOT NULL,
  `hour_log` varchar(25) NOT NULL,
  `status_log` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id_log`, `id_client`, `date_log`, `hour_log`, `status_log`) VALUES
(122, '28', '06 Oct 2022', '12', 0),
(123, '29', '10 Oct 2022', '10', 0),
(125, '31', '11 Oct 2022', '15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `email_user` varchar(255) NOT NULL,
  `pwd_user` varchar(255) NOT NULL,
  `name_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `email_user`, `pwd_user`, `name_user`) VALUES
(1, 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Admin'),
(2, 'mufauzan18@gmail.com', '39adb8d1fba094029b87edf3f794b2e8dca196de', 'Fauzan'),
(3, 'abdillahnavis43@gmail.com', '04ade2e3a4ce65c5ee0cbfa08dacc69e7d690176', 'Navis');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blok`
--
ALTER TABLE `blok`
  ADD PRIMARY KEY (`id_blok`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`,`ip_client`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`,`email_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blok`
--
ALTER TABLE `blok`
  MODIFY `id_blok` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
