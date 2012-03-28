-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 20, 2012 at 08:00 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Project_tracking`
--

-- --------------------------------------------------------

--
-- Table structure for table `Clients`
--

CREATE TABLE IF NOT EXISTS `Clients` (
  `Clientid` int(11) NOT NULL AUTO_INCREMENT,
  `Vcompanyname` varchar(100) NOT NULL,
  `Vname` varchar(50) NOT NULL,
  `Vaddress` varchar(255) NOT NULL,
  `Vcity` varchar(50) NOT NULL,
  `Vstate` varchar(50) NOT NULL,
  `Vphone` varchar(20) NOT NULL,
  `Vmobile` varchar(20) NOT NULL,
  `Vemail` varchar(100) NOT NULL,
  `Vskypeid` varchar(100) NOT NULL,
  `Vgtalkid` varchar(100) NOT NULL,
  `Vyahooid` varchar(100) NOT NULL,
  `Votherid` varchar(100) NOT NULL,
  `Tnote` text NOT NULL,
  PRIMARY KEY (`Clientid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Invoice`
--

CREATE TABLE IF NOT EXISTS `Invoice` (
  `Autoid` int(11) NOT NULL AUTO_INCREMENT,
  `Vinvoice_Id` varchar(20) NOT NULL,
  `Projectid` int(11) NOT NULL,
  `Famount` float(7,2) NOT NULL,
  `Dinvoice_date` datetime NOT NULL,
  `Epayment_status` enum('Open','Close','Partially') NOT NULL,
  `Tnote` text NOT NULL,
  `Dupdated_date` datetime NOT NULL,
  PRIMARY KEY (`Autoid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Invoice_detail`
--

CREATE TABLE IF NOT EXISTS `Invoice_detail` (
  `Detailid` int(11) NOT NULL AUTO_INCREMENT,
  `Autoid` int(11) NOT NULL,
  `Famount` float(8,2) NOT NULL,
  `Dpay_date` datetime NOT NULL,
  `Emethod` enum('Paypal','Wired Transfer','Bank Transfer') NOT NULL,
  PRIMARY KEY (`Detailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Projects`
--

CREATE TABLE IF NOT EXISTS `Projects` (
  `Projectid` int(11) NOT NULL AUTO_INCREMENT,
  `Clientid` int(11) NOT NULL,
  `Vprojectname` varchar(100) NOT NULL,
  `Dstartdate` datetime NOT NULL,
  `Denddate` datetime NOT NULL,
  `Vtechnology` varchar(100) NOT NULL,
  `Etype` enum('Fixed','Dedicated','T&M') NOT NULL,
  `Vnote` text NOT NULL,
  `Vproject_cost` float(8,2) NOT NULL,
  `Vreceived_amt` float(8,2) NOT NULL,
  `Vpending_amt` float(8,2) NOT NULL,
  `Estatus` enum('Initial','Planning','Execution','Close','Onhold') NOT NULL,
  PRIMARY KEY (`Projectid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE IF NOT EXISTS `User` (
  `Userid` int(11) NOT NULL,
  `Vname` varchar(100) NOT NULL,
  `Vemail` varchar(100) NOT NULL,
  `Vpassword` varchar(25) NOT NULL,
  `Estatus` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
