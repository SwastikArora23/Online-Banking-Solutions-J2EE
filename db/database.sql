-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.51


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema bankingsystem
--

CREATE DATABASE IF NOT EXISTS bankingsystem;
USE bankingsystem;

--
-- Definition of table `acc_details`
--

DROP TABLE IF EXISTS `acc_details`;
CREATE TABLE `acc_details` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `uname` varchar(45) NOT NULL,
  `acc_no` int(45) NOT NULL,
  `acc_type` varchar(45) NOT NULL,
  `details` varchar(45) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acc_details`
--

/*!40000 ALTER TABLE `acc_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_details` ENABLE KEYS */;


--
-- Definition of table `transfer`
--

DROP TABLE IF EXISTS `transfer`;
CREATE TABLE `transfer` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uname` varchar(45) NOT NULL,
  `acc_no` varchar(45) NOT NULL,
  `dest_acc` varchar(45) NOT NULL,
  `details` varchar(45) NOT NULL,
  `amt` int(10) unsigned NOT NULL,
  `time1` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer`
--

/*!40000 ALTER TABLE `transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer` ENABLE KEYS */;


--
-- Definition of table `tx_details`
--

DROP TABLE IF EXISTS `tx_details`;
CREATE TABLE `tx_details` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uname` varchar(45) NOT NULL,
  `acc_no` varchar(45) NOT NULL,
  `operation` varchar(45) NOT NULL,
  `amt` int(10) unsigned NOT NULL,
  `balance` int(10) unsigned NOT NULL,
  `time1` varchar(45) NOT NULL,
  `isnew` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tx_details`
--

/*!40000 ALTER TABLE `tx_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_details` ENABLE KEYS */;


--
-- Definition of table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE `user_details` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `uname` varchar(45) NOT NULL,
  `upass` varchar(45) NOT NULL,
  `sec_question` varchar(45) NOT NULL,
  `answer` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` (`ID`,`uname`,`upass`,`sec_question`,`answer`,`address`,`email`,`mobile`) VALUES 
 (1,'shahaeo','shahadeo','Your First School Name','shahadeo','pune','shahadeokatore58@gmail.com','1234567890'),
 (2,'shahadeo','shahadeo','Your First School Name','shahadeo','pune','shahadeokatore58@gmail.com','9766750000');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
