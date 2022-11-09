-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2022 at 05:35 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oes`
--

-- --------------------------------------------------------

--
-- Table structure for table `class_soes`
--

CREATE TABLE `class_soes` (
  `class_id` int(4) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `class_code` varchar(20) NOT NULL,
  `class_status` varchar(12) NOT NULL,
  `class_created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_soes`
--

INSERT INTO `class_soes` (`class_id`, `class_name`, `class_code`, `class_status`, `class_created_on`) VALUES
(1, 'Test Class 1', '9c2f45ddfe4f865e499f', 'Enable', '2022-09-25 22:25:30'),
(2, 'asdasd', '884fd39693ebfe9d4b7a', 'Enable', '2022-09-30 21:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `exam_soes`
--

CREATE TABLE `exam_soes` (
  `exam_id` int(4) NOT NULL,
  `exam_title` varchar(50) DEFAULT NULL,
  `exam_class_id` int(4) DEFAULT NULL,
  `exam_duration` varchar(20) DEFAULT NULL,
  `exam_result_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `exam_status` varchar(12) DEFAULT NULL,
  `exam_created_on` datetime DEFAULT NULL,
  `exam_code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_soes`
--

INSERT INTO `exam_soes` (`exam_id`, `exam_title`, `exam_class_id`, `exam_duration`, `exam_result_datetime`, `exam_status`, `exam_created_on`, `exam_code`) VALUES
(2, 'Test exam 1', 1, '10', '2022-09-28 22:15:00', 'Completed', '2022-09-28 20:30:00', '0acf926e28dc0e8ec5f46b15537bd07e'),
(3, 'New 1', 1, '5', '2022-10-02 21:05:00', 'Completed', '2022-10-02 20:47:23', '7635c4b29c8fa4992c107963b15c94b2');

-- --------------------------------------------------------

--
-- Table structure for table `exam_subject_question_answer`
--

