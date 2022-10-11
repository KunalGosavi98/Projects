-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2021 at 12:57 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ecertificateblockchain`
--

-- --------------------------------------------------------

--
-- Table structure for table `accept`
--

CREATE TABLE IF NOT EXISTS `accept` (
  `emailid` text,
  `status` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accept`
--

INSERT INTO `accept` (`emailid`, `status`) VALUES
('jayesh@gmail.com', 'Accept Request'),
('jithin@gmail.com', 'Accept Request');

-- --------------------------------------------------------

--
-- Table structure for table `companyregistertbl`
--

CREATE TABLE IF NOT EXISTS `companyregistertbl` (
  `Cusername` text,
  `Cemail` text,
  `Cpassword` text,
  `CMbNo` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companyregistertbl`
--

INSERT INTO `companyregistertbl` (`Cusername`, `Cemail`, `Cpassword`, `CMbNo`) VALUES
('ibm', 'ibm@gmail.com', 'IBM@1234', '8888888888');

-- --------------------------------------------------------

--
-- Table structure for table `registertbl`
--

CREATE TABLE IF NOT EXISTS `registertbl` (
  `Uusername` text,
  `Uemail` text,
  `Upassword` text,
  `UMbNo` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registertbl`
--

INSERT INTO `registertbl` (`Uusername`, `Uemail`, `Upassword`, `UMbNo`) VALUES
('Jayesh', 'jayesh@gmail.com', 'Jay@11', '9876543212'),
('Jithin', 'jithin@gmail.com', 'Jit@11', '9876543212');

-- --------------------------------------------------------

--
-- Table structure for table `tblidproof`
--

CREATE TABLE IF NOT EXISTS `tblidproof` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailid` text,
  `file_path` text,
  `file_data` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tblidproof`
--

INSERT INTO `tblidproof` (`id`, `emailid`, `file_path`, `file_data`) VALUES
(5, 'jayesh@gmail.com', 'K:\\QRCode/Jayesh/ID Proof.png.png', ''),
(6, 'jithin@gmail.com', 'K:\\QRCode/Jithin/ID Proof.png.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblimagemaster`
--

CREATE TABLE IF NOT EXISTS `tblimagemaster` (
  `Email_Id` text,
  `tendata` longblob,
  `FileData` longblob,
  `bedata` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblmastersmartcontracts`
--

CREATE TABLE IF NOT EXISTS `tblmastersmartcontracts` (
  `S_ID` int(11) NOT NULL AUTO_INCREMENT,
  `EmailId` text,
  `Contract_Data` text,
  `StartTime_Info` text,
  `EndTime_Info` text,
  `Current_Date_Info` text,
  `Status_U` text,
  PRIMARY KEY (`S_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tblmastersmartcontracts`
--

INSERT INTO `tblmastersmartcontracts` (`S_ID`, `EmailId`, `Contract_Data`, `StartTime_Info`, `EndTime_Info`, `Current_Date_Info`, `Status_U`) VALUES
(9, 'jayesh@gmail.com', '25#Min', '11:22:31', '11:47:31', '2021-06-07', 'Expiry'),
(10, 'jithin@gmail.com', '25#Min', '15:33:06', '15:58:06', '2021-06-07', 'Expiry');

-- --------------------------------------------------------

--
-- Table structure for table `tblqrupdateprofile`
--

CREATE TABLE IF NOT EXISTS `tblqrupdateprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailid` text,
  `file_path` text,
  `file_data` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tblqrupdateprofile`
--

INSERT INTO `tblqrupdateprofile` (`id`, `emailid`, `file_path`, `file_data`) VALUES
(8, 'jayesh@gmail.com', 'K:\\QRCode/Jayesh/Jayesh.png', 0x89504e470d0a1a0a0000000d49484452000000c8000000c80806000000ad58ae9e000003324944415478daeddd41728330104451ddffd2f609bc439eeee1fdaaec5209063d2fa6049c8fa49f1da740024402440244024402440244024402440244122012201220122012201220122012201220122092009100910091009100910091009100910091048804880488048804880488048804c8b5833aa7e2e7f6e7753e0171410101c40505041040000104104000010410401a81b41ccf53c7ffd4026b3f9f80000208208000020820800002082080000208203b80dc1e33de5ef02dff772b5840000104104000010410400001041040000104907702d90a13104000010410400001041040000104104000010490375fd0b4bf0f0820800002082080000288f3090820ce272080000248c2826959606eb905041040000104104000010410400001041040006904d2f2b8fe96dff7fa034000010410400001041040000104104000010410ddfb421020800002880001448000224000112080342e98a9b1edd47873eb381a104000010410400001041040000104104000010490844d745370daa10102082080000208208000020820800002082080bcf3c171530ba965ac7dfb388d79010104104000010410400001041040000104901d405a1652cb18b97d2c0c08208000020820800002082080000208208000b263ccdb720bedd4424a5bd88000020820800002082080000208208000020820bbc7bcede3e83408530b1510400001448000224000112080000208203b80a43d38aefd16ddb4eb52f56507082080000208208000020820800002082080005233064cdba497b6797203044000010410400001041040000104104000010490fb0bb2e55659af2d000410400001041040000104104000010410400001a4f7816f69b7bea601070410400001041040000104104000010410400001241948cb4b426d56040410400001041040000104104000010410400069bce5b67d93a1cd8d8000020820800002082080000208208000020820ffbc4069af3f98fa42d8fab900010410400001041040000104104000010410402401220122012201220122012201220122012201220910091009100910091009100910091009104980488048804880488048804880488048804880480244024402440244024402440244dad317b9fa8136c3693f330000000049454e44ae426082),
(9, 'jithin@gmail.com', 'K:\\QRCode/Jithin/Jithin.png', 0x89504e470d0a1a0a0000000d49484452000000c8000000c80806000000ad58ae9e000003354944415478daeddd41728330104451ddffd2f609bc439ee9e6fdaaec5209063d2fa6049c8fa49f1da740024402440244024402440244024402440244122012201220122012201220122012201220122092009100910091009100910091009100910091048804880488048804880488048804c8b5833a27e2e7f6e7753e0171410101c40505041040000104104000010410401281a41ccf53c7ffd4024b3f9f80000208208000020820800002082080000208201d406e8f196f2ff894ffdb0a1610400001041040000104104000010410400001e49d405a61020208208000020820800002082080000208208000f2e60bbaedef0302082080000208208000e27c020288f30908208000b261c1a42c30b7dc0202082080000208208000020820800002082080240249795c7fcaef7bfd012080000208208000020820800002082080000288ee7d2108104000014480002240001120800810401217ccd4d8766abcd93a8e0604104000010410400001041040000104104000e918f3a6bfac33fd017153c70908208000020820800002082080000208208000d20d24655c99728b6bf3adb58000020820800002082080000208208000020820fbc680ad63cc6d0fa033e605041040000104104000010410400001041040ba816c1b87a68f495336730202082080000208208000020820800002082080740049873cb5f0a61ea00788000144800022400001041040000104906e20dbc6b953af4bb8bd50a7ae57d4971d2080000208208000020820800002082080000248cc18b0f5b505db367302020820800002082080000208208000020820807403d9f672cf6db7a6366f26040410400001041040000104104000010410400001e45f0bac7593a1cd8a80000208208000020820800002082080000208208940b67daea9eb0508208000020820800002082080000208208000f24e20ad60b70171cb2d20800002082080000208208000020820800002c8e605963e9e9d3a1e9b15010104104000010410400001041040000104906e2012201220122012201220920091009100910091009100910091009100910091048804880488048804880488048804880488244024402440244024402440244024402440244024012201223dd917e6d8de031734b7e70000000049454e44ae426082);

-- --------------------------------------------------------

--
-- Table structure for table `tblsmartrs`
--

CREATE TABLE IF NOT EXISTS `tblsmartrs` (
  `emailId` text,
  `amount` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsmartrs`
--

INSERT INTO `tblsmartrs` (`emailId`, `amount`) VALUES
('jithin@gmail.com', '-45.0');

-- --------------------------------------------------------

--
-- Table structure for table `tblsmart_contracts`
--

CREATE TABLE IF NOT EXISTS `tblsmart_contracts` (
  `Duration_Data` text,
  `Cost_Data` text,
  `Owner_Cost` text,
  `MsgData` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsmart_contracts`
--

INSERT INTO `tblsmart_contracts` (`Duration_Data`, `Cost_Data`, `Owner_Cost`, `MsgData`) VALUES
('30#Min', '0.003', '55', '30 Minutes'),
('25#Min', '0.004', '45', '25 Minutes'),
('20#Min', '0.005', '35', '20 Minutes'),
('15#Min', '0.006', '27', '15 Minutes'),
('10#Min', '0.008', '19', '10 Minutes'),
('5#Min', '0.010', '2', '5 Minutes');

-- --------------------------------------------------------

--
-- Table structure for table `updateprofile`
--

CREATE TABLE IF NOT EXISTS `updateprofile` (
  `emailid` text,
  `firstname` text,
  `middlename` text,
  `lastname` text,
  `address` text,
  `gender` text,
  `mobileno` text NOT NULL,
  `DOB` text NOT NULL,
  `TenEducation` text NOT NULL,
  `tenpercentage` text NOT NULL,
  `tenMarksheet_No` text NOT NULL,
  `tenPassingYear` text NOT NULL,
  `TwelEducation` text NOT NULL,
  `twelpercentage` text NOT NULL,
  `twelMarksheet_No` text NOT NULL,
  `twelPassingYear` text NOT NULL,
  `BEEducation` text NOT NULL,
  `bepercentage` text NOT NULL,
  `beMarksheet_No` text NOT NULL,
  `bePassingYear` text NOT NULL,
  `tenfile` longblob NOT NULL,
  `twelfile` longblob NOT NULL,
  `befile` longblob NOT NULL,
  `Status_Info` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updateprofile`
--

INSERT INTO `updateprofile` (`emailid`, `firstname`, `middlename`, `lastname`, `address`, `gender`, `mobileno`, `DOB`, `TenEducation`, `tenpercentage`, `tenMarksheet_No`, `tenPassingYear`, `TwelEducation`, `twelpercentage`, `twelMarksheet_No`, `twelPassingYear`, `BEEducation`, `bepercentage`, `beMarksheet_No`, `bePassingYear`, `tenfile`, `twelfile`, `befile`, `Status_Info`) VALUES
INSERT INTO `updateprofile` (`emailid`, `firstname`, `middlename`, `lastname`, `address`, `gender`, `mobileno`, `DOB`, `TenEducation`, `tenpercentage`, `tenMarksheet_No`, `tenPassingYear`, `TwelEducation`, `twelpercentage`, `twelMarksheet_No`, `twelPassingYear`, `BEEducation`, `bepercentage`, `beMarksheet_No`, `bePassingYear`, `tenfile`, `twelfile`, `befile`, `Status_Info`) VALUES

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;