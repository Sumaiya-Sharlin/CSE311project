-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2022 at 02:38 PM
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
-- Database: `nsu_rds`
--

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `building` varchar(10) NOT NULL,
  `room_number` int(11) NOT NULL,
  `capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`building`, `room_number`, `capacity`) VALUES
('NAC', 312, 36),
('NAC', 313, 34),
('NAC', 410, 34),
('NAC', 415, 36),
('NAC', 514, 35),
('SAC', 307, 34),
('SAC', 319, 34),
('SAC', 413, 35),
('SAC', 417, 36),
('SAC', 512, 34);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(10) NOT NULL,
  `dept_id` varchar(10) NOT NULL,
  `title` varchar(30) NOT NULL,
  `credits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `dept_id`, `title`, `credits`) VALUES
('BIO103', 'DBM', 'Biology I', 3),
('CHE101', 'DBM', 'Chemistry I', 3),
('CSE115', 'ECE', 'Programming language I', 3),
('CSE115L', 'ECE', 'Programming language I Lab', 1),
('CSE215', 'ECE', 'Programming language II', 3),
('CSE215L', 'ECE', 'Programming language II Lab', 1),
('CSE225', 'ECE', 'Data Structures and Algorithms', 3),
('CSE225L', 'ECE', 'Data Structures and Algorithms', 1),
('CSE231', 'ECE', 'Digital Logic Design', 3),
('CSE231L', 'ECE', 'Digital Logic Design Lab', 1),
('CSE311', 'ECE', 'Database Systems', 3),
('CSE311L', 'ECE', 'Database Systems Lab', 1),
('ECO101', 'ECON', 'Introduction to Microeconomics', 3),
('HIS103', 'DHP', 'Emergence of Bangladesh', 3),
('MAT120', 'DMP', 'Calculus I', 3),
('MAT125', 'DMP', 'Linear Algebra', 3),
('MAT130', 'DMP', 'Calculus II', 3),
('MAT250', 'DMP', 'Calculus III', 3),
('PHI104', 'DHP', 'Introduction to Ethics', 3),
('PHY107', 'DMP', 'Physics I', 3),
('PHY108', 'DMP', 'Physics II', 3);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` varchar(10) NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  `Chairman` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`, `Chairman`) VALUES
('ARCH', 'Architecture', 'Ms. Shaila Joarder'),
('BBA', 'Business & Adminstration', 'Prof. Dr. Abdul Hannan Chowdhury'),
('CEE', 'Civil & Environmental Engineering', 'Dr. Mohammad Nazmul Islam'),
('DBM', 'Biochemistry & Microbiology', 'Dr. Nayeema Bulbul'),
('DHP', 'History & Philosphy', 'Dr. M. Emdadul Haq '),
('DMP', 'Mathematics & Physics', 'Dr. Md. Sahadet Hossain'),
('ECE', 'Electrical & Computer Engineering', 'Dr. Mohammad Rezaul Bari'),
('ECON', 'Economics', 'Dr. Asad Karim Khan Priyo'),
('LLB', 'Law', 'Dr. Md. Rizwanul Islam ');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Faculty_initial` varchar(10) NOT NULL,
  `dept_id` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Faculty_initial`, `dept_id`, `name`) VALUES
('AUZ', 'DMP', 'Muhammad Asad Uz Zaman'),
('MANZ', 'DMP', 'Dr. Mohammad Ali Nawaz'),
('MTM', 'DMP', 'M. Mustak Mia'),
('NDA', 'ECE', 'Nadeem Ahmed'),
('NVA', 'ECE', 'Dr. Nova Ahmed'),
('SAS3', 'ECE', 'Shaikh Shawon Arefin Shimon'),
('SKK', 'DBM', 'Dr. S M Mostafa Kamal Khan'),
('SME', 'ECON', 'Dr. Syed Mortuza Asif Ehsan'),
('TNS1', 'ECE', 'Ms. Tanzilah Noor Shabnam');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `course_id` varchar(10) NOT NULL,
  `sec_id` int(11) NOT NULL,
  `building` varchar(10) DEFAULT NULL,
  `room_number` int(11) DEFAULT NULL,
  `timeslot_id` varchar(10) DEFAULT NULL,
  `Faculty_initial` varchar(10) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`course_id`, `sec_id`, `building`, `room_number`, `timeslot_id`, `Faculty_initial`, `time`) VALUES
