-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 16, 2024 at 07:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbattendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `AutoID` int(11) NOT NULL,
  `AutoStart` varchar(30) NOT NULL,
  `AutoEnd` int(11) NOT NULL,
  `AutoInc` int(11) NOT NULL,
  `AutoType` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`AutoID`, `AutoStart`, `AutoEnd`, `AutoInc`, `AutoType`) VALUES
(1, '2017', 56, 1, 'AuthPrint');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `CourseID` int(11) NOT NULL,
  `CourseCode` varchar(30) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `DepartmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`CourseID`, `CourseCode`, `Description`, `DepartmentID`) VALUES
(3, 'BSIT', 'BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY', 1),
(4, 'BEED', 'BACHELOR OF SCIENCE IN ELEMENTARY EDUCATION', 4),
(5, 'BSBA Financial Management', 'BACHELOR OF SCIENCE IN BUSINES ADMINISTRATION', 3),
(6, 'BSED', 'BACHELOR  OF SCIENCE IN SECONDARY EDUCATION', 4),
(7, 'CRIMONILOGY', 'COLLEGE OF CRIMINAL JUSTICE', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment`
--

CREATE TABLE `tbldepartment` (
  `DepartmentID` int(11) NOT NULL,
  `Department` varchar(30) NOT NULL,
  `Description` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldepartment`
--

INSERT INTO `tbldepartment` (`DepartmentID`, `Department`, `Description`) VALUES
(1, 'ITE', 'IT DEPARTMENT'),
(3, 'BITE', 'BUSINESS AND IT EDUCATION'),
(4, 'TEA', 'TEACHER EDUCATION DEPARTMENT'),
(5, 'CCJ', 'CRIMINOLOGY');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogs`
--

CREATE TABLE `tbllogs` (
  `LOGID` int(11) NOT NULL,
  `USERID` int(11) NOT NULL,
  `LOGDATETIME` datetime NOT NULL,
  `LOGROLE` varchar(30) NOT NULL,
  `LOGMODE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbllogs`
--

INSERT INTO `tbllogs` (`LOGID`, `USERID`, `LOGDATETIME`, `LOGROLE`, `LOGMODE`) VALUES
(26, 1, '2017-01-29 11:37:32', 'Administrator', 'Logged out'),
(27, 1, '2017-01-30 08:28:49', 'Administrator', 'Logged in'),
(28, 1, '2017-01-30 09:40:52', 'Administrator', 'Logged out'),
(29, 1, '2017-01-30 09:41:39', 'Administrator', 'Logged in'),
(30, 1, '2017-01-30 11:15:50', 'Administrator', 'Logged out'),
(31, 1, '2017-02-03 05:57:55', 'Administrator', 'Logged in'),
(32, 1, '2017-02-03 06:23:40', 'Administrator', 'Logged out'),
(33, 1, '2017-02-06 03:44:59', 'Administrator', 'Logged in'),
(34, 1, '2017-02-10 10:56:48', 'Administrator', 'Logged in'),
(35, 1, '2017-02-11 06:40:48', 'Administrator', 'Logged in'),
(36, 1, '2017-02-11 08:22:58', 'Administrator', 'Logged out'),
(37, 1, '2017-02-11 08:23:08', 'Administrator', 'Logged in'),
(38, 1, '2017-02-11 10:21:32', 'Administrator', 'Logged out'),
(39, 1, '2017-02-11 10:21:36', 'Administrator', 'Logged in'),
(40, 1, '2017-02-11 12:44:15', 'Administrator', 'Logged out'),
(41, 1, '2017-02-11 12:44:22', 'Administrator', 'Logged in'),
(42, 1, '2017-02-11 13:09:14', 'Administrator', 'Logged out'),
(43, 1, '2017-02-11 13:09:42', 'Administrator', 'Logged in'),
(44, 1, '2017-02-12 08:21:30', 'Administrator', 'Logged in'),
(45, 1, '2017-02-12 11:52:58', 'Administrator', 'Logged in'),
(46, 1, '2017-02-12 13:11:42', 'Administrator', 'Logged out'),
(47, 1, '2017-02-12 13:12:00', 'Administrator', 'Logged in'),
(48, 1, '2017-02-12 13:14:59', 'Administrator', 'Logged out'),
(49, 1, '2017-02-12 13:17:23', 'Administrator', 'Logged in'),
(50, 1, '2017-02-13 06:35:27', 'Administrator', 'Logged out'),
(51, 1, '2017-02-13 06:35:54', 'Administrator', 'Logged in'),
(52, 1, '2017-02-13 06:44:05', 'Administrator', 'Logged out'),
(53, 1, '2017-02-13 06:46:07', 'Administrator', 'Logged in'),
(54, 1, '2017-02-13 07:10:54', 'Administrator', 'Logged out'),
(55, 1, '2017-02-13 07:11:57', 'Administrator', 'Logged in'),
(56, 1, '2017-02-13 07:55:22', 'Administrator', 'Logged in'),
(57, 1, '2017-02-13 07:55:38', 'Administrator', 'Logged out'),
(58, 1, '2017-02-13 07:57:00', 'Administrator', 'Logged in'),
(59, 1, '2017-02-13 08:03:54', 'Administrator', 'Logged out'),
(60, 1, '2017-02-13 08:04:05', 'Administrator', 'Logged in'),
(61, 1, '2017-02-13 08:42:41', 'Administrator', 'Logged out'),
(62, 1, '2017-02-13 08:42:49', 'Administrator', 'Logged in'),
(63, 1, '2017-02-13 09:07:34', 'Administrator', 'Logged out'),
(64, 1, '2017-02-13 09:07:43', 'Administrator', 'Logged in'),
(65, 1, '2017-02-13 09:25:02', 'Administrator', 'Logged out'),
(66, 1, '2017-02-13 09:25:11', 'Administrator', 'Logged in'),
(67, 1, '2017-02-13 09:26:01', 'Administrator', 'Logged out'),
(68, 1, '2017-02-13 09:26:17', 'Administrator', 'Logged in'),
(69, 1, '2017-02-13 09:48:09', 'Administrator', 'Logged out'),
(70, 1, '2017-02-13 09:48:51', 'Administrator', 'Logged in'),
(71, 1, '2017-02-13 09:52:24', 'Administrator', 'Logged out'),
(72, 1, '2017-02-13 09:53:22', 'Administrator', 'Logged in'),
(73, 1, '2017-02-13 10:04:28', 'Administrator', 'Logged out'),
(74, 1, '2017-02-13 10:04:33', 'Administrator', 'Logged in'),
(75, 1, '2017-02-13 10:04:58', 'Administrator', 'Logged out'),
(76, 1, '2017-02-13 10:05:05', 'Administrator', 'Logged in'),
(77, 1, '2017-02-14 05:24:23', 'Administrator', 'Logged in'),
(78, 1, '2017-02-14 06:08:35', 'Administrator', 'Logged out'),
(79, 1, '2017-02-14 08:08:19', 'Administrator', 'Logged in'),
(80, 1, '2017-02-14 08:37:12', 'Administrator', 'Logged out'),
(81, 1, '2017-02-14 08:37:23', 'Administrator', 'Logged in'),
(82, 1, '2017-02-14 08:52:18', 'Administrator', 'Logged out'),
(83, 1, '2017-02-14 08:54:10', 'Administrator', 'Logged in'),
(84, 1, '2017-02-17 00:51:27', 'Administrator', 'Logged in'),
(85, 1, '2017-02-17 05:10:46', 'Administrator', 'Logged out'),
(86, 1, '2017-02-17 05:11:57', 'Administrator', 'Logged in'),
(87, 1, '2017-02-17 05:18:17', 'Administrator', 'Logged out'),
(88, 1, '2017-02-17 05:20:56', 'Administrator', 'Logged in'),
(89, 1, '2017-02-17 05:36:58', 'Administrator', 'Logged in'),
(90, 1, '2017-02-17 06:07:09', 'Administrator', 'Logged out'),
(91, 1, '2017-02-18 02:00:39', 'Administrator', 'Logged in'),
(92, 1, '2017-02-19 03:15:19', 'Administrator', 'Logged in'),
(93, 1, '2017-02-19 06:33:26', 'Administrator', 'Logged out'),
(94, 1, '2017-02-19 06:33:54', 'Administrator', 'Logged in'),
(95, 1, '2017-02-19 06:34:02', 'Administrator', 'Logged out'),
(96, 1, '2017-02-20 03:42:46', 'Administrator', 'Logged in'),
(97, 1, '2017-02-23 06:46:15', 'Administrator', 'Logged in'),
(98, 1, '2017-02-26 12:38:40', 'Administrator', 'Logged in'),
(99, 1, '2017-02-26 12:50:05', 'Administrator', 'Logged out'),
(100, 1, '2017-02-26 12:50:17', 'Administrator', 'Logged in'),
(101, 1, '2017-02-26 12:53:11', 'Administrator', 'Logged out'),
(102, 1, '2017-02-26 13:11:17', 'Administrator', 'Logged in'),
(103, 1, '2017-03-02 06:34:19', 'Administrator', 'Logged in'),
(104, 1, '2017-03-02 08:29:24', 'Administrator', 'Logged in'),
(105, 1, '2017-03-02 11:37:04', 'Administrator', 'Logged out'),
(106, 1, '2017-03-02 11:37:45', 'Administrator', 'Logged in'),
(107, 1, '2017-03-02 11:38:33', 'Administrator', 'Logged out'),
(108, 6, '2017-03-02 11:38:45', 'Registrar', 'Logged in'),
(109, 6, '2017-03-02 11:51:59', 'Registrar', 'Logged out'),
(110, 1, '2017-03-02 13:42:16', 'Administrator', 'Logged in'),
(111, 1, '2017-03-02 13:45:38', 'Administrator', 'Logged out'),
(112, 1, '2017-03-02 13:45:44', 'Administrator', 'Logged in'),
(113, 1, '2017-03-03 03:00:06', 'Administrator', 'Logged out'),
(114, 1, '2017-03-03 05:56:11', 'Administrator', 'Logged in'),
(115, 1, '2017-03-03 10:11:18', 'Administrator', 'Logged out'),
(116, 1, '2017-03-03 10:28:36', 'Administrator', 'Logged in'),
(117, 1, '2017-03-03 10:43:02', 'Administrator', 'Logged out'),
(118, 7, '2017-03-03 10:43:10', 'Registrar', 'Logged in'),
(119, 7, '2017-03-03 10:43:36', 'Registrar', 'Logged out'),
(120, 1, '2017-03-03 10:43:41', 'Administrator', 'Logged in'),
(121, 1, '2017-03-03 10:44:50', 'Administrator', 'Logged out'),
(122, 7, '2017-03-03 10:44:55', 'Registrar', 'Logged in'),
(123, 7, '2017-03-03 10:48:53', 'Registrar', 'Logged out'),
(124, 1, '2017-03-03 10:48:57', 'Administrator', 'Logged in'),
(125, 1, '2017-03-03 11:17:36', 'Administrator', 'Logged in'),
(126, 1, '2017-03-03 18:21:25', 'Administrator', 'Logged in'),
(127, 1, '2017-03-04 00:16:04', 'Administrator', 'Logged in'),
(128, 1, '2017-03-04 10:59:24', 'Administrator', 'Logged in'),
(129, 1, '2017-03-04 11:13:16', 'Administrator', 'Logged in'),
(130, 1, '2017-03-04 11:15:49', 'Administrator', 'Logged out'),
(131, 8, '2017-03-04 11:15:57', 'Registrar', 'Logged in'),
(132, 8, '2017-03-04 11:16:32', 'Registrar', 'Logged out'),
(133, 1, '2017-03-04 11:16:37', 'Administrator', 'Logged in'),
(134, 1, '2017-03-04 17:55:52', 'Administrator', 'Logged in'),
(135, 1, '2017-03-05 09:43:48', 'Administrator', 'Logged in'),
(136, 1, '2017-03-05 13:36:22', 'Administrator', 'Logged out'),
(137, 1, '2017-03-05 13:36:45', 'Administrator', 'Logged in'),
(138, 1, '2017-03-05 13:54:39', 'Administrator', 'Logged out'),
(139, 1, '2017-03-08 07:54:02', 'Administrator', 'Logged in'),
(140, 1, '2017-03-08 08:02:08', 'Administrator', 'Logged out'),
(141, 1, '2017-03-13 10:52:30', 'Administrator', 'Logged in'),
(142, 1, '2017-03-14 20:18:18', 'Administrator', 'Logged in'),
(143, 1, '2017-03-14 22:36:17', 'Administrator', 'Logged in'),
(144, 1, '2017-03-15 02:02:32', 'Administrator', 'Logged in'),
(145, 1, '2017-03-16 03:43:51', 'Administrator', 'Logged in'),
(146, 1, '2017-03-16 04:05:04', 'Administrator', 'Logged out'),
(147, 1, '2018-10-20 22:44:37', 'Administrator', 'Logged in'),
(148, 1, '2018-10-20 23:00:36', 'Administrator', 'Logged out'),
(149, 1, '2018-10-20 23:20:52', 'Administrator', 'Logged in'),
(150, 1, '2018-10-20 23:40:43', 'Administrator', 'Logged out'),
(151, 1, '2018-10-21 00:05:56', 'Administrator', 'Logged in'),
(152, 1, '2018-10-21 00:05:59', 'Administrator', 'Logged out'),
(153, 1, '2018-10-21 00:08:08', 'Administrator', 'Logged in'),
(154, 1, '2018-10-21 00:09:19', 'Administrator', 'Logged out'),
(155, 1, '2018-10-21 00:11:11', 'Administrator', 'Logged in'),
(156, 1, '2018-10-21 01:10:19', 'Administrator', 'Logged out'),
(157, 1, '2018-10-21 01:10:38', 'Administrator', 'Logged in'),
(158, 1, '2018-10-21 01:12:38', 'Administrator', 'Logged in'),
(159, 1, '2018-10-21 01:19:03', 'Administrator', 'Logged out'),
(160, 1, '2018-10-21 01:19:07', 'Administrator', 'Logged in'),
(161, 1, '2024-05-16 01:22:32', 'Administrator', 'Logged in'),
(162, 1, '2024-05-16 01:23:46', 'Administrator', 'Logged out'),
(163, 1, '2024-05-16 01:23:55', 'Administrator', 'Logged in'),
(164, 1, '2024-05-16 01:32:14', 'Administrator', 'Logged out'),
(165, 1, '2024-05-16 01:41:45', 'Administrator', 'Logged in'),
(166, 1, '2024-05-16 01:44:22', 'Administrator', 'Logged out'),
(167, 1, '2024-05-16 01:44:53', 'Administrator', 'Logged in'),
(168, 1, '2024-05-16 01:51:47', 'Administrator', 'Logged out'),
(169, 1, '2024-05-16 01:51:52', 'Administrator', 'Logged in'),
(170, 1, '2024-05-16 03:29:45', 'Administrator', 'Logged out'),
(171, 5, '2024-05-16 03:29:58', 'Administrator', 'Logged in'),
(172, 5, '2024-05-16 03:31:33', 'Administrator', 'Logged out'),
(173, 1, '2024-05-16 03:32:23', 'Administrator', 'Logged in'),
(174, 1, '2024-05-16 07:09:19', 'Administrator', 'Logged out'),
(175, 1, '2024-05-16 07:09:23', 'Administrator', 'Logged in');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(11) NOT NULL,
  `StudentID` varchar(30) NOT NULL,
  `Firstname` varchar(99) NOT NULL,
  `Lastname` varchar(99) NOT NULL,
  `Middlename` varchar(99) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `BirthDate` date NOT NULL,
  `Age` int(11) NOT NULL,
  `ContactNo` varchar(30) NOT NULL,
  `YearLevel` varchar(11) NOT NULL,
  `CourseID` int(11) NOT NULL,
  `StudPhoto` varchar(255) NOT NULL,
  `Cand_Status` varchar(30) NOT NULL,
  `generated_code` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `StudentID`, `Firstname`, `Lastname`, `Middlename`, `Address`, `Gender`, `BirthDate`, `Age`, `ContactNo`, `YearLevel`, `CourseID`, `StudPhoto`, `Cand_Status`, `generated_code`) VALUES
(11, '3525325235', 'JAMES ARNOLD', 'VALDEZ', '555', 'PUROK 7', 'Female', '2003-11-17', 20, '32523532523523', 'Second', 4, 'photo/anime-4k-pictures-q1cg89niv319ld1a.jpg', '', ''),
(12, '235235235235', '2352352352', '523523', '523523', '52352352', 'Male', '2000-06-15', 23, '23523523523', 'Second', 5, 'photo/b5a247a6-ba50-489a-a37c-64d51688d8c7.jpg', '', ''),
(13, '2222222222', 'SHANE', 'ABELLA', 'V', 'PUROK 7', 'Female', '2001-05-14', 23, '221412512512', 'Fourth', 4, 'photo/anime-4k-pictures-q1cg89niv319ld1a.jpg', '', ''),
(14, '325325', 'EWTWET', 'EWTWET', 'WETWEt', 'WETWE', 'Female', '2001-03-13', 23, '42342342', 'Second', 5, '', '', ''),
(15, '234235', '3253253', '23523', '5235', '23523', 'Male', '2000-12-12', 23, '5325235', 'Second', 4, '', '', ''),
(16, '223523', '523523', '5235', '2352', '5235235', 'Male', '1973-01-12', 51, '5235235235', 'Second', 4, '', '', ''),
(17, '325235', '23532', '532', '523523', '5235', 'Male', '1988-03-15', 36, '5325235235', 'Second', 6, '', '', ''),
(18, '23423', '423532', '525235', '325', '325235', 'Female', '1994-10-13', 29, '523523523', 'Third', 4, '', '', ''),
(19, '523523', '523', '5235', '23523', '5235', 'Female', '2003-04-28', 21, '523523', 'Third', 4, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbltimetable`
--

CREATE TABLE `tbltimetable` (
  `TimeTableID` int(11) NOT NULL,
  `StudentID` varchar(90) NOT NULL,
  `TimeInAM` varchar(30) NOT NULL,
  `TimeOutAM` varchar(30) NOT NULL,
  `TimeInPM` varchar(30) NOT NULL,
  `TimeOutPM` varchar(30) NOT NULL,
  `AttendDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltimetable`
--

INSERT INTO `tbltimetable` (`TimeTableID`, `StudentID`, `TimeInAM`, `TimeOutAM`, `TimeInPM`, `TimeOutPM`, `AttendDate`) VALUES
(2, '0010266936', '07:42 AM', '', '', '', '2024-05-16'),
(3, '0010266936', '07:42 AM', '', '', '', '2024-05-16'),
(4, '0010266936', '08:21 AM', '', '', '', '2024-05-16'),
(5, '3525325235', '09:24 AM', '09:26 AM', '', '', '2024-05-16'),
(6, '235235235235', '09:25 AM', '09:43 AM', '', '', '2024-05-16'),
(7, '235235235235', '09:44 AM', '', '', '', '2024-05-16'),
(8, '2222222222', '09:45 AM', '10:43 AM', '', '', '2024-05-16'),
(9, '3525325235', '11:08 AM', '', '', '', '2024-05-16');

-- --------------------------------------------------------

--
-- Table structure for table `tblverifytimeintimeout`
--

CREATE TABLE `tblverifytimeintimeout` (
  `VerifyID` int(11) NOT NULL,
  `StudentID` varchar(90) NOT NULL,
  `TimeIn` varchar(30) NOT NULL,
  `TimeOut` varchar(30) NOT NULL,
  `Verification` varchar(90) NOT NULL,
  `DateValidation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblverifytimeintimeout`
--

INSERT INTO `tblverifytimeintimeout` (`VerifyID`, `StudentID`, `TimeIn`, `TimeOut`, `Verification`, `DateValidation`) VALUES
(2, '0010266936', '08:21 AM', '', 'TimeIn', '2024-05-16'),
(3, '3525325235', '11:08 AM', '09:43 AM', 'TimeIn', '2024-05-16'),
(4, '235235235235', '09:44 AM', '11:07 AM', 'TimeOut', '2024-05-16'),
(5, '2222222222', '09:45 AM', '10:43 AM', 'TimeOut', '2024-05-16');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `ACCOUNT_ID` int(11) NOT NULL,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `ACCOUNT_USERNAME` varchar(255) NOT NULL,
  `ACCOUNT_PASSWORD` text NOT NULL,
  `ACCOUNT_TYPE` varchar(30) NOT NULL,
  `EMPID` int(11) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`ACCOUNT_ID`, `ACCOUNT_NAME`, `ACCOUNT_USERNAME`, `ACCOUNT_PASSWORD`, `ACCOUNT_TYPE`, `EMPID`, `USERIMAGE`) VALUES
(1, 'james valdez', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 1234, 'photos/import2.png'),
(9, 'ELJHUN ALLAWAN', 'jun1', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Administrator', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`AutoID`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`CourseID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `tbllogs`
--
ALTER TABLE `tbllogs`
  ADD PRIMARY KEY (`LOGID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `StudentID` (`StudentID`);

--
-- Indexes for table `tbltimetable`
--
ALTER TABLE `tbltimetable`
  ADD PRIMARY KEY (`TimeTableID`);

--
-- Indexes for table `tblverifytimeintimeout`
--
ALTER TABLE `tblverifytimeintimeout`
  ADD PRIMARY KEY (`VerifyID`),
  ADD UNIQUE KEY `StudentID` (`StudentID`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`ACCOUNT_ID`),
  ADD UNIQUE KEY `ACCOUNT_USERNAME` (`ACCOUNT_USERNAME`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `AutoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `CourseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  MODIFY `DepartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbllogs`
--
ALTER TABLE `tbllogs`
  MODIFY `LOGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbltimetable`
--
ALTER TABLE `tbltimetable`
  MODIFY `TimeTableID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblverifytimeintimeout`
--
ALTER TABLE `tblverifytimeintimeout`
  MODIFY `VerifyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
