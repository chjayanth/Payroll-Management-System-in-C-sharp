-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2022 at 05:58 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payrolldbcsharp`
--

-- --------------------------------------------------------

--
-- Table structure for table `autonumber`
--

CREATE TABLE `autonumber` (
  `id` int(11) NOT NULL,
  `autoname` varchar(30) NOT NULL,
  `strnum` int(11) NOT NULL,
  `increment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `autonumber`
--

INSERT INTO `autonumber` (`id`, `autoname`, `strnum`, `increment`) VALUES
(1, 'trans', 26, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_code` varchar(30) NOT NULL,
  `emp_fname` varchar(60) DEFAULT NULL,
  `emp_lname` varchar(60) DEFAULT NULL,
  `emp_mname` varchar(60) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` int(20) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `birth_place` varchar(100) DEFAULT NULL,
  `emp_sex` varchar(10) DEFAULT NULL,
  `emp_age` int(10) DEFAULT NULL,
  `emerg_contct` int(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_code`, `emp_fname`, `emp_lname`, `emp_mname`, `address`, `contact`, `status`, `birth_date`, `birth_place`, `emp_sex`, `emp_age`, `emerg_contct`) VALUES
('al96', 'Amos', 'Lewis', 'P.', '179 Scheuvront Drive', 777457892, 'Married', '1988-08-23', 'Table Mesa', 'Male', 34, 400057892),
('astr00556', 'Christine', 'Moore', 'L.', '71 Elliott Street', 1475550001, 'Married', '1990-05-09', 'Groveton', 'Female', 31, 1475550001),
('bj55', 'Barbara', 'Jackson', 'R.', '85 Buck Drive', 854000010, 'Single', '1989-07-07', 'Lombard', 'Female', 33, 1114546735),
('cm30', 'Cynthia', 'McNally', 'J.', '48 Lake Road', 740471214, 'Single', '1987-02-13', 'Camden', 'Female', 35, 1004712134),
('cw57', 'Carol', 'Waller', 'B.', '29 Christie Way', 777231232, 'Single', '1989-01-12', 'Cambridge', 'Female', 31, 231002312),
('js99', 'Jeanne', 'Slaton', 'N.', '24 Green Street\n', 1114657679, 'Single', '1985-12-09', 'Nashville', 'Female', 35, 465767900),
('jt17', 'James', 'Watts', 'J.', '21 Larry Street', 2147483647, 'Married', '1990-02-12', 'Nashville', 'Male', 32, 2147483647),
('nt08', 'Nicholas', 'Turner', 'M.', '83 Red Maple Drive', 744712134, 'Single', '1987-02-13', 'Moulton', 'Male', 33, 470212134),
('rd80', 'Reeds', 'Wooten', 'D.', '44 Elk City Road', 741000145, 'Married', '1994-01-24', 'Shreveport', 'Male', 27, 741000145),
('rsm7', 'Raquel', 'McLennan', 'S.', '30 Steve Hunt Road\n', 794712134, 'Single', '1987-02-13', 'Doral', 'Female', 26, 477712134),
('sh88', 'Sherry', 'Hull', 'D.', '28 Little Acres Lane', 995400958, 'Single', '1990-09-28', 'Bloomington', 'Female', 30, 77777958),
('sp77', 'Stephanie', 'Peana', 'K.', '52 Doctors Drive', 214783647, 'Single', '1988-05-23', 'Nashville', 'Female', 32, 2147483647),
('tf90', 'Tony', 'Frank', 'D.', '80 Olen Thomas Drive', 254001458, 'Single', '1998-01-15', 'Cee Vee', 'Female', 23, 254001458),
('ww12', 'Will', 'Williams', 'W.', '85 Test Address', 741222000, 'Single', '1992-02-06', 'Test Birthplace', 'Male', 30, 741222000);

-- --------------------------------------------------------

--
-- Table structure for table `employee_workinfo`
--

CREATE TABLE `employee_workinfo` (
  `id` int(10) NOT NULL,
  `emp_code` varchar(10) NOT NULL,
  `d_rate` int(30) DEFAULT NULL,
  `p_method` varchar(60) DEFAULT NULL,
  `position` varchar(60) DEFAULT NULL,
  `w_status` varchar(60) DEFAULT NULL,
  `d_hired` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_workinfo`
--

INSERT INTO `employee_workinfo` (`id`, `emp_code`, `d_rate`, `p_method`, `position`, `w_status`, `d_hired`) VALUES
(1, 'nt08', 230, 'weekly', 'casual', 'active', '2012-12-11'),
(2, 'cw57', 230, 'Weekly', 'Casual', 'Active', '2013-01-23'),
(4, 'sh88', 230, 'weekly', 'casual', 'active', '2013-08-07'),
(5, 'cm30', 230, 'weekly', 'casual', 'active', '2012-12-11'),
(6, 'sp77', 230, 'Weekly', 'Casual', 'Active', '2013-08-21'),
(11, 'js99', 270, 'weekly', 'regular', 'active', '2000-08-10'),
(13, 'rsm7', 230, 'weekly', 'casual', 'active', '2012-12-11'),
(15, 'bj55', 300, 'weekly', 'regular', 'active', '2010-07-20'),
(17, 'al96', 270, 'weekly', 'regular', 'active', '2010-08-23'),
(19, 'jt17', 165, 'Weekly', 'casual', 'Active', '2020-02-12'),
(20, 'jha2', 270, 'Weekly', 'casual', 'Active', '2014-03-10'),
(21, 'jha45', 270, 'Weekly', 'casual', 'Active', '2014-03-10'),
(22, 'ASTR00556', 110, 'Monthly', 'Sales', 'Active', '2022-01-03'),
(23, 'rd80', 152, 'Monthly', 'Marketing', 'Active', '2021-04-04'),
(24, 'tf90', 58, 'Monthly', 'Intern', 'Active', '2022-02-16'),
(25, 'ww12', 153, 'Weekly', 'Sales', 'Active', '2021-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `other_deduction`
--

CREATE TABLE `other_deduction` (
  `KEY` int(11) NOT NULL,
  `trans_id` varchar(30) NOT NULL,
  `emp_code` varchar(10) DEFAULT NULL,
  `deduct1` varchar(60) DEFAULT NULL,
  `ded_amount1` int(30) DEFAULT NULL,
  `deduct2` varchar(60) DEFAULT NULL,
  `ded_amount2` int(30) DEFAULT NULL,
  `deduct3` varchar(60) DEFAULT NULL,
  `ded_amount3` int(30) DEFAULT NULL,
  `deduct4` varchar(60) DEFAULT NULL,
  `ded_amount4` int(30) DEFAULT NULL,
  `total_ded` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `other_deduction`
--

INSERT INTO `other_deduction` (`KEY`, `trans_id`, `emp_code`, `deduct1`, `ded_amount1`, `deduct2`, `ded_amount2`, `deduct3`, `ded_amount3`, `deduct4`, `ded_amount4`, `total_ded`) VALUES
(1, 'trans5', 'bj55', '', 1, '', 1, '', 0, '', 0, 6),
(2, 'trans7', 'bj55', '', 1, '', 1, '', 0, '', 0, 6),
(3, 'trans8', 'al96', 'oil', 50, 'uniform', 150, '', 0, '', 0, 550),
(4, 'trans9', '', '', 0, '', 0, '', 0, '', 0, 0),
(5, 'trans10', 'cm30', '', 0, '', 0, '', 0, '', 0, 0),
(6, 'trans11', 'rsm7', '', 0, '', 0, '', 0, '', 0, 0),
(7, 'trans12', 'rsm7', '', 0, '', 0, '', 0, '', 0, 0),
(8, 'trans13', 'rsm7', '', 0, '', 0, '', 0, '', 0, 0),
(9, 'trans14', 'rsm7', 'oil', 22, 'uniform', 22, '', 0, '', 0, 145),
(10, 'trans15', 'cw57', 'uniform', 20, '', 0, '', 0, '', 0, 315),
(11, 'trans16', 'al96', 'uniform', 150, '', 0, '', 0, '', 0, 700),
(12, 'trans17', 'al96', 'uniform', 150, '', 0, '', 0, '', 0, 700),
(13, 'trans18', 'bj55', '', 0, '', 0, '', 0, '', 0, 700),
(14, 'trans19', 'al96', '', 0, '', 0, '', 0, '', 0, 0),
(15, 'trans20', 'jt17', '', 0, '', 0, '', 0, '', 0, 200),
(16, 'trans21', 'sp77', '', 0, '', 0, '', 0, '', 0, 0),
(17, 'trans22', 'sh88', '', 0, '', 0, '', 0, '', 0, 1150),
(18, 'trans23', 'js99', '', 0, '', 0, '', 0, '', 0, 0),
(19, 'trans24', 'ww12', '', 0, '', 0, '', 0, '', 0, 0),
(20, 'trans25', 'rd80', 'Test Deduct', 115, '', 0, '', 0, '', 0, 1265);

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `KEY` int(11) NOT NULL,
  `emp_code` varchar(10) NOT NULL,
  `num_days` int(30) DEFAULT NULL,
  `r_wage` int(30) DEFAULT NULL,
  `overtime` int(30) DEFAULT NULL,
  `hol_pay` int(30) DEFAULT NULL,
  `gross_sal` int(30) DEFAULT NULL,
  `cash_ad` int(30) DEFAULT NULL,
  `bread_vale` int(30) DEFAULT NULL,
  `philhealth` int(30) DEFAULT NULL,
  `pag-ibig` int(30) DEFAULT NULL,
  `net_income` int(30) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `dateissued` date NOT NULL,
  `trans_id` varchar(30) NOT NULL DEFAULT '0',
  `user_id` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`KEY`, `emp_code`, `num_days`, `r_wage`, `overtime`, `hol_pay`, `gross_sal`, `cash_ad`, `bread_vale`, `philhealth`, `pag-ibig`, `net_income`, `remarks`, `dateissued`, `trans_id`, `user_id`) VALUES
(1, 'bj55', 5, 1500, 188, 300, 1988, 1, 1, 1, 1, 1982, 'none', '2014-03-03', 'trans5', NULL),
(4, 'al96', 5, 1350, 68, 270, 1688, 200, 50, 50, 50, 1138, 'none', '2014-03-03', 'trans8', NULL),
(6, 'cm30', 5, 1150, 86, 230, 1466, 0, 0, 0, 0, 1466, 'none', '2014-03-04', 'trans10', NULL),
(7, 'rsm7', 5, 1150, 58, 460, 1668, 0, 0, 0, 0, 1668, 'none', '2014-03-04', 'trans11', NULL),
(11, 'cw57', 5, 1150, 58, 460, 1668, 100, 50, 55, 90, 1353, 'none', '2014-03-05', 'trans15', NULL),
(12, 'al96', 4, 1080, 135, 810, 2565, 100, 150, 100, 200, 1865, 'none', '2014-03-10', 'trans16', NULL),
(14, 'bj55', 7, 2100, 113, 1200, 3413, 200, 300, 100, 100, 2713, 'none', '2014-06-28', 'trans18', NULL),
(16, 'jt17', 22, 3630, 248, 495, 4373, 200, 0, 0, 0, 4173, 'none', '2022-02-14', 'trans20', NULL),
(17, 'sp77', 23, 5290, 575, 460, 6325, 0, 0, 0, 0, 6325, 'none', '2022-02-16', 'trans21', NULL),
(18, 'sh88', 37, 8510, 0, 460, 8970, 1150, 0, 0, 0, 7820, 'cleared with adv cash deductions', '2022-02-16', 'trans22', NULL),
(19, 'js99', 19, 5130, 270, 540, 5940, 0, 0, 0, 0, 5940, 'none', '2022-02-16', 'trans23', NULL),
(20, 'ww12', 7, 1071, 230, 153, 1454, 0, 0, 0, 0, 1454, 'This is a demo remarks.', '2022-02-16', 'trans24', NULL),
(21, 'rd80', 24, 3648, 152, 456, 4256, 1150, 0, 0, 0, 2991, 'Cleared with deductions', '2022-02-16', 'trans25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(30) NOT NULL,
  `name` text,
  `username` varchar(60) DEFAULT NULL,
  `pass` varchar(90) DEFAULT NULL,
  `type` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `username`, `pass`, `type`) VALUES
(12, 'Administrator', 'admin', 'cbfdac6008f9cab4083784cbd1874f76618d2a97', 'Administrator'),
(13, 'Staff', 'staff', '6ccb4b7c39a6e77f76ecfa935a855c6c46ad5611', 'Staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autonumber`
--
ALTER TABLE `autonumber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_code`),
  ADD UNIQUE KEY `emp_code` (`emp_code`);

--
-- Indexes for table `employee_workinfo`
--
ALTER TABLE `employee_workinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emp_code_2` (`emp_code`),
  ADD KEY `emp_code` (`emp_code`);

--
-- Indexes for table `other_deduction`
--
ALTER TABLE `other_deduction`
  ADD PRIMARY KEY (`KEY`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`KEY`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `trans_id` (`trans_id`),
  ADD KEY `emp_code` (`emp_code`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autonumber`
--
ALTER TABLE `autonumber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employee_workinfo`
--
ALTER TABLE `employee_workinfo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `other_deduction`
--
ALTER TABLE `other_deduction`
  MODIFY `KEY` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `KEY` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
