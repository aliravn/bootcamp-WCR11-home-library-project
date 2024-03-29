-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 14, 2019 at 04:24 PM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr11_valeria_nazarova_biglibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_ID` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_ID`, `first_name`, `last_name`) VALUES
(1, 'John Ronald Reuel', 'Tolkien'),
(2, 'Ray', 'Bradbury'),
(3, 'Arthur', 'Conan Doyle'),
(4, 'John', 'Bon Jovi'),
(5, 'Till', 'Lindermann'),
(6, 'TEST AUTHOR', 'NAME');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `media_lib_ID` int(11) NOT NULL,
  `isbn_code` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fk_author` int(11) DEFAULT NULL,
  `cover_image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `fk_publisher` int(11) DEFAULT NULL,
  `media_type` enum('book','cd','dvd') COLLATE utf8_bin DEFAULT NULL,
  `media_status` enum('reserved','available') COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`media_lib_ID`, `isbn_code`, `title`, `fk_author`, `cover_image`, `short_description`, `publish_date`, `fk_publisher`, `media_type`, `media_status`) VALUES
(4, 'B002SQFZ68', 'Bon Jovi: Live at Madison Square Garden', 4, 'https://images-na.ssl-images-amazon.com/images/I/51cFP1YuUsL.jpg', 'Blu-Ray edition  New York famed Madison Square Garden on this exciting live DVD from New Jersey finest Rock-n-Roll band', '2010-05-15', 4, 'book', 'available'),
(6, '978-1451678192', 'The Martian Chronicles', 2, 'https://images-na.ssl-images-amazon.com/images/I/518WxaFw0rL._SX307_BO1,204,203,200_.jpg', 'In The Martian Chronicles fine dust settles on the great empty cities of a vanished, devastated civilization', '2012-04-17', 2, 'book', 'available'),
(83, '978-1451673319', 'Fahrenheit 451', 2, 'https://images-na.ssl-images-amazon.com/images/I/41qI9quGIdL._SX324_BO1,204,203,200_.jpg', 'Ray Bradburys internationally acclaimed novel Fahrenheit 451 is a masterwork of twentieth-century literature set in a bleak, dystopian future.', '2012-01-10', 2, 'book', 'reserved'),
(84, '978-0486474915', 'The Adventures of Sherlock Holmes', 3, 'https://images-na.ssl-images-amazon.com/images/I/51NfLyBZK%2BL._SX311_BO1,204,203,200_.jpg', 'Venture back in time to Victorian London to join the detective Sherlock Holmes and his devoted assistant, Dr. Watson as they investigate a dozen of their best-known cases. ', '1996-10-03', 3, 'book', 'reserved'),
(85, 'B000007VKZ', 'Rammstein - Sehnsucht ', 5, 'https://images-na.ssl-images-amazon.com/images/I/51i4%2B8RVWLL._SY492_BO1,204,203,200_.jpg', 'Awesome 2nd album from 1998 from the German pyromaniacs! Fts. \"Du Hast\"', '2005-04-18', 4, 'cd', 'available'),
(86, '978-0544003415', 'The Lord of the Rings', 1, 'https://images-na.ssl-images-amazon.com/images/I/51EstVXM1UL._SX331_BO1,204,203,200_.jpg', 'One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them Screen reader support enabled.      		  One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them  ', '2014-08-14', 1, 'book', 'available'),
(87, '1000000000', 'TITLE_TEST_1', 6, 'https://i.ebayimg.com/images/g/CSIAAOSwpCFcaLQV/s-l300.jpg', 'Short description for the TEST MEDIA 1', '2019-09-14', 5, 'dvd', 'reserved'),
(88, '2000000000', 'TITLE_TEST_2', 6, 'https://i.ebayimg.com/images/g/CSIAAOSwpCFcaLQV/s-l300.jpg', 'Short description for the TEST MEDIA 2', '2019-09-14', 2, 'cd', 'available'),
(89, '3000000000', 'TITLE_TEST_3', 6, 'https://i.ebayimg.com/images/g/CSIAAOSwpCFcaLQV/s-l300.jpg', 'Short description for the TEST MEDIA 3', '2019-09-14', 3, 'cd', 'reserved'),
(90, '4000000000', 'TITLE_TEST_4', 1, 'https://i.ebayimg.com/images/g/CSIAAOSwpCFcaLQV/s-l300.jpg', 'Short description for the TEST MEDIA 4', '2019-09-14', 5, 'book', 'reserved');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `publisher_ID` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `size` enum('big','medium','small') COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`publisher_ID`, `name`, `address`, `size`) VALUES
(1, 'Mariner Books', '17/10 Avenida Sebastian Santos, Barcelona, Spain', 'small'),
(2, 'Simon & Schuster', '124 Madison Ave, New York, USA', 'big'),
(3, 'Dover Publications', '221B Baker Street, London, UK', 'medium'),
(4, 'Best Records United', '124 Pine Hill Road, Los Angeles, USA', 'big'),
(5, 'TEST PUBLISHER', 'TEST PUBLISHER ADDRESS', 'big');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_ID`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_lib_ID`),
  ADD KEY `fk_author` (`fk_author`),
  ADD KEY `fk_publisher` (`fk_publisher`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`publisher_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `media_lib_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `publisher_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`fk_author`) REFERENCES `authors` (`author_ID`),
  ADD CONSTRAINT `media_ibfk_2` FOREIGN KEY (`fk_publisher`) REFERENCES `publishers` (`publisher_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
