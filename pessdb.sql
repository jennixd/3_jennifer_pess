-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2022 at 02:08 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pessdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `incident_id` int(11) NOT NULL,
  `patrolcar_id` varchar(10) NOT NULL,
  `time_dispatched` datetime NOT NULL,
  `time_arrived` datetime DEFAULT NULL,
  `time_completed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dispatch`
--

INSERT INTO `dispatch` (`incident_id`, `patrolcar_id`, `time_dispatched`, `time_arrived`, `time_completed`) VALUES
(25, 'QX1123V', '2022-03-02 09:14:34', '2022-03-03 09:16:19', '2022-03-09 14:06:49'),
(25, 'QX3333C', '2020-04-30 01:24:29', '2020-04-30 01:41:13', '2020-04-30 01:41:55'),
(27, 'QX2222B', '2020-04-30 01:24:29', '2020-04-30 01:33:11', '2020-04-30 01:38:21'),
(88, 'QX8888H', '2022-03-02 12:11:33', '2022-03-03 09:25:26', '2022-03-03 13:56:16'),
(89, 'QX9999I', '2022-03-02 12:11:42', '2022-03-06 14:46:21', '2022-03-06 14:46:38'),
(90, 'QX5555E', '2022-03-03 14:13:20', NULL, NULL),
(93, 'QX6859E', '2022-03-06 00:43:13', NULL, NULL),
(95, 'QX6666F', '2022-03-06 00:51:02', NULL, '2022-03-06 12:47:08'),
(96, 'QX9999I', '2022-03-06 00:51:28', '2022-03-06 14:46:21', '2022-03-06 14:46:38'),
(97, 'QX1123V', '2022-03-06 00:52:28', '2022-03-06 14:06:24', NULL),
(98, 'QX7777G', '2022-03-06 00:56:33', NULL, '2022-03-06 02:14:06'),
(99, 'QX8888H', '2022-03-06 00:57:18', NULL, NULL),
(100, 'QX8888H', '2022-03-06 00:59:52', NULL, NULL),
(101, 'QX2222B', '2022-03-06 01:01:52', NULL, NULL),
(102, 'QX4444D', '2022-03-06 01:05:13', NULL, NULL),
(103, 'QX3333C', '2022-03-06 01:05:48', NULL, NULL),
(104, 'QX3333C', '2022-03-06 01:06:21', NULL, NULL),
(105, 'QX5438L', '2022-03-06 01:06:29', NULL, NULL),
(106, 'QX5555E', '2022-03-06 01:08:30', NULL, NULL),
(107, 'QX5555E', '2022-03-06 01:09:35', NULL, NULL),
(108, 'QX5555E', '2022-03-06 01:09:38', NULL, NULL),
(108, 'QX6666F', '2022-03-06 01:09:38', NULL, '2022-03-06 12:47:08'),
(109, 'QX3333C', '2022-03-06 01:09:44', NULL, NULL),
(112, 'QX5438L', '2022-03-06 01:11:51', NULL, NULL),
(113, 'QX9999I', '2022-03-06 01:14:37', '2022-03-06 14:46:21', '2022-03-06 14:46:38'),
(114, 'QX7777G', '2022-03-06 01:15:22', NULL, '2022-03-06 02:14:06'),
(115, 'QX1111A', '2022-03-06 01:18:11', NULL, '2022-03-06 12:47:13'),
(117, 'QX2222B', '2022-03-06 01:22:52', NULL, NULL),
(118, 'QX8888H', '2022-03-06 01:24:48', NULL, NULL),
(119, 'QX8888H', '2022-03-06 01:28:04', NULL, NULL),
(120, 'QX6859E', '2022-03-06 01:28:09', NULL, NULL),
(121, 'QX1123V', '2022-03-06 01:40:47', '2022-03-06 14:06:24', NULL),
(122, 'QX4444D', '2022-03-06 01:42:01', NULL, NULL),
(123, 'QX9999I', '2022-03-06 01:45:47', '2022-03-06 14:46:21', '2022-03-06 14:46:38'),
(124, 'QX7777G', '2022-03-06 02:12:58', NULL, '2022-03-06 02:14:06'),
(125, 'QX1111A', '2022-03-06 03:59:13', NULL, '2022-03-06 12:47:13'),
(126, 'QX6666F', '2022-03-06 12:46:45', NULL, '2022-03-06 12:47:08'),
(127, 'QX9999I', '2022-03-06 14:47:58', NULL, NULL),
(128, 'QX7777G', '2022-03-06 14:51:29', NULL, NULL),
(129, 'QX6859E', '2022-03-06 14:53:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incident_id` int(11) NOT NULL,
  `caller_name` varchar(30) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `incident_type_id` varchar(3) NOT NULL,
  `incident_location` varchar(50) NOT NULL,
  `incident_desc` varchar(100) NOT NULL,
  `incident_status_id` varchar(1) NOT NULL,
  `time_called` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incident_id`, `caller_name`, `phone_number`, `incident_type_id`, `incident_location`, `incident_desc`, `incident_status_id`, `time_called`) VALUES
(25, 'Tom', '', '040', 'CCK', ' At blk 332 level 6.', '3', '2022-02-10 08:46:18'),
(27, 'Julian', '', '010', 'Bedok', '   Fire at void deck  ', '2', '2020-04-29 17:24:29'),
(88, 'Thomas', '81234137', '010', 'Tampines', 'asdfsas', '3', '2022-03-03 05:56:16'),
(89, 'Thomas', 'fgh', '010', 'as', '              sadsfsdasa', '3', '2022-03-06 06:46:38'),
(90, 'Thomas', '81234137', '010', 'Tampines', 'fire', '2', '2022-03-03 06:13:20'),
(93, 'Thomas', '81234137', '020', 'Tampines', 'aaaaaa', '2', '2022-03-05 16:43:13'),
(95, 'Thomas', '81234137', '010', 'Tampines', 's', '3', '2022-03-06 04:47:08'),
(96, 'Thomas', '81234137', '020', 'Tampines', 'a', '2', '2022-03-05 16:51:28'),
(97, 'Karamina', '999', '090', 'Pandan Gardens', 'illegally smoking', '2', '2022-03-05 16:52:28'),
(98, 'Thomas', '81234137', '010', 'Tampines', 'asd', '3', '2022-03-05 18:14:06'),
(99, 'Thomas', '81234137', '010', 'Tampines', 'asd ', '2', '2022-03-05 16:57:18'),
(100, 'Thomas', '81234137', '010', 'Tampines', 'asd ', '2', '2022-03-05 16:59:52'),
(101, 'Thomas', '81234137', '010', 'Tampines', 'asd  ', '2', '2022-03-05 17:01:52'),
(102, 'Thomas', '81234137', '010', 'Tampines', 'asdsa', '2', '2022-03-05 17:05:13'),
(103, 'Thomas', '81234137', '010', 'Tampines', 'adsa', '2', '2022-03-05 17:05:48'),
(104, 'Thomas', '81234137', '010', 'Tampines', 'adsa', '2', '2022-03-05 17:06:21'),
(105, 'Thomas', '81234137', '010', 'Tampines', 'asd', '2', '2022-03-05 17:06:29'),
(106, 'Thomas', '81234137', '010', 'Tampines', 'ads', '2', '2022-03-05 17:08:30'),
(107, 'Thomas', '81234137', '010', 'Tampines', 'ads', '2', '2022-03-05 17:09:35'),
(108, 'Thomas', '81234137', '010', 'Tampines', 'ads', '2', '2022-03-05 17:09:38'),
(109, 'Thomas', '81234137', '010', 'Tampines', 'ads', '2', '2022-03-05 17:09:44'),
(110, 'Thomas', '81234137', '010', 'Tampines', 'ads', '1', '2022-03-05 17:11:02'),
(111, 'Thomas', '81234137', '010', 'Tampines', 'ads', '1', '2022-03-05 17:11:45'),
(112, 'Thomas', '81234137', '010', 'Tampines', 'ads', '2', '2022-03-05 17:11:51'),
(113, 'Thomas', '81234137', '010', 'Tampines', 'ad', '2', '2022-03-05 17:14:37'),
(114, 'Thomas', '81234137', '010', 'Tampines', 'ad', '2', '2022-03-05 17:15:22'),
(115, 'Thomas', '81234137', '020', 'Tampines', 'asd', '3', '2022-03-06 04:47:13'),
(116, 'Thomas', '81234137', '020', 'Tampines', 'asd', '1', '2022-03-05 17:21:27'),
(117, 'Thomas', '81234137', '020', 'Tampines', 'asd', '2', '2022-03-05 17:22:52'),
(118, 'Thomas', '81234137', '010', 'Tampines', 'asd ', '2', '2022-03-05 17:24:48'),
(119, 'Thomas', '81234137', '010', 'Tampines', 'asd ', '2', '2022-03-05 17:28:04'),
(120, 'Thomas', '81234137', '010', 'Tampines', 'asd ', '2', '2022-03-05 17:28:09'),
(121, 'Thomas', '81234137', '010', 'Tampines', 'sd', '2', '2022-03-05 17:40:47'),
(122, 'karamina', '69', '090', 'IMM Bata', 'touching childrens feet', '2', '2022-03-05 17:42:01'),
(123, 'Thomas', '81234137', '010', 'Tampines', 'asdad', '2', '2022-03-05 17:45:47'),
(124, 'Thomas', '81234137', '010', 'Tampines', 'gsdf', '2', '2022-03-05 18:12:58'),
(125, 'Thomas', '81234137', '010', 'Tampines', 'fire', '2', '2022-03-05 19:59:13'),
(126, 'Thomas', '81234137', '020', 'Tampines', 'edaas', '2', '2022-03-06 04:46:44'),
(127, 'Karamina', '69696969', '070', 'Pandan Gardens', 'Caught painting doors', '2', '2022-03-06 06:47:58'),
(128, 'dasd', 'adada', '010', 'dasdasd', '              dsad', '2', '2022-03-06 06:51:29'),
(129, 'test', 'test', '020', 'test', '              tset', '2', '2022-03-06 06:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `incident_status`
--

CREATE TABLE `incident_status` (
  `incident_status_id` varchar(1) NOT NULL,
  `incident_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident_status`
--

INSERT INTO `incident_status` (`incident_status_id`, `incident_status_desc`) VALUES
('1', 'Pending'),
('2', 'Dispatched'),
('3', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `incident_type`
--

CREATE TABLE `incident_type` (
  `incident_type_id` varchar(3) NOT NULL,
  `incident_type_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident_type`
--

INSERT INTO `incident_type` (`incident_type_id`, `incident_type_desc`) VALUES
('010', 'Fire'),
('020', 'Riot'),
('030', 'Burglary'),
('040', 'Domestic Violent'),
('050', 'Fallen Tree'),
('060', 'Traffic Accident'),
('070', 'Loan Shark'),
('080', 'Flood'),
('090', 'Illegal Activites'),
('100', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar`
--

CREATE TABLE `patrolcar` (
  `patrolcar_id` varchar(10) NOT NULL,
  `patrolcar_status_id` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patrolcar`
--

INSERT INTO `patrolcar` (`patrolcar_id`, `patrolcar_status_id`) VALUES
('QX6859E', '1'),
('QX7777G', '1'),
('QX9999I', '1'),
('QX1111A', '3'),
('QX2222B', '3'),
('QX3333C', '3'),
('QX4444D', '3'),
('QX5438L', '3'),
('QX5555E', '3'),
('QX6666F', '3'),
('QX8888H', '3'),
('QX1123V', '4');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar_status`
--

CREATE TABLE `patrolcar_status` (
  `patrolcar_status_id` varchar(1) NOT NULL,
  `patrolcar_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patrolcar_status`
--

INSERT INTO `patrolcar_status` (`patrolcar_status_id`, `patrolcar_status_desc`) VALUES
('1', 'Dispatched'),
('2', 'Patrol'),
('3', 'Free'),
('4', 'Arrived');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`incident_id`,`patrolcar_id`),
  ADD KEY `patrolcar_id` (`patrolcar_id`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incident_id`),
  ADD KEY `fk_incident_type_id` (`incident_type_id`),
  ADD KEY `incident_status_id_fk` (`incident_status_id`);

--
-- Indexes for table `incident_status`
--
ALTER TABLE `incident_status`
  ADD PRIMARY KEY (`incident_status_id`);

--
-- Indexes for table `incident_type`
--
ALTER TABLE `incident_type`
  ADD PRIMARY KEY (`incident_type_id`);

--
-- Indexes for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD PRIMARY KEY (`patrolcar_id`),
  ADD KEY `car_status_ref` (`patrolcar_status_id`);

--
-- Indexes for table `patrolcar_status`
--
ALTER TABLE `patrolcar_status`
  ADD PRIMARY KEY (`patrolcar_status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD CONSTRAINT `dispatch_ibfk_1` FOREIGN KEY (`incident_id`) REFERENCES `incident` (`incident_id`),
  ADD CONSTRAINT `dispatch_ibfk_2` FOREIGN KEY (`patrolcar_id`) REFERENCES `patrolcar` (`patrolcar_id`);

--
-- Constraints for table `incident`
--
ALTER TABLE `incident`
  ADD CONSTRAINT `fk_incident_type_id` FOREIGN KEY (`incident_type_id`) REFERENCES `incident_type` (`incident_type_id`),
  ADD CONSTRAINT `incident_status_id_fk` FOREIGN KEY (`incident_status_id`) REFERENCES `incident_status` (`incident_status_id`);

--
-- Constraints for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD CONSTRAINT `car_status_ref` FOREIGN KEY (`patrolcar_status_id`) REFERENCES `patrolcar_status` (`patrolcar_status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
