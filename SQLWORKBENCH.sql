-- phpMyAdmin SQL Dumpattendanceattendancedate
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2020 at 06:32 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `date` date NOT NULL,
  `student_id` int(20) NOT NULL,
  `status` enum('Present','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`date`, `student_id`, `status`) VALUES
('2020-07-17', 1, 'Present'),
('2020-07-18', 1, 'Absent'),
('2020-07-17', 2, 'Present'),
('2020-07-18', 2, 'Present'),
('2020-07-17', 3, 'Absent'),
('2020-07-18', 3, 'Absent'),
('2020-07-17', 4, 'Absent'),
('2020-07-18', 4, 'Present'),
('2020-07-17', 5, 'Present'),
('2020-07-18', 5, 'Present'),
('2020-07-17', 6, 'Present'),
('2020-07-18', 6, 'Absent');

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `classroom_id` int(20) NOT NULL,
  `grade` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`classroom_id`, `grade`) VALUES
(10, 1),
(11, 2),
(12, 3);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(20) NOT NULL,
  `course_name` varchar(20) NOT NULL,
  `course_description` varchar(100) NOT NULL,
  `teacher_id` int(20) NOT NULL,
  `grade` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_description`, `teacher_id`, `grade`) VALUES
(110, 'English 1', 'Punjab Textbook Board', 103, 1),
(111, 'Urdu 1', 'Punjab Textbook Board', 100, 1),
(112, 'Maths 1', 'Federal Board', 104, 1),
(113, 'Science 1', 'Federal Board', 101, 1),
(114, 'Islamiyat 1', 'Punjab Textbook Board', 100, 1),
(220, 'English 2', 'Punjab Textbook Board', 103, 2),
(221, 'Urdu 2', 'Punjab Textbook Board', 100, 2),
(222, 'Maths 2', 'Federal Board', 104, 2),
(223, 'Science 2', 'Federal Board', 101, 2),
(224, 'Islamiyat 2', 'Punjab Textbook Board', 100, 2),
(330, 'English 3', 'Punjab Textbook Board', 103, 3),
(331, 'Urdu 3', 'Punjab Textbook Board', 100, 3),
(332, 'Maths 3', 'Federal Board', 104, 3),
(333, 'Science 3', 'Federal Board', 101, 3),
(334, 'Islamiyat', 'Punjab Textbook Board', 100, 3);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` int(20) NOT NULL,
  `exam_type` varchar(20) NOT NULL,
  `start_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `exam_type`, `start_date`) VALUES
(98, 'Final-Term', '2020-12-01'),
(99, 'Mid-Term', '2020-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `exam_result`
--

CREATE TABLE `exam_result` (
  `exam_id` int(20) NOT NULL,
  `student_id` int(20) NOT NULL,
  `course_id` int(20) NOT NULL,
  `percentage` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_result`
--

INSERT INTO `exam_result` (`exam_id`, `student_id`, `course_id`, `percentage`) VALUES
(99, 1, 110, '90'),
(99, 1, 111, '89'),
(99, 1, 114, '95'),
(99, 1, 112, '70'),
(99, 1, 113, '80'),
(99, 2, 220, '98'),
(99, 2, 221, '82'),
(99, 2, 224, '87'),
(99, 2, 222, '90'),
(99, 2, 223, '70'),
(99, 3, 220, '20'),
(99, 3, 221, '10'),
(99, 3, 222, '50'),
(99, 3, 223, '25'),
(99, 3, 224, '78'),
(99, 4, 220, '56'),
(99, 4, 221, '27'),
(99, 4, 222, '24'),
(99, 4, 223, '19'),
(99, 4, 224, '59'),
(99, 5, 330, '79'),
(99, 5, 331, '55'),
(99, 5, 332, '87'),
(99, 5, 333, '89'),
(99, 5, 334, '50'),
(99, 6, 110, '88'),
(99, 6, 331, '78'),
(99, 6, 332, '59'),
(99, 6, 333, '40'),
(99, 6, 334, '57');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `phone` int(15) NOT NULL,
  `mobile` int(11) NOT NULL,
  `date_of_join` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `grade` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `fname`, `lname`, `dob`, `Gender`, `phone`, `mobile`, `date_of_join`, `address`, `grade`) VALUES
(1, 'Ahmad', 'Ali', '2010-03-05', 'Male', 51001001, 3001001, '2014-01-01', 'h#001 st#001 RWP', 1),
(2, 'Sadia ', 'Aslam', '2010-07-01', 'Female', 51002002, 3002002, '2014-01-01', 'h#002 st#002 RWP', 2),
(3, 'Ali', 'Murtza', '2009-03-01', 'Male', 51003003, 3003003, '2013-01-01', 'h#003 st#003 RWP', 2),
(4, 'Waqas', 'Raza', '2009-03-09', 'Male', 51004004, 3004004, '2013-01-01', 'h#004 st#004 RWP', 2),
(5, 'Naila', 'Amir', '2008-02-03', 'Female', 51005005, 3005005, '2012-01-01', 'h#005 st#005 RWP', 3),
(6, 'Ahsan', 'Khan', '2008-03-02', 'Male', 51006006, 3006006, '2012-01-01', 'h#006 st#006 RWP', 3);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `phone` int(20) NOT NULL,
  `mobile` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `fname`, `lname`, `dob`, `phone`, `mobile`) VALUES
(100, 'Asif', 'Khan', '1980-03-06', 51100100, 3100100),
(101, 'Sadia ', 'Sultan', '1990-02-09', 51101101, 3101101),
(103, 'Haroon', 'Rasheed', '1989-04-02', 51103103, 3103103),
(104, 'Tabinda', 'Naz', '1980-04-02', 51104104, 3104104);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD UNIQUE KEY `classroom_id` (`classroom_id`),
  ADD KEY `grade` (`grade`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `grade` (`grade`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`),
  ADD UNIQUE KEY `exam_id` (`exam_id`);

--
-- Indexes for table `exam_result`
--
ALTER TABLE `exam_result`
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `exam_id` (`exam_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD KEY `grade` (`grade`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `teacher_id` (`teacher_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON UPDATE CASCADE;

--
-- Constraints for table `classroom`
--
ALTER TABLE `classroom`
  ADD CONSTRAINT `classroom_ibfk_1` FOREIGN KEY (`grade`) REFERENCES `grade` (`grade`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`),
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`grade`) REFERENCES `grade` (`grade`);

--
-- Constraints for table `exam_result`
--
ALTER TABLE `exam_result`
  ADD CONSTRAINT `exam_result_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`exam_id`),
  ADD CONSTRAINT `exam_result_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `exam_result_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`grade`) REFERENCES `grade` (`grade`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
classroomexamexam_resultattendancestudent