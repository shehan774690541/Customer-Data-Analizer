-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 24, 2023 at 08:16 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `ID` int(5) NOT NULL,
  `Ithem` varchar(100) NOT NULL,
  `Brand` varchar(100) NOT NULL,
  `IthemCount` int(5) NOT NULL,
  `I_index` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(5) NOT NULL,
  `price_discount` int(5) NOT NULL,
  PRIMARY KEY (`I_index`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`ID`, `Ithem`, `Brand`, `IthemCount`, `I_index`, `price`, `price_discount`) VALUES
(10, 'GT620 VGA', 'NVDIA', 2, 1, 30000, 0),
(13, 'calculatore', 'deli', 1, 2, 500, 0),
(9, 'DDR3 4GB', 'RAM', 4, 3, 12000, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `ithems`
--

DROP TABLE IF EXISTS `ithems`;
CREATE TABLE IF NOT EXISTS `ithems` (
  `ID` int(5) NOT NULL,
  `ithemName` varchar(300) NOT NULL,
  `ithemBrand` varchar(300) NOT NULL,
  `ithemPrce` int(6) NOT NULL,
  `ithemDiscount` float NOT NULL,
  `stock` int(5) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ithems`
--

INSERT INTO `ithems` (`ID`, `ithemName`, `ithemBrand`, `ithemPrce`, `ithemDiscount`, `stock`) VALUES
(1, 'LED monitor (1600x900)', 'LG', 5000, 0, 9),
(2, 'LCD Monitor (1024x1280)', 'Dell', 1200, 0, 10),
(3, 'K6010 Wired Keyboard', 'DELUX', 600, 3.5, 25),
(4, 'UPS', 'SCP', 5000, 1.2, 150),
(5, 'Intel(R) Core(TM) i5-3470 CPU @ 3.20GHz   3.20 GHz', 'intel', 4500, 0, 20),
(6, '500GB HDD', 'THOSHIBA', 2500, 0, 12),
(7, '1TB HDD', 'SONY', 5000, 0, 20),
(8, 'DDR 3 2GB ', 'RAM', 1500, 0, 12),
(9, 'DDR3 4GB', 'RAM', 3000, 0, 100),
(10, 'GT620 VGA', 'NVDIA', 15000, 1, 50),
(11, 'Gamming Mouse', 'GAMENOTE', 2500, 0, 30),
(12, 'LED Bulb 12W', '240V ', 230, 2, 11),
(13, 'calculatore', 'deli', 500, 11, 10),
(1144, 'ithem', 'brand', 100, 5, 0),
(14, 'nervfrf', 'nmis', 35, 10, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
