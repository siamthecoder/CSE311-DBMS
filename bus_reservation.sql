-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 08:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus_reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `affects`
--

CREATE TABLE `affects` (
  `clause` int(7) NOT NULL,
  `reservation_SL` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `affects`
--

INSERT INTO `affects` (`clause`, `reservation_SL`) VALUES
(39, 66221);

-- --------------------------------------------------------

--
-- Table structure for table `applied_on`
--

CREATE TABLE `applied_on` (
  `ticket_id` int(7) NOT NULL,
  `clause` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `applied_on`
--

INSERT INTO `applied_on` (`ticket_id`, `clause`) VALUES
(44425, 39);

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `bus_id` int(7) NOT NULL,
  `total_seats` int(7) DEFAULT NULL,
  `model` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`bus_id`, `total_seats`, `model`) VALUES
(11351, 35, 'VOLVO');

-- --------------------------------------------------------

--
-- Table structure for table `businessman`
--

CREATE TABLE `businessman` (
  `passenger_id` int(7) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `business_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `businessman`
--

INSERT INTO `businessman` (`passenger_id`, `name`, `business_name`) VALUES
(401, 'Akash Islam', 'Export groceries');

-- --------------------------------------------------------

--
-- Table structure for table `bus_amenities`
--

CREATE TABLE `bus_amenities` (
  `total_amenities` int(5) NOT NULL,
  `is_Wi_Fi` varchar(15) DEFAULT NULL,
  `is_AC` varchar(15) DEFAULT NULL,
  `is_TV` varchar(15) DEFAULT NULL,
  `seat_condition` varchar(15) DEFAULT NULL,
  `added_charge` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bus_amenities`
--

INSERT INTO `bus_amenities` (`total_amenities`, `is_Wi_Fi`, `is_AC`, `is_TV`, `seat_condition`, `added_charge`) VALUES
(3, 'YES', 'YES', 'YES', 'EXCELLENT', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `bus_reservations`
--

CREATE TABLE `bus_reservations` (
  `reservation_SL` int(7) NOT NULL,
  `reservation_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bus_reservations`
--

INSERT INTO `bus_reservations` (`reservation_SL`, `reservation_date`) VALUES
(66221, '2023-09-29');

-- --------------------------------------------------------

--
-- Table structure for table `bus_routes`
--

CREATE TABLE `bus_routes` (
  `route_no` int(7) NOT NULL,
  `starting_point` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `starting_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bus_routes`
--

INSERT INTO `bus_routes` (`route_no`, `starting_point`, `destination`, `starting_time`) VALUES
(1229, 'Khilkhet', 'Mahakhali', '07:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `bus_staff`
--

CREATE TABLE `bus_staff` (
  `staff_id` int(7) NOT NULL,
  `rating` int(5) DEFAULT NULL,
  `hiring_date` date DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bus_staff`
--

INSERT INTO `bus_staff` (`staff_id`, `rating`, `hiring_date`, `service`) VALUES
(258, 3, '2017-03-14', 'Helper');

-- --------------------------------------------------------

--
-- Table structure for table `bus_staff_contact`
--

CREATE TABLE `bus_staff_contact` (
  `staff_id` int(7) NOT NULL,
  `contact` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bus_staff_contact`
--

INSERT INTO `bus_staff_contact` (`staff_id`, `contact`) VALUES
(258, 1885548792);

-- --------------------------------------------------------

--
-- Table structure for table `bus_stops`
--

CREATE TABLE `bus_stops` (
  `stoppage_id` int(7) NOT NULL,
  `location` varchar(25) DEFAULT NULL,
  `stops_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bus_stops`
--

INSERT INTO `bus_stops` (`stoppage_id`, `location`, `stops_name`) VALUES
(15, 'Khilkhet', 'Joarshahara');

-- --------------------------------------------------------

--
-- Table structure for table `bus_tracking`
--

CREATE TABLE `bus_tracking` (
  `estimated_arrival` time NOT NULL,
  `current_location` varchar(25) DEFAULT NULL,
  `next_stoppage` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bus_tracking`
--

INSERT INTO `bus_tracking` (`estimated_arrival`, `current_location`, `next_stoppage`) VALUES
('07:10:00', 'Banani', 'Kuril');

-- --------------------------------------------------------

--
-- Table structure for table `checks`
--

CREATE TABLE `checks` (
  `stoppage_id` int(7) NOT NULL,
  `estimated_arrival` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `checks`
--

INSERT INTO `checks` (`stoppage_id`, `estimated_arrival`) VALUES
(15, '07:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `do`
--

CREATE TABLE `do` (
  `passenger_id` int(7) NOT NULL,
  `reservation_SL` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `do`
--

INSERT INTO `do` (`passenger_id`, `reservation_SL`) VALUES
(101, 66221);

-- --------------------------------------------------------

--
-- Table structure for table `driven`
--

CREATE TABLE `driven` (
  `bus_id` int(7) NOT NULL,
  `license_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `driven`
--

INSERT INTO `driven` (`bus_id`, `license_no`) VALUES
(11351, 2151);

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `license_no` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `shift` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`license_no`, `name`, `shift`) VALUES
(2151, 'Minhaz Uddin', 'DAY');

-- --------------------------------------------------------

--
-- Table structure for table `drivers_contact`
--

CREATE TABLE `drivers_contact` (
  `license_no` int(7) NOT NULL,
  `contact` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `drivers_contact`
--

INSERT INTO `drivers_contact` (`license_no`, `contact`) VALUES
(2151, 1552405018);

-- --------------------------------------------------------

--
-- Table structure for table `fare_rules`
--

CREATE TABLE `fare_rules` (
  `clause` int(7) NOT NULL,
  `peak_hour_fare` int(11) DEFAULT NULL,
  `minimum_fare` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fare_rules`
--

INSERT INTO `fare_rules` (`clause`, `peak_hour_fare`, `minimum_fare`) VALUES
(39, 100, 80);

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `passenger_id` int(7) NOT NULL,
  `clause` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`passenger_id`, `clause`) VALUES
(101, 39);

-- --------------------------------------------------------

--
-- Table structure for table `freedom_fighter`
--

CREATE TABLE `freedom_fighter` (
  `passenger_id` int(7) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `medal` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `freedom_fighter`
--

INSERT INTO `freedom_fighter` (`passenger_id`, `name`, `medal`) VALUES
(501, 'Genaral Mohammad Miazan Miah(rtd)', 'Bir Uttom');

-- --------------------------------------------------------

--
-- Table structure for table `general`
--

CREATE TABLE `general` (
  `passenger_id` int(7) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `general`
--

INSERT INTO `general` (`passenger_id`, `name`, `gender`) VALUES
(111, 'Shihab', 'MALE');

-- --------------------------------------------------------

--
-- Table structure for table `govt_service`
--

CREATE TABLE `govt_service` (
  `passenger_id` int(7) NOT NULL,
  `service_id` int(7) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `ministry` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `govt_service`
--

INSERT INTO `govt_service` (`passenger_id`, `service_id`, `name`, `ministry`) VALUES
(301, 885965, 'Kayser Ali', 'Ministry of Commerce');

-- --------------------------------------------------------

--
-- Table structure for table `installed`
--

CREATE TABLE `installed` (
  `bus_id` int(7) NOT NULL,
  `total_amenities` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `installed`
--

INSERT INTO `installed` (`bus_id`, `total_amenities`) VALUES
(11351, 3);

-- --------------------------------------------------------

--
-- Table structure for table `journey_history`
--

CREATE TABLE `journey_history` (
  `travelled_date` date NOT NULL,
  `from_` varchar(25) DEFAULT NULL,
  `to_` varchar(25) DEFAULT NULL,
  `passenger_id` int(7) DEFAULT NULL,
  `reservation_SL` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `journey_history`
--

INSERT INTO `journey_history` (`travelled_date`, `from_`, `to_`, `passenger_id`, `reservation_SL`) VALUES
('2023-09-29', 'Khilkhet', 'Mahakhali', 101, 66221);

-- --------------------------------------------------------

--
-- Table structure for table `look_for`
--

CREATE TABLE `look_for` (
  `bus_id` int(7) NOT NULL,
  `estimated_arrival` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `look_for`
--

INSERT INTO `look_for` (`bus_id`, `estimated_arrival`) VALUES
(11351, '07:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `operates`
--

CREATE TABLE `operates` (
  `bus_id` int(7) NOT NULL,
  `reservation_SL` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `operates`
--

INSERT INTO `operates` (`bus_id`, `reservation_SL`) VALUES
(11351, 66221);

-- --------------------------------------------------------

--
-- Table structure for table `passed`
--

CREATE TABLE `passed` (
  `passenger_id` int(7) NOT NULL,
  `stoppage_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `passed`
--

INSERT INTO `passed` (`passenger_id`, `stoppage_id`) VALUES
(101, 15);

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `passenger_id` int(7) NOT NULL,
  `age` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`passenger_id`, `age`) VALUES
(101, '22'),
(111, '18'),
(201, '31'),
(301, '55'),
(401, '42'),
(501, '77');

-- --------------------------------------------------------

--
-- Table structure for table `passengers_contact`
--

CREATE TABLE `passengers_contact` (
  `passenger_id` int(7) NOT NULL,
  `contact` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `passengers_contact`
--

INSERT INTO `passengers_contact` (`passenger_id`, `contact`) VALUES
(101, 1838574952);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `ticket_id` int(7) NOT NULL,
  `payment_id` int(7) NOT NULL,
  `fare` int(10) NOT NULL,
  `method` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`ticket_id`, `payment_id`, `fare`, `method`) VALUES
(44425, 357, 80, 'bKASH');

-- --------------------------------------------------------

--
-- Table structure for table `ply_on`
--

CREATE TABLE `ply_on` (
  `bus_id` int(7) NOT NULL,
  `route_no` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ply_on`
--

INSERT INTO `ply_on` (`bus_id`, `route_no`) VALUES
(11351, 1229);

-- --------------------------------------------------------

--
-- Table structure for table `private_service`
--

CREATE TABLE `private_service` (
  `passenger_id` int(7) NOT NULL,
  `service_id` int(7) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `private_service`
--

INSERT INTO `private_service` (`passenger_id`, `service_id`, `name`, `company`) VALUES
(201, 2121436, 'Selim Hossain', 'TK Group of Industries');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `passenger_id` int(7) NOT NULL,
  `ticket_id` int(7) NOT NULL,
  `payment_id` int(7) NOT NULL,
  `fare` int(10) NOT NULL,
  `method` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`passenger_id`, `ticket_id`, `payment_id`, `fare`, `method`) VALUES
(101, 44425, 357, 80, 'bKASH');

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `ticket_id` int(7) NOT NULL,
  `stoppage_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`ticket_id`, `stoppage_id`) VALUES
(44425, 15);

-- --------------------------------------------------------

--
-- Table structure for table `service_for`
--

CREATE TABLE `service_for` (
  `estimated_arrival` time NOT NULL,
  `passenger_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `service_for`
--

INSERT INTO `service_for` (`estimated_arrival`, `passenger_id`) VALUES
('07:10:00', 101);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `passenger_id` int(7) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `degree` varchar(50) DEFAULT NULL,
  `institute` varchar(50) DEFAULT NULL,
  `year` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`passenger_id`, `name`, `education`, `degree`, `institute`, `year`) VALUES
(101, 'Siam', 'BSc', 'CSE', 'NSU', 'Second');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(7) NOT NULL,
  `date_issued` date DEFAULT NULL,
  `total_tickets` int(10) DEFAULT NULL,
  `seat_no` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `date_issued`, `total_tickets`, `seat_no`) VALUES
(44425, '2023-09-29', 1, 'J-1');

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

CREATE TABLE `travel` (
  `passenger_id` int(7) NOT NULL,
  `bus_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `travel`
--

INSERT INTO `travel` (`passenger_id`, `bus_id`) VALUES
(101, 11351);

-- --------------------------------------------------------

--
-- Table structure for table `utilizes`
--

CREATE TABLE `utilizes` (
  `passenger_id` int(7) NOT NULL,
  `total_amenities` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `utilizes`
--

INSERT INTO `utilizes` (`passenger_id`, `total_amenities`) VALUES
(101, 3);

-- --------------------------------------------------------

--
-- Table structure for table `works_for`
--

CREATE TABLE `works_for` (
  `bus_id` int(7) NOT NULL,
  `staff_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `works_for`
--

INSERT INTO `works_for` (`bus_id`, `staff_id`) VALUES
(11351, 258);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `affects`
--
ALTER TABLE `affects`
  ADD PRIMARY KEY (`clause`,`reservation_SL`),
  ADD KEY `reservation_SL` (`reservation_SL`);

--
-- Indexes for table `applied_on`
--
ALTER TABLE `applied_on`
  ADD PRIMARY KEY (`ticket_id`,`clause`),
  ADD KEY `clause` (`clause`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `businessman`
--
ALTER TABLE `businessman`
  ADD PRIMARY KEY (`passenger_id`);

--
-- Indexes for table `bus_amenities`
--
ALTER TABLE `bus_amenities`
  ADD PRIMARY KEY (`total_amenities`);

--
-- Indexes for table `bus_reservations`
--
ALTER TABLE `bus_reservations`
  ADD PRIMARY KEY (`reservation_SL`);

--
-- Indexes for table `bus_routes`
--
ALTER TABLE `bus_routes`
  ADD PRIMARY KEY (`route_no`);

--
-- Indexes for table `bus_staff`
--
ALTER TABLE `bus_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `bus_staff_contact`
--
ALTER TABLE `bus_staff_contact`
  ADD PRIMARY KEY (`staff_id`,`contact`);

--
-- Indexes for table `bus_stops`
--
ALTER TABLE `bus_stops`
  ADD PRIMARY KEY (`stoppage_id`);

--
-- Indexes for table `bus_tracking`
--
ALTER TABLE `bus_tracking`
  ADD PRIMARY KEY (`estimated_arrival`);

--
-- Indexes for table `checks`
--
ALTER TABLE `checks`
  ADD PRIMARY KEY (`stoppage_id`,`estimated_arrival`),
  ADD KEY `estimated_arrival` (`estimated_arrival`);

--
-- Indexes for table `do`
--
ALTER TABLE `do`
  ADD PRIMARY KEY (`passenger_id`,`reservation_SL`),
  ADD KEY `reservation_SL` (`reservation_SL`);

--
-- Indexes for table `driven`
--
ALTER TABLE `driven`
  ADD PRIMARY KEY (`bus_id`,`license_no`),
  ADD KEY `license_no` (`license_no`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`license_no`);

--
-- Indexes for table `drivers_contact`
--
ALTER TABLE `drivers_contact`
  ADD PRIMARY KEY (`license_no`,`contact`);

--
-- Indexes for table `fare_rules`
--
ALTER TABLE `fare_rules`
  ADD PRIMARY KEY (`clause`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`passenger_id`,`clause`),
  ADD KEY `clause` (`clause`);

--
-- Indexes for table `freedom_fighter`
--
ALTER TABLE `freedom_fighter`
  ADD PRIMARY KEY (`passenger_id`);

--
-- Indexes for table `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`passenger_id`);

--
-- Indexes for table `govt_service`
--
ALTER TABLE `govt_service`
  ADD PRIMARY KEY (`passenger_id`,`service_id`);

--
-- Indexes for table `installed`
--
ALTER TABLE `installed`
  ADD PRIMARY KEY (`bus_id`,`total_amenities`),
  ADD KEY `total_amenities` (`total_amenities`);

--
-- Indexes for table `journey_history`
--
ALTER TABLE `journey_history`
  ADD PRIMARY KEY (`travelled_date`),
  ADD KEY `passenger_id` (`passenger_id`),
  ADD KEY `reservation_SL` (`reservation_SL`);

--
-- Indexes for table `look_for`
--
ALTER TABLE `look_for`
  ADD PRIMARY KEY (`bus_id`,`estimated_arrival`),
  ADD KEY `estimated_arrival` (`estimated_arrival`);

--
-- Indexes for table `operates`
--
ALTER TABLE `operates`
  ADD PRIMARY KEY (`bus_id`,`reservation_SL`),
  ADD KEY `reservation_SL` (`reservation_SL`);

--
-- Indexes for table `passed`
--
ALTER TABLE `passed`
  ADD PRIMARY KEY (`passenger_id`,`stoppage_id`),
  ADD KEY `stoppage_id` (`stoppage_id`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`passenger_id`);

--
-- Indexes for table `passengers_contact`
--
ALTER TABLE `passengers_contact`
  ADD PRIMARY KEY (`passenger_id`,`contact`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`ticket_id`,`payment_id`,`fare`,`method`);

--
-- Indexes for table `ply_on`
--
ALTER TABLE `ply_on`
  ADD PRIMARY KEY (`bus_id`,`route_no`),
  ADD KEY `route_no` (`route_no`);

--
-- Indexes for table `private_service`
--
ALTER TABLE `private_service`
  ADD PRIMARY KEY (`passenger_id`,`service_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`passenger_id`,`ticket_id`,`payment_id`,`fare`,`method`),
  ADD KEY `ticket_id` (`ticket_id`,`payment_id`,`fare`,`method`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`ticket_id`,`stoppage_id`),
  ADD KEY `stoppage_id` (`stoppage_id`);

--
-- Indexes for table `service_for`
--
ALTER TABLE `service_for`
  ADD PRIMARY KEY (`estimated_arrival`,`passenger_id`),
  ADD KEY `passenger_id` (`passenger_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`passenger_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`passenger_id`,`bus_id`),
  ADD KEY `bus_id` (`bus_id`);

--
-- Indexes for table `utilizes`
--
ALTER TABLE `utilizes`
  ADD PRIMARY KEY (`passenger_id`,`total_amenities`),
  ADD KEY `total_amenities` (`total_amenities`);

--
-- Indexes for table `works_for`
--
ALTER TABLE `works_for`
  ADD PRIMARY KEY (`bus_id`,`staff_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `affects`
--
ALTER TABLE `affects`
  ADD CONSTRAINT `affects_ibfk_1` FOREIGN KEY (`clause`) REFERENCES `fare_rules` (`clause`),
  ADD CONSTRAINT `affects_ibfk_2` FOREIGN KEY (`reservation_SL`) REFERENCES `bus_reservations` (`reservation_SL`);

--
-- Constraints for table `applied_on`
--
ALTER TABLE `applied_on`
  ADD CONSTRAINT `applied_on_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`ticket_id`),
  ADD CONSTRAINT `applied_on_ibfk_2` FOREIGN KEY (`clause`) REFERENCES `fare_rules` (`clause`);

--
-- Constraints for table `businessman`
--
ALTER TABLE `businessman`
  ADD CONSTRAINT `businessman_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`);

--
-- Constraints for table `bus_staff_contact`
--
ALTER TABLE `bus_staff_contact`
  ADD CONSTRAINT `bus_staff_contact_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `bus_staff` (`staff_id`);

--
-- Constraints for table `checks`
--
ALTER TABLE `checks`
  ADD CONSTRAINT `checks_ibfk_1` FOREIGN KEY (`stoppage_id`) REFERENCES `bus_stops` (`stoppage_id`),
  ADD CONSTRAINT `checks_ibfk_2` FOREIGN KEY (`estimated_arrival`) REFERENCES `bus_tracking` (`estimated_arrival`);

--
-- Constraints for table `do`
--
ALTER TABLE `do`
  ADD CONSTRAINT `do_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`),
  ADD CONSTRAINT `do_ibfk_2` FOREIGN KEY (`reservation_SL`) REFERENCES `bus_reservations` (`reservation_SL`);

--
-- Constraints for table `driven`
--
ALTER TABLE `driven`
  ADD CONSTRAINT `driven_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`bus_id`),
  ADD CONSTRAINT `driven_ibfk_2` FOREIGN KEY (`license_no`) REFERENCES `drivers` (`license_no`);

--
-- Constraints for table `drivers_contact`
--
ALTER TABLE `drivers_contact`
  ADD CONSTRAINT `drivers_contact_ibfk_1` FOREIGN KEY (`license_no`) REFERENCES `drivers` (`license_no`);

--
-- Constraints for table `follow`
--
ALTER TABLE `follow`
  ADD CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`),
  ADD CONSTRAINT `follow_ibfk_2` FOREIGN KEY (`clause`) REFERENCES `fare_rules` (`clause`);

--
-- Constraints for table `freedom_fighter`
--
ALTER TABLE `freedom_fighter`
  ADD CONSTRAINT `freedom_fighter_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`);

--
-- Constraints for table `general`
--
ALTER TABLE `general`
  ADD CONSTRAINT `general_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`);

--
-- Constraints for table `govt_service`
--
ALTER TABLE `govt_service`
  ADD CONSTRAINT `govt_service_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`);

--
-- Constraints for table `installed`
--
ALTER TABLE `installed`
  ADD CONSTRAINT `installed_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`bus_id`),
  ADD CONSTRAINT `installed_ibfk_2` FOREIGN KEY (`total_amenities`) REFERENCES `bus_amenities` (`total_amenities`);

--
-- Constraints for table `journey_history`
--
ALTER TABLE `journey_history`
  ADD CONSTRAINT `journey_history_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`),
  ADD CONSTRAINT `journey_history_ibfk_2` FOREIGN KEY (`reservation_SL`) REFERENCES `bus_reservations` (`reservation_SL`);

--
-- Constraints for table `look_for`
--
ALTER TABLE `look_for`
  ADD CONSTRAINT `look_for_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`bus_id`),
  ADD CONSTRAINT `look_for_ibfk_2` FOREIGN KEY (`estimated_arrival`) REFERENCES `bus_tracking` (`estimated_arrival`);

--
-- Constraints for table `operates`
--
ALTER TABLE `operates`
  ADD CONSTRAINT `operates_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`bus_id`),
  ADD CONSTRAINT `operates_ibfk_2` FOREIGN KEY (`reservation_SL`) REFERENCES `bus_reservations` (`reservation_SL`);

--
-- Constraints for table `passed`
--
ALTER TABLE `passed`
  ADD CONSTRAINT `passed_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`),
  ADD CONSTRAINT `passed_ibfk_2` FOREIGN KEY (`stoppage_id`) REFERENCES `bus_stops` (`stoppage_id`);

--
-- Constraints for table `passengers_contact`
--
ALTER TABLE `passengers_contact`
  ADD CONSTRAINT `passengers_contact_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`ticket_id`);

--
-- Constraints for table `ply_on`
--
ALTER TABLE `ply_on`
  ADD CONSTRAINT `ply_on_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`bus_id`),
  ADD CONSTRAINT `ply_on_ibfk_2` FOREIGN KEY (`route_no`) REFERENCES `bus_routes` (`route_no`);

--
-- Constraints for table `private_service`
--
ALTER TABLE `private_service`
  ADD CONSTRAINT `private_service_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`);

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`),
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`ticket_id`,`payment_id`,`fare`,`method`) REFERENCES `payment` (`ticket_id`, `payment_id`, `fare`, `method`);

--
-- Constraints for table `sell`
--
ALTER TABLE `sell`
  ADD CONSTRAINT `sell_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`ticket_id`),
  ADD CONSTRAINT `sell_ibfk_2` FOREIGN KEY (`stoppage_id`) REFERENCES `bus_stops` (`stoppage_id`);

--
-- Constraints for table `service_for`
--
ALTER TABLE `service_for`
  ADD CONSTRAINT `service_for_ibfk_1` FOREIGN KEY (`estimated_arrival`) REFERENCES `bus_tracking` (`estimated_arrival`),
  ADD CONSTRAINT `service_for_ibfk_2` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`);

--
-- Constraints for table `travel`
--
ALTER TABLE `travel`
  ADD CONSTRAINT `travel_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`),
  ADD CONSTRAINT `travel_ibfk_2` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`bus_id`);

--
-- Constraints for table `utilizes`
--
ALTER TABLE `utilizes`
  ADD CONSTRAINT `utilizes_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`),
  ADD CONSTRAINT `utilizes_ibfk_2` FOREIGN KEY (`total_amenities`) REFERENCES `bus_amenities` (`total_amenities`);

--
-- Constraints for table `works_for`
--
ALTER TABLE `works_for`
  ADD CONSTRAINT `works_for_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`bus_id`),
  ADD CONSTRAINT `works_for_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `bus_staff` (`staff_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
