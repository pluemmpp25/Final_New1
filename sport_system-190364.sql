-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 19, 2021 at 06:00 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sport_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `stadium`
--

CREATE TABLE `stadium` (
  `s_id` int(11) NOT NULL COMMENT 'ลำดับ',
  `s_name` varchar(255) NOT NULL COMMENT 'ชื่อสนาม',
  `s_date` date NOT NULL COMMENT 'วันที่จอง',
  `s_time` varchar(255) NOT NULL COMMENT 'เวลาาจอง',
  `s_price` int(50) NOT NULL COMMENT 'ราคามัดจำ',
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `stadium`
--

INSERT INTO `stadium` (`s_id`, `s_name`, `s_date`, `s_time`, `s_price`, `u_id`) VALUES
(27, 'สนามบาสเกตบอล', '2021-03-20', '11.30-13.30 น.', 2500, 1),
(29, 'สนามฟุตบอล', '2021-03-12', '11.30-13.30 น.', 250, 1),
(33, 'สนามฟุตบอล', '2021-03-13', '11.30-13.30 น.', 250, 1),
(43, 'สนามฟุตซอล', '2021-03-21', '11.30-13.30 น.', 100, 6),
(44, 'สนามฟุตซอล', '2021-03-21', '14.00-16.00 น.', 250, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL COMMENT 'ลำดับ',
  `u_prefix` varchar(50) NOT NULL COMMENT 'คำนำหน้า',
  `u_fname` varchar(255) NOT NULL COMMENT 'ชื่อ',
  `u_lname` varchar(255) NOT NULL COMMENT 'นามสกุล',
  `u_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'อีเมล',
  `u_phone` varchar(15) NOT NULL COMMENT 'เบอร์',
  `u_username` varchar(50) NOT NULL COMMENT 'ชื่อผู้ใช้',
  `u_password` varchar(50) NOT NULL COMMENT 'รหัสผ่าน',
  `u_status` varchar(200) NOT NULL COMMENT 'สถานะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_prefix`, `u_fname`, `u_lname`, `u_email`, `u_phone`, `u_username`, `u_password`, `u_status`) VALUES
(1, 'นางสาว', 'ปิยะธิดา', 'สุวรรณกิจ', 'p@gmail.com', '0614861181', 'pluem1', '12345678', 'ลูกค้า'),
(4, 'นางสาว', 'ปติญญา', 'สุวรรณกิจ', 'g@gmail.com', '0612564789', 'gun12345', '12345678', 'ลูกค้า'),
(6, 'นางสาว', 'เกมมารา', 'สุวรรณกิจ', 'g@gmail.com', '0123334444', 'game1', '12345678', 'ลูกค้า'),
(7, 'นางสาว', 'กันทิมา', 'สุวรรณกิจ', 'gun@gmail.com', '0123456789', 'gun1234', '12345678', 'ลูกค้า'),
(8, 'นางสาว', 'ประกายดาว', 'พลเยี่ยม', 'e@gmail.com', '0123456789', 'e12345', '12345678', 'ลูกค้า');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stadium`
--
ALTER TABLE `stadium`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stadium`
--
ALTER TABLE `stadium`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับ', AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับ', AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
