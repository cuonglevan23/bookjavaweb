-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 04:35 AM
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
-- Database: `ebook-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_dtls`
--

CREATE TABLE `book_dtls` (
  `bookId` int(11) NOT NULL,
  `bookName` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `bookCategory` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_dtls`
--

INSERT INTO `book_dtls` (`bookId`, `bookName`, `author`, `price`, `bookCategory`, `status`, `photo`, `email`) VALUES
(1, 'C Programming', 'Balaguruswamy', '300', 'New', 'Active', 'C Pro.jpg', 'admin'),
(2, 'SQL Programming', 'Pabitra Das', '200', 'New', 'Active', 'SQL.jpg', 'admin'),
(4, 'Story Book', 'Rakesh', '600', 'Old', 'Active', 'Story.jpg', 'admin'),
(5, 'Python Programming', 'Zed A. Shaw', '200', 'Old', 'Active', 'python.png', 'xh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `book_order`
--

CREATE TABLE `book_order` (
  `id` int(11) NOT NULL,
  `order_id` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `book_name` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_order`
--

INSERT INTO `book_order` (`id`, `order_id`, `user_name`, `email`, `address`, `phone`, `book_name`, `author`, `price`, `payment`) VALUES
(1, 'BOOK-ORD-002', 'nxhuy', 'xhuy123@gmail.com', 'Demo,Demo,Demo,Demo,123456', '0123658897', 'C Programming', 'Balaguruswamy', '300.0', 'COD'),
(2, 'BOOK-ORD-002', 'nxhuy', 'xhuy123@gmail.com', 'Demo,Demo,Demo,Demo,123456', '0123658897', 'C Programming', 'Balaguruswamy', '300.0', 'COD'),
(3, 'BOOK-ORD-00741', 'LVCuong', 'xhuy123@gmail.com', 'Demo,Demo,Demo,Demo,123456', '015789643', 'C Programming', 'Balaguruswamy', '300.0', 'COD'),
(4, 'BOOK-ORD-00876', '15789643', 'xhuy123@gmail.com', 'Demo,Demo,Demo,Demo,123456', '15789643', 'C Programming', 'Balaguruswamy', '300.0', 'COD'),
(5, 'BOOK-ORD-00213', '15789643', 'xhuy123@gmail.com', 'Demo,Demo,Demo,Demo,123456', '15789643', 'C Programming', 'Balaguruswamy', '300.0', 'COD'),
(6, 'BOOK-ORD-00199', '15789643', 'xhuy123@gmail.com', 'Demo,Demo,Demo,Demo,123456', '15789643', 'SQL Programming', 'Pabitra Das', '200.0', 'COD'),
(7, 'BOOK-ORD-00817', '15789643', 'xhuy123@gmail.com', 'Demo,Demo,Demo,Demo,123456', '15789643', 'SQL Programming', 'Pabitra Das', '200.0', 'COD');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cid` int(11) NOT NULL,
  `bid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `bookName` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `total_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cid`, `bid`, `uid`, `bookName`, `author`, `price`, `total_price`) VALUES
(6, 1, 5, 'C Programming', 'Balaguruswamy', 300, 300),
(7, 2, 2, 'SQL Programming', 'Pabitra Das', 200, 200),
(8, 1, 2, 'C Programming', 'Balaguruswamy', 300, 300),
(9, 1, 2, 'C Programming', 'Balaguruswamy', 300, 300),
(10, 1, 2, 'C Programming', 'Balaguruswamy', 300, 300),
(11, 1, 5, 'C Programming', 'Balaguruswamy', 300, 300),
(12, 1, 1, 'C Programming', 'Balaguruswamy', 300, 300),
(13, 2, 1, 'SQL Programming', 'Pabitra Das', 200, 200),
(14, 2, 1, 'SQL Programming', 'Pabitra Das', 200, 200),
(15, 2, 5, 'SQL Programming', 'Pabitra Das', 200, 200);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phno` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `adress` varchar(45) DEFAULT NULL,
  `landmark` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phno`, `password`, `adress`, `landmark`, `city`, `state`, `pincode`) VALUES
(1, 'LVCuong', 'lvc123@gmail.com', NULL, '123456', NULL, NULL, NULL, NULL, NULL),
(2, 'NXHuy', 'xhuy123@gmail.com', NULL, '123456', NULL, NULL, NULL, NULL, NULL),
(3, 'admin', 'admin@gmail.com', NULL, 'admin', NULL, NULL, NULL, NULL, NULL),
(4, 'SA', 'sa@gmail.com', '0123456789', '123456', NULL, NULL, NULL, NULL, NULL),
(5, 'nxhuy', 'xh@gmail.com', '0123658897', '123456', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_dtls`
--
ALTER TABLE `book_dtls`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `book_order`
--
ALTER TABLE `book_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_dtls`
--
ALTER TABLE `book_dtls`
  MODIFY `bookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `book_order`
--
ALTER TABLE `book_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