('BIO103', 5, 'NAC', 415, 'MW', 'SKK', '09:40 - 11:10'),
('CSE115', 3, 'SAC', 512, 'MW', 'TNS1', '08:00 - 9:30'),
('CSE215', 4, 'SAC', 417, 'RA', 'SAS3', '11:20 - 12:50'),
('CSE231', 5, 'SAC', 512, 'RA', 'TNS1', '09:40 - 11:10'),
('CSE311', 7, 'SAC', 319, 'MW', 'NDA', '08:00 - 9:30'),
('ECO101', 6, 'NAC', 514, 'RA', 'SME', '09:40 - 11:10'),
('MAT120', 13, 'SAC', 307, 'ST', 'MTM', '11:20 - 12:50'),
('MAT250', 4, 'SAC', 413, 'RA', 'MTM', '09:40 - 11:10'),
('PHY107', 3, 'SAC', 413, 'MW', 'MANZ', '08:00 - 9:30'),
('PHY108', 11, 'NAC', 410, 'ST', 'AUZ', '11:20 - 12:50');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(30) NOT NULL,
  `id` int(10) NOT NULL,
  `curriculum` varchar(15) NOT NULL,
  `cred_completed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `id`, `curriculum`, `cred_completed`) VALUES
('Sakir Mushfique Munim', 1711177, 'CSE', 60),
('Shah Raihan Prince', 1922114, 'CSE', 60),
('Sumaiya Jahan Sharlin', 2011126, 'CSE', 57);

-- --------------------------------------------------------

--
-- Table structure for table `timeslot`
--

CREATE TABLE `timeslot` (
  `timeslot_id` varchar(10) NOT NULL,
  `days` varchar(20) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timeslot`
--

INSERT INTO `timeslot` (`timeslot_id`, `days`, `start_time`, `end_time`) VALUES
('MW', 'Mon,Wed', '08:00:00', '09:30:00'),
('MW', 'Mon,Wed', '09:40:00', '11:10:00'),
('MW', 'Mon,Wed', '11:20:00', '12:50:00'),
('RA', 'Sat,Thu', '08:00:00', '09:30:00'),
('RA', 'Sat,Thu', '09:40:00', '11:10:00'),
('RA', 'Sat,Thu', '11:20:00', '12:50:00'),
('ST', 'Sun,Tue', '08:00:00', '09:30:00'),
('ST', 'Sun,Tue', '09:40:00', '11:10:00'),
('ST', 'Sun,Tue', '11:20:00', '12:50:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`building`,`room_number`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `fkey` (`dept_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`Faculty_initial`),
  ADD KEY `frkey` (`dept_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`course_id`,`sec_id`),
  ADD KEY `building` (`building`,`room_number`),
  ADD KEY `fcon` (`timeslot_id`),
  ADD KEY `dvd` (`Faculty_initial`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeslot`
--
ALTER TABLE `timeslot`
  ADD PRIMARY KEY (`timeslot_id`,`start_time`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `fkey` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `frkey` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `dvd` FOREIGN KEY (`Faculty_initial`) REFERENCES `faculty` (`Faculty_initial`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fcon` FOREIGN KEY (`timeslot_id`) REFERENCES `timeslot` (`timeslot_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `section_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `section_ibfk_2` FOREIGN KEY (`building`,`room_number`) REFERENCES `classroom` (`building`, `room_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
