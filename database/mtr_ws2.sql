-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2024 at 07:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mtr_ws2`
--

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `eval_id` int(11) NOT NULL,
  `ques_id` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructor_account`
--

CREATE TABLE `instructor_account` (
  `ins_id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(60) NOT NULL,
  `lastname` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meet`
--

CREATE TABLE `meet` (
  `meet_id` int(11) NOT NULL,
  `stud_id` int(11) NOT NULL,
  `ins_id` int(11) NOT NULL,
  `stud_subj_id` int(11) NOT NULL,
  `eval_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `ques_id` int(11) NOT NULL,
  `ques_category` varchar(100) NOT NULL,
  `ques_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_account`
--

CREATE TABLE `student_account` (
  `stud_id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(60) NOT NULL,
  `lastname` varchar(60) NOT NULL,
  `course` varchar(60) NOT NULL,
  `section` varchar(8) NOT NULL,
  `yearlevel` varchar(32) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

CREATE TABLE `student_subject` (
  `stud_subj_id` int(11) NOT NULL,
  `stud_id` int(11) NOT NULL,
  `ins_id` int(11) NOT NULL,
  `subj_code` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subj_code` varchar(32) NOT NULL,
  `subj_name` varchar(60) NOT NULL,
  `subj_year` varchar(32) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subj_code`, `subj_name`, `subj_year`, `semester`) VALUES
(' URD_MS102_IT 	', 'Quantitative Methods', 'Third Year', 1),
('SC_IAS102_IT', 'Information Assurance and Security 2', 'Fourth Year', 1),
('URD_CAP101_IT', 'Capstone Project 1', 'Third Year', 2),
('URD_CAP102_IT', 'Capstone Project 2', 'Fourth Year', 1),
('URD_CC101_IT', 'Introduction to Computing', 'First Year', 1),
('URD_CC102_IT', 'Fundamentals of Programming', 'First Year', 1),
('URD_CC103_IT', 'Intermediate Programming', 'First Year', 2),
('URD_CC104_IT', 'Data Structures and Algorithms', 'Second Year', 1),
('URD_CC105_IT', 'Information Management 1(Fund. Of Database)', 'Second Year', 2),
('URD_CC106_IT', 'Application Development and Emerging Technologies', 'Third Year', 1),
('URD_ELEC1_IT', 'Elective 1 (Web Systems and Technologies 2)', 'Third Year', 2),
('URD_ELEC2_IT', 'Elective 2 (Mobile Application Development 2)', 'Third Year', 2),
('URD_ELEC3_IT', 'Elective 3 (Special Topics on Web and Mobile 1)', 'Fourth Year', 1),
('URD_ELEC4_IT', 'Elective 4 (Special Topics on Web and Mobile 2)', 'Fourth Year', 1),
('URD_GE1', 'Understanding the Self', 'First Year', 2),
('URD_GE2', 'Readings in Philippine History', 'First Year', 2),
('URD_GE3/URD_GE3', 'Art Appreciation', 'First Year', 2),
('URD_GE4', 'Purposive Communication', 'Second Year', 1),
('URD_GE5', 'The Contemporary World', 'First Year', 1),
('URD_GE6', 'Science, Technology and Society', 'First Year', 1),
('URD_GE7', 'Mathematics in the Modern World', 'First Year', 1),
('URD_GE8/URD_GE8', 'The Life and Works of Rizal', 'Second Year', 2),
('URD_GE9/URD_GE9', 'Ethics', 'Third Year', 2),
('URD_GEE3', 'Reading Visual Arts', 'First Year', 2),
('URD_GEE4', 'Global Citizenship', 'Second Year', 1),
('URD_GEEL1', 'Living in the IT era', 'Second Year', 1),
('URD_GEEL2', 'The Entrepreneurial Mind', 'Third Year', 1),
('URD_HCI101_IT', 'Human Computer Interaction 1', 'Second Year', 1),
('URD_HCI102_IT', 'Human Computer Interaction 2', 'Second Year', 2),
('URD_IAS101_IT', 'Information Assurance and Security 1', 'Third Year', 2),
('URD_IC1', 'Personality Development', 'Third Year', 2),
('URD_IM102_IT', 'Information Management 2(Advance Database System)', 'Third Year', 1),
('URD_IPT101_IT', 'Integrative Programming and Technologies', 'Third Year', 2),
('URD_IT 105/URD_IT 105', 'Computer Organization 	', 'First Year', 2),
('URD_MD101_IT', 'Mobile Application Development 1', 'Third Year', 1),
('URD_MS101/URD_MS101', 'Discrete Mathematics', 'First Year', 2),
('URD_MT101_IT', 'Multimedia Technologies', 'Second Year', 2),
('URD_NET101_IT', 'Networking 1(Fundamentals of Networking) ', 'Second Year', 2),
('URD_NET102_IT', 'Networking 2(Advance Networking)', 'Third Year', 1),
('URD_NSTP1/URD_NSTP1', 'National Service Training Program I (CWTS 1 / ROTC 1 / LTS 1', 'First Year', 1),
('URD_NSTP_2/URD_NSTP_2', 'ROTC/CWTS/LTS 2', 'First Year', 2),
('URD_OOP101_IT', 'Object Oriented Programming', 'Second Year', 1),
('URD_OS101_IT', 'Operating System Application', 'Third Year', 2),
('URD_PE1/URD_PE1', 'Physical Activity Towards Health and Fitness 1', 'First Year', 1),
('URD_PE2/URD_PE2', 'Physical Activity Towards Health and Fitness 2', 'First Year', 2),
('URD_PE3/URD_PE3', 'Physical Activity Towards Health and Fitness 3', 'Second Year', 1),
('URD_PE4/URD_PE4', 'Physical Activity Towards Health and Fitness 4', 'Second Year', 2),
('URD_SA101_IT', 'System Administration and Maintenance', 'Fourth Year', 1),
('URD_SAD101_IT', 'System Analysis and Design ', 'Second Year', 2),
('URD_SIA101_IT', 'System Integration and Architecture', 'Fourth Year', 1),
('URD_SP101_IT', 'Social and Professional Issues', 'Third Year', 1),
('URD_TECH101_IT', 'Technopreneurship', 'Third Year', 2),
('URD_WD101_IT', 'Web Development', 'Second Year', 2),
('URD_WS101_IT', 'Web Systems and Technologies 1', 'Third Year', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`eval_id`),
  ADD KEY `fk_question` (`ques_id`);

--
-- Indexes for table `instructor_account`
--
ALTER TABLE `instructor_account`
  ADD PRIMARY KEY (`ins_id`);

--
-- Indexes for table `meet`
--
ALTER TABLE `meet`
  ADD PRIMARY KEY (`meet_id`),
  ADD KEY `fk_student` (`stud_id`),
  ADD KEY `fk_instructor` (`ins_id`),
  ADD KEY `fk_student_subject` (`stud_subj_id`),
  ADD KEY `fk_evaluation` (`eval_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`ques_id`);

--
-- Indexes for table `student_account`
--
ALTER TABLE `student_account`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD PRIMARY KEY (`stud_subj_id`),
  ADD KEY `fk_student_account` (`stud_id`),
  ADD KEY `fk_instructor_account` (`ins_id`),
  ADD KEY `fk_subject` (`subj_code`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subj_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `eval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructor_account`
--
ALTER TABLE `instructor_account`
  MODIFY `ins_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meet`
--
ALTER TABLE `meet`
  MODIFY `meet_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `ques_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_account`
--
ALTER TABLE `student_account`
  MODIFY `stud_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_subject`
--
ALTER TABLE `student_subject`
  MODIFY `stud_subj_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
