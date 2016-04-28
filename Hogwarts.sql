-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 28, 2016 at 04:35 AM
-- Server version: 10.1.11-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Hogwarts`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `cname` varchar(50) NOT NULL,
  `cnumber` varchar(10) NOT NULL,
  `credits` int(1) NOT NULL,
  `cyear` int(1) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `degree` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`cname`, `cnumber`, `credits`, `cyear`, `branch`, `degree`) VALUES
('Fluid Mechanics – I ', 'AM-1301', 4, 2, 'ce', 'btech'),
('Strength of Materials ', 'AM-1304', 4, 2, 'ce', 'btech'),
('Structural Analysis – II', 'AM-1501', 4, 3, 'ce', 'btech'),
('Biochemistry', 'BT-1301', 4, 2, 'bio', 'btech'),
('Microbiology', 'BT-1302', 4, 2, 'bio', 'btech'),
('Bioprocess Engineering', 'BT-1403', 4, 2, 'bio', 'btech'),
('Molecular Biology', 'BT-1404', 4, 2, 'bio', 'btech'),
('Immunology', 'BT-1503', 3, 3, 'bio', 'btech'),
('Immunology (Lab)', 'BT-1553', 2, 3, 'bio', 'btech'),
('IPR and Biotechnology', 'BT-1605', 3, 3, 'bio', 'btech'),
('Bioinformatics (Lab)', 'BT-1651', 2, 3, 'bio', 'btech'),
('Professional Elective-I', 'BT-1731', 3, 4, 'bio', 'btech'),
('Plant Biotechnology (Lab)', 'BT-1752', 2, 4, 'bio', 'btech'),
('Survey – I ', 'CE-1403', 4, 2, 'ce', 'btech'),
('Concrete Structures – I', 'CE-1504', 4, 3, 'ce', 'btech'),
('Steel Structures - I ', 'CE-1604', 4, 3, 'ce', 'btech'),
('Survey Camp', 'CE-1671', 3, 3, 'ce', 'btech'),
('Steel Structures – II ', 'CE-1703', 3, 4, 'ce', 'btech'),
('Project', 'CE-1791', 4, 4, 'ce', 'btech'),
('Computer Aided Design (Civil)', 'CE-1801', 3, 4, 'ce', 'btech'),
('Earthquake Resistant Design', 'CE-1803', 4, 4, 'ce', 'btech'),
('Mass Transfer – I', 'CL-1403', 4, 2, 'che', 'btech'),
('Heat Transfer (Lab)', 'CL-1451', 2, 2, 'che', 'btech'),
('Survey – I (Lab)', 'CL-1452', 2, 2, 'ce', 'btech'),
('Mass Transfer – II', 'CL-1502', 4, 3, 'che', 'btech'),
('Transport Phenomena', 'CL-1602', 4, 3, 'che', 'btech'),
('Chemical Technology (Lab)', 'CL-1654', 2, 3, 'che', 'btech'),
('Major Project – I ', 'CL-1791', 6, 4, 'che', 'btech'),
('Data Structures', 'CS-1301', 4, 2, 'cse', 'btech'),
('Management of IT Industries', 'CS-1302', 3, 2, 'cse', 'btech'),
('Analog & Digital Electronics', 'CS-1303', 4, 2, 'cse', 'btech'),
('Foundations of Logical Thought', 'CS-1304', 4, 2, 'cse', 'btech'),
('Analysis of Algorithms', 'CS-1305', 4, 2, 'cse', 'btech'),
('Automata Theory', 'CS-1306', 4, 2, 'cse', 'btech'),
('Microprocessor and its Applica', 'CS-1401', 3, 3, 'cse', 'btech'),
('Operating Systems', 'CS-1402', 4, 3, 'cse', 'btech'),
('Computer Networks', 'CS-1403', 4, 3, 'cse', 'btech'),
('Database Management System', 'CS-1404', 4, 3, 'cse', 'btech'),
('Embedded Systems', 'CS-1405', 3, 3, 'cse', 'btech'),
('Computer Architecture', 'CS-1406', 3, 3, 'cse', 'btech'),
('Distributed System', 'CS-1501', 4, 4, 'cse', 'btech'),
('Professional Ethics', 'CS-1502', 2, 4, 'cse', 'btech'),
('Open Elective – I', 'CS-1503', 3, 4, 'cse', 'btech'),
('Formal Methods', 'CS-1504', 4, 4, 'cse', 'btech'),
('Open Elective – II', 'CS-1505', 3, 4, 'cse', 'btech'),
('Project', 'CS-1506', 6, 4, 'cse', 'btech'),
('Image Processing', 'CS-1703', 4, 4, 'it', 'btech'),
('Image Processing (Lab)', 'CS-1754', 2, 4, 'it', 'btech'),
('Project', 'CS-1791', 6, 4, 'it', 'btech'),
('Privacy Preserving Publishing', 'CS-1803', 4, 4, 'it', 'btech'),
('Mobile and Wireless Communication', 'EC-1701', 3, 4, 'ece', 'btech'),
('Project', 'EC-1791', 6, 4, 'ece', 'btech'),
('semiconductor devices', 'ECE-1003', 3, 2, 'ece', 'btech'),
('embedded systems', 'ECE-1098', 4, 3, 'ece', 'btech'),
('eletronics communication', 'ECE-1221', 3, 2, 'ece', 'btech'),
('diode analysis', 'ece-1552', 3, 3, 'ece', 'btech'),
('Electric Circuits', 'EE-1001', 3, 2, 'ee', 'btech'),
('Current', 'EE-1002', 4, 2, 'ee', 'btech'),
('Power & Voltage', 'EE-1003', 4, 3, 'ee', 'btech'),
('Circuit Network', 'EE-1005', 4, 3, 'ee', 'btech'),
('Networks & Systems', 'EE-1301', 4, 2, 'ee', 'btech'),
('Electrical Drives', 'EE-1701', 4, 4, 'ee', 'btech'),
('Advance Power Electronics ', 'EE-1801', 4, 4, 'ee', 'btech'),
('Project', 'EE-1891', 6, 4, 'ee', 'btech'),
('Principles of Management', 'HS-1501', 3, 3, 'che', 'btech'),
('Economics', 'HS-1701', 3, 4, 'che', 'btech'),
('Automata', 'IT-1001', 4, 2, 'it', 'btech'),
('Technical Writing', 'IT-1009', 3, 2, 'it', 'btech'),
('Networking', 'IT-1221', 4, 3, 'it', 'btech'),
('wireless systems', 'IT-1243', 2, 3, 'it', 'btech'),
('Thermdynamics', 'ME-1012', 3, 2, 'me', 'btech'),
('Computer Aided Design', 'ME-1111', 3, 3, 'pie', 'btech'),
('Heat and Mass Transfer', 'ME-1112', 4, 3, 'me', 'btech'),
('Harmonic Motion', 'ME-1234', 3, 2, 'me', 'btech'),
('Engineering Thermodynamics', 'ME-1301', 4, 2, 'che', 'btech'),
('Computational (Lab) ', 'ME-1351', 2, 2, 'che', 'btech'),
('Automatic Control', 'ME-1401', 4, 2, 'pie', 'btech'),
('Mechanics', 'ME-1421', 2, 3, 'me', 'btech'),
('Particle Theory', 'ME-1501', 2, 3, 'pie', 'btech'),
('Refrigeration and Air Conditioning ', 'ME-1701', 4, 4, 'me', 'btech'),
('Advanced Manufacturing Processes', 'ME-1703', 4, 4, 'pie', 'btech'),
('Major Project (Stage 1)', 'ME-1791', 6, 4, 'me', 'btech'),
('Product Design and Development', 'ME-1801', 3, 2, 'pie', 'btech'),
('Product Design and Development', 'ME-1802', 4, 4, 'pie', 'btech'),
('Open Elective-I ', 'OE-1781', 3, 4, 'bio', 'btech'),
('Open Elective – I', 'OE-1781', 3, 4, 'che', 'btech'),
('Open Elective I', 'OE-1781', 3, 4, 'me', 'btech'),
('Open Elective – II', 'OE-1881', 3, 4, 'che', 'btech'),
('Open Elective II', 'OE-1881', 3, 4, 'me', 'btech');

-- --------------------------------------------------------

--
-- Table structure for table `degree`
--

CREATE TABLE `degree` (
  `degree` varchar(10) NOT NULL,
  `dname` varchar(40) NOT NULL,
  `duration` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degree`
