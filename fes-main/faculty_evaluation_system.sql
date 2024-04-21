-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 01:28 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faculty_evaluation_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ADMIN_ID` int(11) NOT NULL,
  `ADMIN_FNAME` varchar(50) DEFAULT NULL,
  `ADMIN_MNAME` varchar(50) DEFAULT NULL,
  `ADMIN_LNAME` varchar(50) DEFAULT NULL,
  `ADMIN_EMAIL` varchar(50) DEFAULT NULL,
  `ADMIN_PASS` varchar(50) DEFAULT NULL,
  `ADMIN_TYPE` varchar(50) DEFAULT NULL,
  `SEX_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ADMIN_ID`, `ADMIN_FNAME`, `ADMIN_MNAME`, `ADMIN_LNAME`, `ADMIN_EMAIL`, `ADMIN_PASS`, `ADMIN_TYPE`, `SEX_ID`) VALUES
(1, 'Eric', 'Kalix', 'Santo', 'eksanto@kld.edu.ph', '*****', 'Super Admin', 2),
(2, 'Jericko', 'Laime', 'Delos Santos', 'jldelossantos@kld.edu.ph', '*****', 'Admin', 2),
(3, 'Admin1', 'Neil', 'Corpuz', 'ancorpuz@kld.edu.ph', '*****', 'Admin', 2),
(4, 'Admin2', 'Mendez', 'Mendoza', 'ammendoza@email', '*****', 'Admin', 2),
(5, 'Admin3', 'Narial', 'Juan', 'anjuan@kld.edu.ph', '*****', 'Admin', 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin_control`
--

