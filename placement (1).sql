-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2023 at 08:59 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `placement`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `number` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `number`) VALUES
(1, 'admin@rguktsklm.ac.in', '123456', '9876544567'),
(2, 'admin@heeltech.in', 'W?${S??d?3?\'\0', '');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hrname` varchar(255) NOT NULL,
  `phoneno` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 2,
  `approve` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `hrname`, `phoneno`, `email`, `password`, `photo`, `website`, `type`, `approve`) VALUES
(1, 'Heel Tech Solutions', 'Nuka Raju', '9090909090', 'official@heeltech.in', 'loke55528j', 'default.jpg', 'https://heeltech.in', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `drives`
--

CREATE TABLE `drives` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `job_role` varchar(255) NOT NULL,
  `ctc` decimal(10,2) NOT NULL,
  `eligibility_percentage` decimal(5,2) NOT NULL,
  `job_description` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `detect` int(11) NOT NULL,
  `approve` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drives`
--

INSERT INTO `drives` (`id`, `company_name`, `job_role`, `ctc`, `eligibility_percentage`, `job_description`, `status`, `detect`, `approve`) VALUES
(1, 'Heel Tech Solutions', 'Web Developer', 4.00, 60.00, 'bbbtbyb bbgb', 'active', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `job_role` varchar(255) DEFAULT NULL,
  `tenth` varchar(255) DEFAULT NULL,
  `inter` varchar(255) DEFAULT NULL,
  `btech` varchar(255) DEFAULT NULL,
  `detect` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `college_id` varchar(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `skills` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`) VALUES
(4, 'heeltech solutions drive', 'news/heeltech solutions drive.png');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `doc` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `description`, `doc`, `role`, `date`) VALUES
(3, 'ui jbjh ', 'jbvjr v efhb eb e ber b', 'notice/ui jbjh .pdf', '2', '2023-07-15'),
(4, 'Internship offer', 'helloo World ', 'notice/Internship offer.pdf', '1', '2023-07-15'),
(5, 'Nuka raju', 'yuvwv wjhvbwjh v ', 'notice/Nuka raju.pdf', '2', '2023-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `collegeid` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `phoneno` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `approve` int(11) NOT NULL DEFAULT 0,
  `skills` text NOT NULL,
  `tenth` varchar(10) NOT NULL,
  `inter` varchar(10) NOT NULL,
  `resume` varchar(200) NOT NULL,
  `lastbtech` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `collegeid`, `branch`, `phoneno`, `email`, `password`, `photo`, `type`, `approve`, `skills`, `tenth`, `inter`, `resume`, `lastbtech`) VALUES
(2, 'Divya', 'hello', 'S180987', 'CSE', '8888787888', 's180366@rguktsklm.ac.in', 'loke5552@LOKE', 'profile/Divya.JPG', 1, 1, 'web development, app development, c language, c++', '10', '9.2', '', '8'),
(4, 'Nuka raju', 'choola', 'S180208', 'MECH', '9515446080', 'lokesh5552555@rguktsklm.ac.in', 'loke5552@LOKE', 'profile/Nuka raju.png', 1, 1, 'galiki tiragadam, aadukovadam, ', '10', '8', '', '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drives`
--
ALTER TABLE `drives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `drives`
--
ALTER TABLE `drives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