--

INSERT INTO `degree` (`degree`, `dname`, `duration`) VALUES
('btech', 'Bachelor of Technology', 4),
('mtech', 'Master of Technology', 2);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dcode` varchar(30) NOT NULL,
  `dname` varchar(40) NOT NULL,
  `contact` int(11) NOT NULL,
  `did` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dcode`, `dname`, `contact`, `did`) VALUES
('bio', 'Bio Technology', 1233, 0),
('ce', 'Civil Engineering', 1238, 1),
('che', 'Chemical Engineering', 1231, 9),
('cse', 'Computer Science and Engineering', 1234, 4),
('ece', 'Electronics &Communication Engineering', 1236, 5),
('ee', 'Electrical Engineering', 1237, 2),
('it', 'Information Technology', 1235, 8),
('me', 'Mechanical Engineering', 1239, 3),
('pie', 'Production & Industrial Engineering', 1232, 6);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `designation` enum('Professor','Asst. Professor','Assoc. Professor','Guest Faculty') NOT NULL,
  `department` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fid`, `name`, `email`, `gender`, `designation`, `department`) VALUES
(1, 'Samantha', 'sam@gmail.com', 'f', 'Professor', 'cse'),
(2, 'Sehwag', 'viru@gmail.com', 'm', 'Assoc. Professor', 'cse'),
(3, 'Sachin', 'tend@gmail.com', 'm', 'Assoc. Professor', 'cse'),
(4, 'Pavan Kalyan', 'pk@gmail.com', 'm', 'Professor', 'cse'),
(5, 'Virat', 'virat@gmail.com', 'm', 'Asst. Professor', 'cse'),
(6, 'Hasini', 'hasini@gmail.com', 'f', 'Guest Faculty', 'cse'),
(7, 'Ram', 'ram@gmail.com', 'm', 'Assoc. Professor', 'cse'),
(8, 'Keertana', 'keer@gmail.com', 'f', 'Asst. Professor', 'cse'),
(9, 'Narender', 'narender@gmail.com', 'm', 'Professor', 'ece'),
(10, 'Supriya', 'priya@gmail.com', 'f', 'Professor', 'ece'),
(11, 'Harihara prasad', 'prasad@gmail.com', 'm', 'Asst. Professor', 'ece'),
(12, 'Raghu', 'raghu@gmail.com', 'm', 'Asst. Professor', 'ece'),
(13, 'Trivikram', 'vikram@gmail.com', 'm', 'Assoc. Professor', 'ece'),
(14, 'Srinivas', 'srinu@gmail.com', 'm', 'Assoc. Professor', 'ece'),
(15, 'Harini', 'harini@gmail.com', 'f', 'Guest Faculty', 'ece'),
(16, 'Kajal', 'kajal@gmail.com', 'f', 'Guest Faculty', 'ece'),
(17, 'Suresh', 'suresh@gmail.com', 'm', 'Professor', 'it'),
(18, 'Raina', 'raina@gmail.com', 'm', 'Professor', 'it'),
(19, 'Mithali Raj', 'mithali@gmail.com', 'f', 'Asst. Professor', 'it'),
(20, 'Sohali', 'sohali@gmail.com', 'f', 'Assoc. Professor', 'it'),
(21, 'Ravinder', 'ravinder@gmail.com', 'm', 'Assoc. Professor', 'it'),
(22, 'Santhosh', 'santhosh@gmail.com', 'm', 'Guest Faculty', 'it'),
(23, 'Prashanth', 'prashanth@gmail.com', 'm', 'Professor', 'bio'),
(24, 'Ricky', 'ricky@gmail.com', 'm', 'Professor', 'bio'),
(25, 'Karthik', 'karthik@gmail.com', 'm', 'Asst. Professor', 'bio'),
(26, 'Vijay', 'vijay@gmail.com', 'm', 'Assoc. Professor', 'bio'),
(27, 'Nayan', 'nayan@gmail.com', 'f', 'Assoc. Professor', 'bio'),
(28, 'Aparna', 'aparna@gmail.com', 'f', 'Guest Faculty', 'bio'),
(29, 'Dhoni', 'msd@gmail.com', 'm', 'Professor', 'ce'),
(30, 'Ashwin', 'ash@gmail.com', 'm', 'Asst. Professor', 'ce'),
(31, 'Allu Arjun', 'allu@gmail.com', 'm', 'Asst. Professor', 'ce'),
(32, 'Vinmeen', 'vinmeen@gmail.com', 'f', 'Assoc. Professor', 'ce'),
(33, 'Roy', 'roy@gmail.com', 'm', 'Guest Faculty', 'ce'),
(34, 'Akhil', 'akhil@gmail.com', 'm', 'Assoc. Professor', 'ce'),
(35, 'Shanvi', 'shanvi@gmail.com', 'f', 'Professor', 'che'),
(36, 'Sadha', 'sadha@gmail.com', 'f', 'Asst. Professor', 'che'),
(37, 'Sekhar', 'sekhar@gmail.com', 'm', 'Asst. Professor', 'che'),
(38, 'Rekha', 'rekha@gmail.com', 'f', 'Assoc. Professor', 'che'),
(39, 'Prakash', 'kash@gmail.com', 'm', 'Assoc. Professor', 'che'),
(40, 'Bunny', 'bunny@gmail.com', 'm', 'Assoc. Professor', 'che'),
(41, 'Siri Gupta', 'siri@gmail.com', 'f', 'Assoc. Professor', 'che'),
(42, 'Gopal', 'gopal@gmail.com', 'm', 'Guest Faculty', 'che'),
(43, 'Anirudh', 'anirudh@gmail.com', 'm', 'Professor', 'ee'),
(44, 'Anu', 'anu@gmail.com', 'f', 'Professor', 'ee'),
(45, 'Aarohi', 'aarohi@gmail.com', 'f', 'Asst. Professor', 'ee'),
(46, 'Arman', 'arman@gmail.com', 'm', 'Assoc. Professor', 'ee'),
(47, 'Hrithik', 'roshan@gmail.com', 'm', 'Guest Faculty', 'ee'),
(48, 'Dany', 'dany@gmail.com', 'm', 'Assoc. Professor', 'ee'),
(49, 'Messi', 'messi@gmail.com', 'm', 'Professor', 'me'),
(50, 'Marcelo', 'marcelo@gmail.com', 'm', 'Asst. Professor', 'me'),
(51, 'Danielle', 'dani@gmail.com', 'f', 'Asst. Professor', 'me'),
(52, 'Wyatt', 'wyatt@gmail.com', 'f', 'Assoc. Professor', 'me'),
(53, 'Soni', 'soni@gmail.com', 'f', 'Asst. Professor', 'me'),
(54, 'Avinash', 'avi@gmail.com', 'm', 'Guest Faculty', 'me'),
(55, 'Anushka', 'anush@gmail.com', 'f', 'Asst. Professor', 'me'),
(56, 'Ronaldo', 'ronaldo@gmail.com', 'm', 'Professor', 'pie'),
(57, 'De villiers', 'abd@gmail.com', 'm', 'Assoc. Professor', 'pie'),
(58, 'Sunitha', 'sunitha@gmail.com', 'f', 'Assoc. Professor', 'pie'),
(59, 'Williams', 'williams@gmail.com', 'f', 'Asst. Professor', 'pie'),
(60, 'Roger', 'federer@gmail.com', 'm', 'Guest Faculty', 'pie');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_subject`
--

