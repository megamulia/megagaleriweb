-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2024 at 07:14 AM
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
-- Database: `db_galerifoto`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(5, 'Megaa', 'megamulia', '131313', '0895411976824', 'megamulia669@gmail.com', 'Batujajar'),
(7, 'Mega Cantik', 'megamulia', '131313', '0895411976824', 'megamulia669@gmail.com', 'Batujajar'),
(8, 'Mega Mulia', 'megamulia', '131313', '0895411976824', 'megamulia669@gmail.com', 'Batujajar');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(14, 'ALAM'),
(15, 'MITOLOGI'),
(16, 'HEWAN'),
(18, 'KULINER'),
(20, 'SKINCARE & MAKEUP'),
(21, 'PROFESI'),
(22, 'FASHION'),
(23, 'ARSITEKTUR');

-- --------------------------------------------------------

--
-- Table structure for table `tb_image`
--

CREATE TABLE `tb_image` (
  `image_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `image_description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_image`
--

INSERT INTO `tb_image` (`image_id`, `category_id`, `category_name`, `admin_id`, `admin_name`, `image_name`, `image_description`, `image`, `image_status`, `date_created`) VALUES
(53, 15, 'MITOLOGI', 5, 'Mega Cantik', 'Mermaid', 'Dalam mitologi Yunani, Mermaid dikatakan selalu menggoda para pelaut yang lalai; siapa saja yang tergoda akan menemui ajalnya. Mermaid juga dikaitkan dengan makhluk siren dalam mitologi Yunani, demikian pula sirenia, ordo mamalia laut yang terdiri dari Mermaid dan lembu laut. Beberapa catatan kesaksian perjumpaan dengan Mermaid oleh para pelaut zaman dahulu kemungkinan besar merupakan kekeliruan atas pengamatan wujud mamalia laut tersebut. Kristoforus Kolumbus menyatakan bahwa ia pernah melihat Mermaid saat menjelajah Laut Karibia, dan laporan penampakan juga ada pada abad ke-20 dan ke-21 di Kanada, Israel, dan Zimbabwe. Pada tahun 2012, National Ocean Service Amerika Serikat menyatakan bahwa bukti keberadaan Mermaid tidak pernah ditemukan.', 'foto1707181527.jpg', 1, '2024-02-06 01:05:27'),
(54, 15, 'MITOLOGI', 5, 'Mega Cantik', 'Medusa', 'Medusa adalah salah satu makhluk mitologi Yunani yang paling terkenal. Dia adalah Gorgon, memiliki rambut ular dan pandangan matanya yang dapat mengubah siapa pun yang melihatnya menjadi batu.\r\nHewan mitologi ini adalah satu-satunya Gorgon yang dapat mati, dan dia akhirnya dibunuh oleh pahlawan Perseus. Kepalanya yang dipotong kemudian digunakan oleh Perseus sebagai senjata untuk menghadapi musuh-musuhnya.', 'foto1707181760.jpeg', 1, '2024-02-06 01:09:20'),
(64, 22, 'FASHION', 5, 'Megaa', 'ZARA', 'sepatu ', 'foto1707730086.jpeg', 1, '2024-02-12 09:28:06'),
(66, 14, 'ALAM', 5, 'Megaa', 'sunset', '-', 'foto1707730809.jpg', 1, '2024-02-12 09:40:09'),
(67, 18, 'KULINER', 5, 'Megaa', '-', '-', 'foto1707730922.jpg', 1, '2024-02-12 09:42:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tb_image`
--
ALTER TABLE `tb_image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_image`
--
ALTER TABLE `tb_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_image`
--
ALTER TABLE `tb_image`
  ADD CONSTRAINT `tb_image_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `tb_admin` (`admin_id`),
  ADD CONSTRAINT `tb_image_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `tb_category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