CREATE TABLE `exam_subject_question_answer` (
  `id` int(4) NOT NULL,
  `student_id` int(4) DEFAULT NULL,
  `student_answer_option` varchar(4) DEFAULT NULL,
  `exam_subject_question_id` int(4) DEFAULT NULL,
  `marks` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_subject_question_answer`
--

INSERT INTO `exam_subject_question_answer` (`id`, `student_id`, `student_answer_option`, `exam_subject_question_id`, `marks`) VALUES
(1, 2, '2', 1, '+1'),
(2, 2, '3', 2, '+1'),
(3, 2, '2', 3, '+2'),
(4, 2, '1', 4, '-1'),
(5, 2, '4', 5, '+2');

-- --------------------------------------------------------

--
-- Table structure for table `exam_subject_question_soes`
--

CREATE TABLE `exam_subject_question_soes` (
  `exam_subject_question_id` int(4) NOT NULL,
  `exam_id` int(4) DEFAULT NULL,
  `exam_subject_id` int(4) DEFAULT NULL,
  `exam_subject_question_title` varchar(256) DEFAULT NULL,
  `exam_subject_question_answer` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_subject_question_soes`
--

INSERT INTO `exam_subject_question_soes` (`exam_subject_question_id`, `exam_id`, `exam_subject_id`, `exam_subject_question_title`, `exam_subject_question_answer`) VALUES
(1, 2, 1, 'Test question 1', '2'),
(2, 2, 1, 'Test question 2', '3'),
(3, 3, 2, 'Test question 1', '2'),
(4, 3, 2, 'Test question 2', '3'),
(5, 3, 2, 'Test question 3', '4');

-- --------------------------------------------------------

--
-- Table structure for table `question_option_soes`
--

CREATE TABLE `question_option_soes` (
  `question_option_id` int(4) NOT NULL,
  `exam_subject_question_id` int(4) DEFAULT NULL,
  `question_option_number` int(4) DEFAULT NULL,
  `question_option_title` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_option_soes`
--

INSERT INTO `question_option_soes` (`question_option_id`, `exam_subject_question_id`, `question_option_number`, `question_option_title`) VALUES
(1, 1, 1, 'Test option 1'),
(2, 1, 2, 'Test option 2'),
(3, 1, 3, 'Test option 3'),
(4, 1, 4, 'Test option 4'),
(5, 2, 1, 'Test option 1'),
(6, 2, 2, 'Test option 2'),
(7, 2, 3, 'Test option 3'),
(8, 2, 4, 'Test option 4'),
(9, 3, 1, '1'),
(10, 3, 2, '2'),
(11, 3, 3, '3'),
(12, 3, 4, '4'),
(13, 4, 1, '1'),
(14, 4, 2, '2'),
(15, 4, 3, '3'),
(16, 4, 4, '4'),
(17, 5, 1, '1'),
(18, 5, 2, '2'),
(19, 5, 3, '3'),
(20, 5, 4, '4');

-- --------------------------------------------------------

--
-- Table structure for table `student_soes`
--

CREATE TABLE `student_soes` (
  `student_id` int(4) NOT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `student_address` varchar(120) DEFAULT NULL,
  `student_email_id` varchar(50) DEFAULT NULL,
  `student_password` varchar(50) DEFAULT NULL,
  `student_gender` varchar(10) DEFAULT NULL,
  `student_dob` date DEFAULT NULL,
  `student_image` varchar(50) DEFAULT NULL,
  `student_status` varchar(50) DEFAULT NULL,
  `student_added_by` varchar(20) DEFAULT NULL,
  `student_added_on` datetime DEFAULT NULL,
  `student_email_verified` varchar(12) DEFAULT NULL,
  `student_email_verification_code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_soes`
--

INSERT INTO `student_soes` (`student_id`, `student_name`, `student_address`, `student_email_id`, `student_password`, `student_gender`, `student_dob`, `student_image`, `student_status`, `student_added_by`, `student_added_on`, `student_email_verified`, `student_email_verification_code`) VALUES
(2, 'Test Student 1', 'Test student 1 address', 'teststudent1@gmail.com', '12345', 'Male', '2001-02-07', '../images/2069512286.jpg', 'Enable', 'Master', '2022-09-25 22:58:47', NULL, NULL),
(3, 'Test Student 2', 'Test student 2 address', 'teststudent2@gmail.com', '12345', 'Male', '1999-02-02', '../images/921590573.jpg', 'Enable', 'Master', '2022-09-25 23:03:17', NULL, NULL),
(4, 'FM Galib', 'Dhaka 1206', 'fmgalib@gmail.com', '123456', 'Male', '1990-01-10', '../images/1442362846.jpg', 'Disable', 'Master', '2022-09-28 20:15:38', NULL, NULL),
(5, 'asd', 'asd', 'as@gmail.com', 'asd', 'Male', '2022-09-21', '../images/951045634.jpg', 'Enable', 'Master', '2022-09-30 21:57:17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_to_class_soes`
--

CREATE TABLE `student_to_class_soes` (
  `student_to_class_id` int(4) NOT NULL,
  `class_id` int(4) DEFAULT NULL,
  `student_id` int(4) DEFAULT NULL,
  `student_roll_no` int(4) DEFAULT NULL,
  `added_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_to_class_soes`
--

INSERT INTO `student_to_class_soes` (`student_to_class_id`, `class_id`, `student_id`, `student_roll_no`, `added_on`) VALUES
(2, 1, 2, 1, '2022-09-25 23:04:28'),
(3, 1, 3, 2, '2022-09-25 23:04:34'),
(4, 1, 2, 2, '2022-10-02 20:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `subject_soes`
--

CREATE TABLE `subject_soes` (
  `subject_id` int(4) NOT NULL,
  `subject_name` varchar(50) DEFAULT NULL,
  `subject_status` varchar(12) DEFAULT NULL,
  `subject_created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_soes`
--

INSERT INTO `subject_soes` (`subject_id`, `subject_name`, `subject_status`, `subject_created_on`) VALUES
(1, 'Test Subject 1', 'Enable', '2022-09-25 22:31:34'),
(2, 'Test Subject 2', 'Enable', '2022-09-25 22:32:01'),
(3, 'asdasd', 'Enable', '2022-09-30 21:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `subject_to_class_soes`
--

CREATE TABLE `subject_to_class_soes` (
  `subject_to_class_id` int(4) NOT NULL,
  `class_id` int(4) DEFAULT NULL,
  `subject_id` int(4) DEFAULT NULL,
  `added_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_to_class_soes`
--

INSERT INTO `subject_to_class_soes` (`subject_to_class_id`, `class_id`, `subject_id`, `added_on`) VALUES
(2, 1, 1, '2022-09-25 22:36:09'),
(3, 1, 2, '2022-09-25 22:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `subject_wise_exam_detail`
--

CREATE TABLE `subject_wise_exam_detail` (
  `exam_subject_id` int(4) NOT NULL,
  `exam_id` int(4) DEFAULT NULL,
  `subject_id` int(4) DEFAULT NULL,
  `subject_total_question` varchar(4) DEFAULT NULL,
  `marks_per_right_answer` varchar(4) DEFAULT NULL,
  `marks_per_wrong_answer` varchar(10) DEFAULT NULL,
  `subject_exam_datetime` datetime DEFAULT NULL,
  `subject_exam_code` varchar(100) NOT NULL,
  `subject_exam_status` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_wise_exam_detail`
--

INSERT INTO `subject_wise_exam_detail` (`exam_subject_id`, `exam_id`, `subject_id`, `subject_total_question`, `marks_per_right_answer`, `marks_per_wrong_answer`, `subject_exam_datetime`, `subject_exam_code`, `subject_exam_status`) VALUES
(1, 2, 1, '5', '1', '1', '2022-09-28 22:23:00', 'c5617c3844a4e2c858972223bff5de54', 'Completed'),
(2, 3, 1, '5', '2', '1', '2022-10-02 20:55:00', 'e4161e8df01923d4df479baca3a24ea9', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `user_soes`
--

CREATE TABLE `user_soes` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_contact_no` varchar(20) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `user_profile` varchar(50) NOT NULL,
  `user_status` varchar(12) NOT NULL,
  `user_created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_soes`
--

INSERT INTO `user_soes` (`user_id`, `user_name`, `user_contact_no`, `user_email`, `user_password`, `user_type`, `user_profile`, `user_status`, `user_created_on`) VALUES
(1, 'admin', '0154654846', 'admin@gmail.com', 'admin', 'Master', '../images/178728380.jpg', 'Enable', NULL),
(2, 'Test user one', '01321465489', 'testuser@gmail.com', '123456', 'User', '../images/1915228257.jpg', 'Enable', '2022-09-25 23:54:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_soes`
--
ALTER TABLE `class_soes`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `exam_soes`
--
ALTER TABLE `exam_soes`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `exam_subject_question_answer`
--
ALTER TABLE `exam_subject_question_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_subject_question_soes`
--
ALTER TABLE `exam_subject_question_soes`
  ADD PRIMARY KEY (`exam_subject_question_id`);

--
-- Indexes for table `question_option_soes`
--
ALTER TABLE `question_option_soes`
  ADD PRIMARY KEY (`question_option_id`);

--
-- Indexes for table `student_soes`
--
ALTER TABLE `student_soes`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_to_class_soes`
--
ALTER TABLE `student_to_class_soes`
  ADD PRIMARY KEY (`student_to_class_id`);

--
-- Indexes for table `subject_soes`
--
ALTER TABLE `subject_soes`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `subject_to_class_soes`
--
ALTER TABLE `subject_to_class_soes`
  ADD PRIMARY KEY (`subject_to_class_id`);

--
-- Indexes for table `subject_wise_exam_detail`
--
ALTER TABLE `subject_wise_exam_detail`
  ADD PRIMARY KEY (`exam_subject_id`);

--
-- Indexes for table `user_soes`
--
ALTER TABLE `user_soes`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_soes`
--
ALTER TABLE `class_soes`
  MODIFY `class_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exam_soes`
--
ALTER TABLE `exam_soes`
  MODIFY `exam_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exam_subject_question_answer`
--
ALTER TABLE `exam_subject_question_answer`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exam_subject_question_soes`
--
ALTER TABLE `exam_subject_question_soes`
  MODIFY `exam_subject_question_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `question_option_soes`
--
ALTER TABLE `question_option_soes`
  MODIFY `question_option_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `student_soes`
--
ALTER TABLE `student_soes`
  MODIFY `student_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_to_class_soes`
--
ALTER TABLE `student_to_class_soes`
  MODIFY `student_to_class_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subject_soes`
--
ALTER TABLE `subject_soes`
  MODIFY `subject_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject_to_class_soes`
--
ALTER TABLE `subject_to_class_soes`
  MODIFY `subject_to_class_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject_wise_exam_detail`
--
ALTER TABLE `subject_wise_exam_detail`
  MODIFY `exam_subject_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_soes`
--
ALTER TABLE `user_soes`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
