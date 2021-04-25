-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 12, 2013 at 08:55 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `newsalary`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'windscreen', 'adeniji');

-- --------------------------------------------------------

--
-- Table structure for table `admin_outbox`
--

CREATE TABLE IF NOT EXISTS `admin_outbox` (
  `ao_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `receiver` varchar(100) NOT NULL,
  `msg_subject` text NOT NULL,
  `msg_msg` text NOT NULL,
  `sent_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ao_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `register_staff`
--

CREATE TABLE IF NOT EXISTS `register_staff` (
  `staff_id` int(20) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `department` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `years` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `date_registered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE IF NOT EXISTS `salary` (
  `salary_id` int(50) NOT NULL AUTO_INCREMENT,
  `staff_id` int(50) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `department` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `years` varchar(50) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `basic` varchar(50) NOT NULL,
  `meal` varchar(50) NOT NULL,
  `housing` varchar(50) NOT NULL,
  `transport` varchar(50) NOT NULL,
  `entertainment` varchar(50) NOT NULL,
  `long_service` int(11) NOT NULL,
  `tax` varchar(50) NOT NULL,
  `totall` int(60) NOT NULL,
  `date_s` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`salary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
------------------

--
-- Table structure for table `staff_inbox`
--

CREATE TABLE IF NOT EXISTS `staff_inbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` varchar(50) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `receiver` varchar(100) NOT NULL,
  `msg_subject` text NOT NULL,
  `msg_msg` text NOT NULL,
  `received_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- --------------------------------------------------------

--
-- Table structure for table `staff_outbox`
--

CREATE TABLE IF NOT EXISTS `staff_outbox` (
  `so_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(50) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `receiver` varchar(100) NOT NULL,
  `msg_subject` text NOT NULL,
  `msg_msg` text NOT NULL,
  `date_sent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`so_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `staff_outbox`
--

INSERT INTO `staff_outbox` (`so_id`, `staff_id`, `sender`, `receiver`, `msg_subject`, `msg_msg`, `date_sent`) VALUES
(1, 1, '2', 'Adeniji Charles Ayo', 'Hi', 'This is the abstract of the project/business feasibility for the donor.  It is the first thing that the donor will read.  It should be direct, clear and concise.  The content of the summary should include who you are, the scope of your project and cost. Your Executive Summary should be able to arrest the attention of the reviewing officer.  For example, the Executive Summary of NOIC proposal for collaboration with Local Governments in Lagos State (November 2001) is as follows:', '2013-08-12 20:36:17'),
(3, 2, '1', 'Mathew Senami Tosin', 'Hi', 'This is the abstract of the project/business feasibility for the donor.  It is the first thing that the donor will read.  It should be direct, clear and concise.  The content of the summary should include who you are, the scope of your project and cost. Your Executive Summary should be able to arrest the attention of the reviewing officer.  For example, the Executive Summary of NOIC proposal for collaboration with Local Governments in Lagos State (November 2001) is as follows:This is the abstract of the project/business feasibility for the donor.  It is the first thing that the donor will read.  It should be direct, clear and concise.  The content of the summary should include who you are, the scope of your project and cost. Your Executive Summary should be able to arrest the attention of the reviewing officer.  For example, the Executive Summary of NOIC proposal for collaboration with Local Governments in Lagos State (November 2001) is as follows:This is the abstract of the project/business feasibility for the donor.  It is the first thing that the donor will read.  It should be direct, clear and concise.  The content of the summary should include who you are, the scope of your project and cost. Your Executive Summary should be able to arrest the attention of the reviewing officer.  For example, the Executive Summary of NOIC proposal for collaboration with Local Governments in Lagos State (November 2001) is as follows:', '2013-08-12 20:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `variables`
--

CREATE TABLE IF NOT EXISTS `variables` (
  `housing` float NOT NULL,
  `transport` float NOT NULL,
  `tax` float NOT NULL,
  `entertainment` float NOT NULL,
  `long_service` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variables`
--

INSERT INTO `variables` (`housing`, `transport`, `tax`, `entertainment`, `long_service`) VALUES
(0.15, 0.08, 0.09, 0.02, 0.0175);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