CREATE TABLE `faculty_subject` (
  `fid` int(11) NOT NULL,
  `cnumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_subject`
--

INSERT INTO `faculty_subject` (`fid`, `cnumber`) VALUES
(1, 'CS-1302'),
(2, 'CS-1303'),
(3, 'CS-1304'),
(4, 'CS-1401'),
(5, 'CS-1402'),
(6, 'CS-1403'),
(6, 'CS-1404'),
(7, 'CS-1405'),
(7, 'CS-1406'),
(3, 'CS-1503'),
(2, 'CS-1501'),
(1, 'CS-1502'),
(3, 'CS-1504'),
(4, 'CS-1505'),
(8, 'CS-1506');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `min_mark` int(11) NOT NULL,
  `lgrade` enum('A+','A','B+','B','C','D','E','F') NOT NULL,
  `pointer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`min_mark`, `lgrade`, `pointer`) VALUES
(85, 'A+', 10),
(75, 'A', 9),
(65, 'B+', 8),
(55, 'B', 7),
(45, 'C', 6),
(30, 'D', 5),
(1, 'E', 4);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `regno` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`regno`, `password`) VALUES
('20160000', 'f74d39fa044aa309eaea14b9f57fe79c'),
('20160001', '58039862b980afb29cdc439a2ecb486c'),
('20160002', '58039862b980afb29cdc439a2ecb486c'),
('20160003', '58039862b980afb29cdc439a2ecb486c'),
('20160004', '58039862b980afb29cdc439a2ecb486c'),
('20160005', '58039862b980afb29cdc439a2ecb486c'),
('20161000', '58039862b980afb29cdc439a2ecb486c'),
('20161001', '58039862b980afb29cdc439a2ecb486c'),
('20161002', '58039862b980afb29cdc439a2ecb486c'),
('20161003', '58039862b980afb29cdc439a2ecb486c'),
('20162000', '58039862b980afb29cdc439a2ecb486c'),
('20162001', '58039862b980afb29cdc439a2ecb486c'),
('20162002', '58039862b980afb29cdc439a2ecb486c'),
('20162003', '58039862b980afb29cdc439a2ecb486c'),
('20162004', '58039862b980afb29cdc439a2ecb486c'),
('20162005', '58039862b980afb29cdc439a2ecb486c'),
('20162006', '58039862b980afb29cdc439a2ecb486c'),
('20163000', '58039862b980afb29cdc439a2ecb486c'),
('20163001', '58039862b980afb29cdc439a2ecb486c'),
('20163002', '58039862b980afb29cdc439a2ecb486c'),
('20163003', '58039862b980afb29cdc439a2ecb486c'),
('20163004', '202cb962ac59075b964b07152d234b70'),
('20163005', '58039862b980afb29cdc439a2ecb486c'),
('20164000', '58039862b980afb29cdc439a2ecb486c'),
('20164001', '58039862b980afb29cdc439a2ecb486c'),
('20164002', '58039862b980afb29cdc439a2ecb486c'),
('20164003', '58039862b980afb29cdc439a2ecb486c'),
('20164004', '58039862b980afb29cdc439a2ecb486c'),
('20164005', '58039862b980afb29cdc439a2ecb486c'),
('20164006', '58039862b980afb29cdc439a2ecb486c'),
('20164007', '58039862b980afb29cdc439a2ecb486c'),
('20164008', '58039862b980afb29cdc439a2ecb486c'),
('20164009', '202cb962ac59075b964b07152d234b70'),
('20165000', '58039862b980afb29cdc439a2ecb486c'),
('20165001', '58039862b980afb29cdc439a2ecb486c'),
('20165002', '58039862b980afb29cdc439a2ecb486c'),
('20166000', '58039862b980afb29cdc439a2ecb486c'),
('20166001', '58039862b980afb29cdc439a2ecb486c'),
('20166002', '58039862b980afb29cdc439a2ecb486c'),
('20168000', '58039862b980afb29cdc439a2ecb486c'),
('20168001', '58039862b980afb29cdc439a2ecb486c'),
('20168002', '58039862b980afb29cdc439a2ecb486c'),
('20168003', '58039862b980afb29cdc439a2ecb486c'),
('20169000', '58039862b980afb29cdc439a2ecb486c'),
('20169001', '58039862b980afb29cdc439a2ecb486c'),
('20169002', '58039862b980afb29cdc439a2ecb486c');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `regno` varchar(10) NOT NULL,
  `cnumber` varchar(10) NOT NULL,
  `marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`regno`, `cnumber`, `marks`) VALUES