CREATE TABLE `admin_control` (
  `CONTROL_ID` int(11) NOT NULL,
  `ADMIN_ID` int(11) DEFAULT NULL,
  `CONTYPE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_control`
--

INSERT INTO `admin_control` (`CONTROL_ID`, `ADMIN_ID`, `CONTYPE_ID`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 4, 1),
(4, 1, 2),
(5, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `admin_control_type`
--

CREATE TABLE `admin_control_type` (
  `CONTYPE_ID` int(11) NOT NULL,
  `CONTYPE_DESC` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_control_type`
--

INSERT INTO `admin_control_type` (`CONTYPE_ID`, `CONTYPE_DESC`) VALUES
(1, 'Create'),
(2, 'Retrieve'),
(3, 'Update'),
(4, 'Delete');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_section`
--

CREATE TABLE `assigned_section` (
  `ASEC_ID` int(11) NOT NULL,
  `FC_ID` int(11) DEFAULT NULL,
  `SEC_ID` int(11) DEFAULT NULL,
  `COURSE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assigned_section`
--

INSERT INTO `assigned_section` (`ASEC_ID`, `FC_ID`, `SEC_ID`, `COURSE_ID`) VALUES
(1, 1, 4, 2),
(2, 2, 4, 2),
(3, 3, 1, 2),
(4, 1, 1, 2),
(5, 3, 3, 2),
(6, 4, 3, 2),
(7, 2, 2, 2),
(8, 4, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `COURSE_ID` int(11) NOT NULL,
  `COURSE_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`COURSE_ID`, `COURSE_NAME`) VALUES
(1, 'BS Nursing'),
(2, 'BS Psych'),
(3, 'BS Information System'),
(4, 'BS Civil Engineering'),
(5, 'BS Midwifery');

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `CRITERIA_ID` int(11) NOT NULL,
  `CRITERIA_DESC` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`CRITERIA_ID`, `CRITERIA_DESC`) VALUES
(1, 'Commitment'),
(2, 'Knowledge of the subject matter'),
(3, 'Teaching for independent learning'),
(4, 'Management of learning');

-- --------------------------------------------------------

--
-- Table structure for table `dean`
--

CREATE TABLE `dean` (
  `DEAN_ID` int(11) NOT NULL,
  `DEAN_FNAME` varchar(50) DEFAULT NULL,
  `DEAN_MNAME` varchar(50) DEFAULT NULL,
  `DEAN_LNAME` varchar(50) DEFAULT NULL,
  `DEAN_EMAIL` varchar(50) DEFAULT NULL,
  `DEAN_PASS` varchar(50) DEFAULT NULL,
  `INST_ID` int(11) DEFAULT NULL,
  `SEX_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dean`
--

INSERT INTO `dean` (`DEAN_ID`, `DEAN_FNAME`, `DEAN_MNAME`, `DEAN_LNAME`, `DEAN_EMAIL`, `DEAN_PASS`, `INST_ID`, `SEX_ID`) VALUES
(1, 'Ma. Lovella', 'Monderin', 'Aure', 'mlmaure@kld.edu.ph', '*****', 1, 1),
(2, 'Silfa ', 'Caroline', 'Napicol', 'scnapicol@kld.edu.ph', '*****', 2, 1),
(3, 'Keno', 'Samuel', 'Villavicencio', 'ksvillavicencio@kld.edu.ph', '*****', 3, 2),
(4, 'Kim', 'Carlo', 'Lat', 'kclat@kld.edu.ph', '*****', 4, 1),
(5, 'Luchel', 'Shantel', 'Glotiani', 'lsglotiani@kld.edu.ph', '*****', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dean_reports`
--

CREATE TABLE `dean_reports` (
  `DEAN_REP` int(11) NOT NULL,
  `DEAN_ID` int(11) DEFAULT NULL,
  `SEM_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dean_reports`
--

INSERT INTO `dean_reports` (`DEAN_REP`, `DEAN_ID`, `SEM_ID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `employment_status`
--

CREATE TABLE `employment_status` (
  `EMP_STATUS` int(11) NOT NULL,
  `EMP_DESC` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employment_status`
--

INSERT INTO `employment_status` (`EMP_STATUS`, `EMP_DESC`) VALUES
(1, 'Full-time Employee'),
(2, 'Part-time Employee');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `EVAL_ID` int(11) NOT NULL,
  `FC_ID` int(11) DEFAULT NULL,
  `STUD_ID` int(11) DEFAULT NULL,
  `SEM_ID` int(11) DEFAULT NULL,
  `DATE` date DEFAULT NULL,
  `OVERALL_RATE` float DEFAULT NULL,
  `STRENGTH_CMT` varchar(50) DEFAULT NULL,
  `IMPROV_CMT` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`EVAL_ID`, `FC_ID`, `STUD_ID`, `SEM_ID`, `DATE`, `OVERALL_RATE`, `STRENGTH_CMT`, `IMPROV_CMT`) VALUES
(1, 1, 1, 1, '2023-12-01', 4.5, 'Okay', 'IDK'),
(2, 2, 1, 1, '2023-12-01', 5, 'Okay', 'None'),
(3, 3, 1, 1, '2023-12-01', 3, 'Okay', 'Voice'),
(4, 4, 1, 1, '2023-12-01', 5, 'Okay', 'None'),
(5, 5, 1, 1, '2023-12-01', 5, 'Okay', 'IDK'),
(100, 1, 1, 2, '2024-04-01', 3.5, 'Okay', 'IDK'),
(101, 2, 1, 2, '2024-04-01', 5, 'Okay', 'None'),
(102, 3, 1, 2, '2024-04-01', 5, 'Okay', 'None'),
(103, 4, 1, 2, '2024-04-01', 3, 'Okay', 'None'),
(104, 5, 1, 2, '2024-04-01', 4, 'Okay', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_response`
--

CREATE TABLE `evaluation_response` (
  `RES_ID` int(11) NOT NULL,
  `CRITERIA_ID` int(11) DEFAULT NULL,
  `EVAL_ID` int(11) DEFAULT NULL,
  `RATE` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluation_response`
--

INSERT INTO `evaluation_response` (`RES_ID`, `CRITERIA_ID`, `EVAL_ID`, `RATE`) VALUES
(1, 1, 1, 5),
(2, 2, 1, 4.5),
(3, 3, 1, 5),
(4, 4, 1, 5),
(5, 1, 2, 4),
(6, 2, 2, 5),
(7, 3, 2, 4.5),
(8, 4, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `FC_ID` int(11) NOT NULL,
  `FC_FNAME` varchar(50) DEFAULT NULL,
  `FC_MNAME` varchar(50) DEFAULT NULL,
  `FC_LNAME` varchar(50) DEFAULT NULL,
  `FC_EMAIL` varchar(50) DEFAULT NULL,
  `FC_PASS` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(10) DEFAULT NULL,
  `INST_ID` int(11) DEFAULT NULL,
  `SEX_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FC_ID`, `FC_FNAME`, `FC_MNAME`, `FC_LNAME`, `FC_EMAIL`, `FC_PASS`, `COURSE_CODE`, `INST_ID`, `SEX_ID`) VALUES
(1, 'Cecille', 'Raquel', 'Alvaran', 'cralvaran@kld.edu.ph', '*****', 'CCIS2205', 3, 2),
(2, 'Reggie', 'Mar', 'De Castro', 'rmdecastro@kld.edu.ph', '*****', 'PCIS2201', 3, 1),
(3, 'Ellaine', 'Vivian', 'Estil', 'evestil@kld.edu.ph', '*****', 'GEC9100', 2, 2),
(4, 'Jhellee', 'Montenegro', 'Aquino', 'jmaquino@kld.edu.ph', '*****', 'GEC8000', 2, 2),
(5, 'Caesar', 'Faulkerson', 'Galingana', 'cfgalingana@kld.edu.ph', '*****', 'CCIS2203', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_rank_report`
--

CREATE TABLE `faculty_rank_report` (
  `RANK_ID` int(11) NOT NULL,
  `FC_ID` int(11) DEFAULT NULL,
  `EMP_STATUS` int(11) DEFAULT NULL,
  `DEAN_REP` int(11) DEFAULT NULL,
  `RANK_NO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_rank_report`
--

INSERT INTO `faculty_rank_report` (`RANK_ID`, `FC_ID`, `EMP_STATUS`, `DEAN_REP`, `RANK_NO`) VALUES
(1, 4, 1, 1, 1),
(2, 5, 1, 1, 2),
(3, 2, 2, 1, 2),
(4, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

CREATE TABLE `institute` (
  `INST_ID` int(11) NOT NULL,
  `INST_NAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`INST_ID`, `INST_NAME`) VALUES
(1, 'Institute of Nursing'),
(2, 'Institute of Human Potential and Development'),
(3, 'Institute of Information and Computing Sciences'),
(4, 'Institute of Engineering'),
(5, 'Institute of Midwifery');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire`
--

CREATE TABLE `questionnaire` (
  `QS_ID` int(11) NOT NULL,
  `QUESTION` varchar(50) DEFAULT NULL,
  `CRITERIA_ID` int(11) DEFAULT NULL,
  `EVAL_ID` int(11) DEFAULT NULL,
  `QS_SCORE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questionnaire`
--

INSERT INTO `questionnaire` (`QS_ID`, `QUESTION`, `CRITERIA_ID`, `EVAL_ID`, `QS_SCORE`) VALUES
(1, 'Qs 1', 1, 1, 5),
(2, 'Qs 1', 1, 1, 5),
(3, 'Qs 1', 1, 1, 4),
(4, 'Qs 1', 1, 1, 5),
(5, 'Qs 1', 1, 1, 4),
(6, 'Qs 2', 1, 1, 3),
(7, 'Qs 2', 1, 1, 4),
(8, 'Qs 2', 1, 1, 5),
(9, 'Qs 2', 1, 1, 5),
(10, 'Qs 2', 1, 1, 4),
(11, 'Qs 3', 1, 1, 5),
(12, 'Qs 3', 1, 1, 5),
(13, 'Qs 3', 1, 1, 5),
(14, 'Qs 3', 1, 1, 4),
(15, 'Qs 3', 1, 1, 5),
(16, 'Qs 4', 1, 1, 5),
(17, 'Qs 4', 1, 1, 3),
(18, 'Qs 4', 1, 1, 5),
(19, 'Qs 4', 1, 1, 4),
(20, 'Qs 4', 1, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rank_status`
--

CREATE TABLE `rank_status` (
  `RANK_NO` int(11) NOT NULL,
  `RANK_DESC` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rank_status`
--

INSERT INTO `rank_status` (`RANK_NO`, `RANK_DESC`) VALUES
(1, 'Top-performing faculty member'),
(2, 'Mid-level performing faculty member'),
(3, 'Least-performing faculty member');

-- --------------------------------------------------------

--
-- Table structure for table `score_equivalent`
--

CREATE TABLE `score_equivalent` (
  `QS_SCORE` int(11) NOT NULL,
  `SCORE_EQUIVAL` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `score_equivalent`
--

INSERT INTO `score_equivalent` (`QS_SCORE`, `SCORE_EQUIVAL`) VALUES
(1, 'Poor'),
(2, 'Unsatisfactory'),
(3, 'Satisfactory'),
(4, 'Very Satisfactory'),
(5, 'Outstanding');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `SEM_ID` int(11) NOT NULL,
  `SEM_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`SEM_ID`, `SEM_NAME`) VALUES
(1, 'First Semester'),
(2, 'Second Semester');

-- --------------------------------------------------------

--
-- Table structure for table `sex_type`
--

CREATE TABLE `sex_type` (
  `SEX_ID` int(11) NOT NULL,
  `SEX_DESC` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sex_type`
--

INSERT INTO `sex_type` (`SEX_ID`, `SEX_DESC`) VALUES
(1, 'Female'),
(2, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `STUD_ID` varchar(20) NOT NULL,
  `STUD_KLD` varchar(20) DEFAULT NULL,
  `STUD_FNAME` varchar(50) DEFAULT NULL,
  `STUD_MNAME` varchar(50) DEFAULT NULL,
  `STUD_LNAME` varchar(50) DEFAULT NULL,
  `SEX_ID` int(11) DEFAULT NULL,
  `STUD_EMAIL` varchar(50) DEFAULT NULL,
  `STUD_PASS` varchar(50) DEFAULT NULL,
  `COURSE_ID` int(11) DEFAULT NULL,
  `SEC_ID` int(11) DEFAULT NULL,
  `YEAR_ID` int(11) DEFAULT NULL,
  `ACAD_YEAR` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`STUD_ID`, `STUD_KLD`, `STUD_FNAME`, `STUD_MNAME`, `STUD_LNAME`, `SEX_ID`, `STUD_EMAIL`, `STUD_PASS`, `COURSE_ID`, `SEC_ID`, `YEAR_ID`, `ACAD_YEAR`) VALUES
('1', 'KLD-22-001', 'Amira', 'Pheonix', 'Fajardo', 1, 'apfajardo@kld.edu.ph', '*****', 2, 4, 2, '2023-2024'),
('10', 'KLD-22-010', 'Althea', 'Joson', 'Felix', 2, 'ajfelix@kld.edu.ph', '*****', 5, 5, 2, '2023-2024'),
('2', 'KLD-22-002', 'Jonas', 'Seraphina', 'Ibasco', 1, 'jsibasco@kld.edu.ph', '*****', 2, 4, 2, '2023-2024'),
('3', 'KLD-22-003', 'Kim', 'Mendez', 'Colicot', 1, 'kmcolicot@kld.edu.ph', '*****', 2, 4, 2, '2023-2024'),
('4', 'KLD-22-004', 'Jasia', 'Dalaine', 'Batistis', 1, 'jdbatistis@kld.edu.ph', '*****', 2, 7, 3, '2023-2024'),
('5', 'KLD-22-005', 'Mase', 'Eldrin', 'Lopez', 1, 'melopez@kld.edu.ph', '*****', 2, 7, 3, '2023-2024'),
('6', 'KLD-22-006', 'Liam', 'Faulker', 'Valladolid', 2, 'lfvalladolid@kld.edu.ph', '*****', 1, 2, 1, '2023-2024'),
('7', 'KLD-22-007', 'Eson', 'Gregor', 'Buscagan', 2, 'egbuscagan@kld.edu.ph', '*****', 1, 2, 1, '2023-2024'),
('8', 'KLD-22-008', 'Jane', 'Dwayne', 'Escob', 1, 'jdescob@kld.edu.ph', '*****', 3, 1, 1, '2023-2024'),
('9', 'KLD-22-009', 'Amry', 'De Guzman', 'Buenvenida', 2, 'adgbuenvenida@kld.edu.ph', '*****', 4, 6, 2, '2023-2024');

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `REG_ID` int(11) NOT NULL,
  `ADMIN_ID` int(11) DEFAULT NULL,
  `STUD_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`REG_ID`, `ADMIN_ID`, `STUD_ID`) VALUES
(1, 2, 1),
(2, 3, 2),
(3, 4, 3),
(4, 2, 4),
(5, 3, 5),
(6, 4, 6),
(7, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `COURSE_CODE` varchar(10) NOT NULL,
  `SUB_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`COURSE_CODE`, `SUB_NAME`) VALUES
('CCIS2203', 'BPDM'),
('CCIS2205', 'SAD'),
('GEC8000', 'Science'),
('GEC9100', 'Filipino'),
('PCIS2201', 'Infoman');

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `YEAR_ID` int(11) NOT NULL,
  `YEAR_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`YEAR_ID`, `YEAR_NAME`) VALUES
(1, 'First Year'),
(2, 'Second Year'),
(3, 'Third Year'),
(4, 'Fourth Year');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ADMIN_ID`);

--
-- Indexes for table `admin_control`
--
ALTER TABLE `admin_control`
  ADD PRIMARY KEY (`CONTROL_ID`);

--
-- Indexes for table `admin_control_type`
--
ALTER TABLE `admin_control_type`
  ADD PRIMARY KEY (`CONTYPE_ID`);

--
-- Indexes for table `assigned_section`
--
ALTER TABLE `assigned_section`
  ADD PRIMARY KEY (`ASEC_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`COURSE_ID`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`CRITERIA_ID`);

--
-- Indexes for table `dean`
--
ALTER TABLE `dean`
  ADD PRIMARY KEY (`DEAN_ID`);

--
-- Indexes for table `dean_reports`
--
ALTER TABLE `dean_reports`
  ADD PRIMARY KEY (`DEAN_REP`);

--
-- Indexes for table `employment_status`
--
ALTER TABLE `employment_status`
  ADD PRIMARY KEY (`EMP_STATUS`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`EVAL_ID`);

--
-- Indexes for table `evaluation_response`
--
ALTER TABLE `evaluation_response`
  ADD PRIMARY KEY (`RES_ID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`FC_ID`);

--
-- Indexes for table `faculty_rank_report`
--
ALTER TABLE `faculty_rank_report`
  ADD PRIMARY KEY (`RANK_ID`);

--
-- Indexes for table `institute`
--
ALTER TABLE `institute`
  ADD PRIMARY KEY (`INST_ID`);

--
-- Indexes for table `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD PRIMARY KEY (`QS_ID`);

--
-- Indexes for table `rank_status`
--
ALTER TABLE `rank_status`
  ADD PRIMARY KEY (`RANK_NO`);

--
-- Indexes for table `score_equivalent`
--
ALTER TABLE `score_equivalent`
  ADD PRIMARY KEY (`QS_SCORE`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`SEM_ID`);

--
-- Indexes for table `sex_type`
--
ALTER TABLE `sex_type`
  ADD PRIMARY KEY (`SEX_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`STUD_ID`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`REG_ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`YEAR_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
