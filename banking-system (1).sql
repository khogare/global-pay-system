-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2021 at 06:20 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking-system`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `current-balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `current-balance`) VALUES
(1, 'Karishma Borkar', 'karishborkar03@gmail.com', 3500),
(2, 'Chinmay Ingale', 'chinmayingale274@gmail.com', 5000),
(3, 'Mansi Kusale', 'mansi12@gmail.com', 8000),
(4, 'Rashmi Khogare', 'rashmi90@gmail.com', 3000),
(5, 'Girish Dalvi', 'girish82@gmail.com', 6500),
(6, 'Rohini Patel', 'rohini56@gmail.com', 500),
(7, 'Kirtana Shetty', 'shettykirtana45@gmail.com', 2000),
(8, 'Gunjan Borkar', 'gunjan77@gmail.com', 4000);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sender`, `receiver`, `amount`) VALUES
('Karishma Borkar', 'Chinmay Ingale', 500),
('Karishma Borkar', 'Mansi Kusale', 100),
('Mansi Kusale', 'Rohini Patel', 200),
('Rashmi Khogare', 'Mansi Kusale', 100),
('Girish Dalvi', 'Rohini Patel', 500),
('Karishma Borkar', 'Kirtana Shetty', 1000),
('Karishma Borkar', 'Chinmay Ingale', 500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