('20164009', 'AM-1501', 80),
('20164009', 'BT-1302', 45);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(30) NOT NULL,
  `regno` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `degree` varchar(10) NOT NULL,
  `branch` varchar(8) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('m','f') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `regno`, `email`, `degree`, `branch`, `dob`, `gender`) VALUES
('Raman Bhargav', '20160000', 'raman@gmail.com', 'btech', 'bio', '1994-04-15', 'm'),
('Shoiab Akhtar', '20160001', 'shoiab@gmail.com', 'btech', 'bio', '1996-01-12', 'm'),
('Adam Milne', '20160002', 'milne@gmail.com', 'btech', 'bio', '1995-12-16', 'm'),
('Ross Taylor', '20160003', 'ross@gmail.com', 'btech', 'bio', '1994-02-12', 'm'),
('Ruth prabhu', '20160004', 'ruth@gmail.com', 'btech', 'bio', '1992-01-19', 'f'),
('Rampaul', '20160005', 'rampaul@gmail.com', 'btech', 'bio', '1995-03-03', 'm'),
('Rohith Sharma', '20161000', 'rohith@gmail.com', 'btech', 'ce', '1993-03-14', 'm'),
('Dani Sharma', '20161001', 'dani@gmail.com', 'btech', 'ce', '1993-12-16', 'm'),
('Anil kumar', '20161002', 'anil@gmail.com', 'btech', 'ce', '1995-02-03', 'm'),
('Kalla', '20161003', 'kalla@gmail.com', 'btech', 'ce', '1994-05-19', 'm'),
('Thea Queen', '20162000', 'thea@gmail.com', 'btech', 'ee', '1995-03-29', 'f'),
('John diggle', '20162001', 'john@gmail.com', 'btech', 'ee', '1993-01-01', 'm'),
('lance', '20162002', 'lance@gmail.com', 'btech', 'ee', '1995-06-19', 'm'),
('Skyler', '20162003', 'skyler@gmail.com', 'btech', 'ee', '1992-08-26', 'f'),
('Brahmi', '20162004', 'brahmi@gmail.com', 'btech', 'ee', '1997-08-01', 'm'),
('Alia Bhatt', '20162005', 'alia@gmail.com', 'btech', 'ee', '1994-12-25', 'f'),
('Narayana', '20162006', 'narayan@gmail.com', 'btech', 'ee', '1995-02-02', 'm'),
('kapil dev', '20163000', 'dev@gmail.com', 'btech', 'me', '1993-09-19', 'm'),
('Priya', '20163001', 'priya@gmail.com', 'btech', 'me', '1995-07-07', 'f'),
('Wahab riaz', '20163002', 'wahab@gmail.com', 'btech', 'me', '1994-06-24', 'm'),
('Sonakshi', '20163003', 'sonakshi@gmail.com', 'btech', 'me', '1993-05-26', 'f'),
('Manji', '20163004', 'manji@gmail.com', 'btech', 'me', '1995-12-05', 'm'),
('Hampi', '20163005', 'hampi@gmail.com', 'btech', 'me', '1994-12-08', 'f'),
('Joe root', '20164000', 'root@gmail.com', 'btech', 'cse', '1996-02-15', 'm'),
('Jos Butler', '20164001', 'jos@gmail.com', 'btech', 'cse', '1995-02-06', 'm'),
('Bommisetti Yaswanth', '20164002', 's1th@gmail.com', 'btech', 'cse', '1995-05-09', 'm'),
('Maya', '20164003', 'maya@gmail.com', 'btech', 'cse', '1994-05-06', 'f'),
('Jason Roy', '20164004', 'jason@gmail.com', 'btech', 'cse', '1994-11-25', 'm'),
('Kaif', '20164005', 'kaif@gmail.com', 'btech', 'cse', '1994-12-16', 'm'),
('Sohal', '20164006', 'sohal@gmail.com', 'btech', 'cse', '1994-06-29', 'm'),
('Kareena kapoor', '20164007', 'kareena@gmail.com', 'btech', 'cse', '1994-06-24', 'f'),
('Walter white', '20164008', 'walter@gmail.com', 'btech', 'cse', '1991-11-11', 'm'),
('Prashanth', '20164009', 'prashanth1395@gmail.com', 'btech', 'me', '1995-09-13', 'm'),
('Joginder sharma', '20165000', 'joginder@gmail.com', 'btech', 'ece', '1994-11-19', 'm'),
('Oliver queen', '20165001', 'oliver@gmail.com', 'btech', 'ece', '1996-09-09', 'm'),
('Amir khar', '20165002', 'amir@gmail.com', 'btech', 'ece', '1995-01-06', 'm'),
('laurel', '20166000', 'laurel@gmail.com', 'btech', 'pie', '1995-02-10', 'f'),
('Adam glchrist', '20166001', 'gilly@gmail.com', 'btech', 'pie', '1998-05-05', 'm'),
('Prince', '20166002', 'prince@gmail.com', 'btech', 'pie', '1994-02-08', 'm'),
('Rahul Shetty', '20168000', 'rahul@gmail.com', 'btech', 'it', '1997-09-08', 'm'),
('Ramie', '20168001', 'ramie@gmail.com', 'btech', 'it', '1994-02-28', 'm'),
('Bipul', '20168002', 'bipul@gmail.com', 'btech', 'it', '1996-04-25', 'm'),
('Adam Hunt', '20168003', 'hunt@gmail.com', 'btech', 'it', '1994-01-23', 'm'),
('Praneeth kumar', '20169000', 'praneeth@gmail.com', 'btech', 'che', '1992-03-18', 'm'),
('Ravi bopara', '20169001', 'bopara@gmail.com', 'btech', 'che', '1992-02-02', 'm'),
('Ronnie ramond', '20169002', 'ronnie@gmail.com', 'btech', 'che', '1996-01-12', 'm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`cnumber`,`branch`,`degree`),
  ADD KEY `branch_fk` (`branch`),
  ADD KEY `branch` (`branch`),
  ADD KEY `degree_c_fk` (`degree`);

--
-- Indexes for table `degree`
--
ALTER TABLE `degree`
  ADD PRIMARY KEY (`degree`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dcode`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fid`,`department`),
  ADD KEY `dept_f_fk` (`department`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`regno`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`regno`,`cnumber`),
  ADD KEY `cnum_r_fk` (`cnumber`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`regno`,`degree`,`branch`),
  ADD KEY `degree_stu_fk` (`degree`),
  ADD KEY `branch_stu_fk` (`branch`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `branch_c_fk` FOREIGN KEY (`branch`) REFERENCES `department` (`dcode`),
  ADD CONSTRAINT `degree_c_fk` FOREIGN KEY (`degree`) REFERENCES `degree` (`degree`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `dept_f_fk` FOREIGN KEY (`department`) REFERENCES `department` (`dcode`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `regno_l_fk` FOREIGN KEY (`regno`) REFERENCES `student` (`regno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `cnum_r_fk` FOREIGN KEY (`cnumber`) REFERENCES `course` (`cnumber`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `regno_r_fk` FOREIGN KEY (`regno`) REFERENCES `student` (`regno`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `branch_stu_fk` FOREIGN KEY (`branch`) REFERENCES `department` (`dcode`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `degree_stu_fk` FOREIGN KEY (`degree`) REFERENCES `degree` (`degree`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
