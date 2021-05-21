-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2021 at 07:40 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Aditya Harsh', 'adityaharsh@gmail.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2021-04-19 12:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(100) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Barack Obama', '2021-04-19 20:01:46', NULL),
(2, 'Michelle Obama', '2021-04-19 20:05:49', NULL),
(3, 'B.S. Grewal', '2021-04-20 04:25:34', NULL),
(4, 'B.L. Thalreja', '2021-04-20 04:44:56', NULL),
(5, 'Robert T. Kiyosaki', '2021-04-20 05:25:38', NULL),
(6, 'Morgan Housel', '2021-04-20 05:27:17', NULL),
(7, 'William Bolton', '2021-04-20 05:31:23', NULL),
(8, 'William Stallings', '2021-04-20 05:33:11', NULL),
(9, 'Dave Ramsey', '2021-04-20 05:34:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(100) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(13) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'A Promised Land', 2, 1, 241491517, 1000, '2021-04-19 20:02:21', NULL),
(2, 'Becoming', 2, 2, 241334144, 1200, '2021-04-19 20:06:34', NULL),
(3, 'Engineering Mathematics', 3, 3, 978819332, 799, '2021-04-20 04:26:55', '2021-04-20 05:30:22'),
(4, 'A Textbook of Electrical Technology', 5, 4, 812192869, 1099, '2021-04-20 04:48:29', NULL),
(6, 'Advanced Engineering Mathematics', 3, 3, 728945821, 1399, '2021-04-20 05:24:46', '2021-04-20 05:30:34'),
(7, 'Rich Dad Poor Dad', 1, 5, 458976523, 1549, '2021-04-20 05:26:35', NULL),
(8, 'The Psychology of Money', 4, 6, 885964751, 1999, '2021-04-20 05:27:59', NULL),
(9, 'MECHATRONICS Pt-1', 5, 7, 625893562, 1199, '2021-04-20 05:32:14', NULL),
(10, 'MECHATRONICS Pt-2', 5, 7, 856452979, 1399, '2021-04-20 05:32:40', NULL),
(11, 'Operating Systems', 5, 8, 675942235, 849, '2021-04-20 05:33:48', NULL),
(12, 'The Total Money Makeover', 4, 9, 475869633, 1049, '2021-04-20 05:35:30', NULL),
(13, 'Advanced Operating System', 5, 4, 856748695, 1049, '2021-04-20 09:05:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(100) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Motivation', 1, '2021-04-19 20:01:13', '0000-00-00 00:00:00'),
(2, 'Biography', 1, '2021-04-19 20:06:07', '0000-00-00 00:00:00'),
(3, 'Mathematics', 1, '2021-04-20 04:25:51', '0000-00-00 00:00:00'),
(4, 'Money', 1, '2021-04-20 04:36:59', '0000-00-00 00:00:00'),
(5, 'Engineering', 1, '2021-04-20 04:45:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(100) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `ReturnStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `ReturnStatus`, `fine`) VALUES
(1, 1, 'SID001', '2021-04-20 06:09:47', NULL, 0, NULL),
(2, 2, 'SID003', '2021-04-19 20:07:39', NULL, 0, NULL),
(3, 3, 'SID004', '2021-04-20 04:46:52', NULL, 0, NULL),
(4, 5, 'SID002', '2021-04-20 05:39:19', NULL, 0, NULL),
(5, 8, 'SID002', '2021-04-20 05:51:21', NULL, NULL, NULL),
(6, 9, 'SID001', '2021-04-20 09:07:33', '2021-04-20 09:08:04', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(200) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID001', 'Aditya Harsh', 'adityaharsh@gmail.com', '1234567890', 'f925916e2754e5e03f75dd58a5733251', 1, '2021-04-19 12:11:42', NULL),
(2, 'SID002', 'Osama Shabbir', 'osama@gmail.com', '8989586802', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-19 17:14:37', NULL),
(3, 'SID003', 'Aritra De', 'aritra@gmail.com', '6985806678', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-19 17:23:41', NULL),
(4, 'SID004', 'Akshat Tiwari', 'akshat@gmail.com', '8666000860', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-19 17:41:14', NULL),
(5, 'SID005', 'Chetan', 'chetan@gmail.com', '8003714909', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-19 17:45:13', NULL),
(6, 'SID006', 'Manish Malhotra', 'manish@gmail.com', '8889973799', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-19 17:46:54', NULL),
(7, 'SID007', 'Tarun', 'tarun@hotmail.com', '8448911946', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-19 17:48:13', NULL),
(8, 'SID008', 'Deepak', 'deepak@live.com', '8972193052', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-19 17:52:09', NULL),
(9, 'SID009', 'Edward Smith', 'ed@gmail.com', '9153617400', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-19 18:04:27', NULL),
(10, 'SID010', 'Tim Sterling', 'tim@yahoo.in', '8896585632', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-19 20:04:02', NULL),
(11, 'SID011', 'Diksha Pathak', 'dp@gmail.com', '5659864782', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-19 20:05:03', NULL),
(12, 'SID012', 'Akhilesh Singh', 'asingh@yahoo.in', '6285958612', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-20 04:29:40', NULL),
(13, 'SID013', 'Neeti Kumar', 'neetik@gmail.com', '7825649136', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-20 04:31:45', NULL),
(14, 'SID014', 'Richa Agarwal', 'richagaarwal@gmail.com', '9788561432', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-20 04:34:08', NULL),
(15, 'SID015', 'Shalini Maiti', 'smaiti@gmail.com', '8695214753', '25f9e794323b453885f5181f1b624d0b', 1, '2021-04-20 09:12:11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
