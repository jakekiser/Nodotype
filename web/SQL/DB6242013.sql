-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: 68.178.136.148
-- Generation Time: Jun 24, 2013 at 03:05 PM
-- Server version: 5.0.96
-- PHP Version: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `Digeapolis`
--

-- --------------------------------------------------------

--
-- Table structure for table `DA_Address`
--

DROP TABLE IF EXISTS `DA_Address`;
CREATE TABLE `DA_Address` (
  `AddrId` int(11) NOT NULL,
  `EntityId` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  `PrimeUse` varchar(1) default '0',
  `Addr1` varchar(255) NOT NULL,
  `Addr2` varchar(255) NOT NULL,
  `Addr3` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `PostalCode` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `LongLat` varchar(255) NOT NULL,
  PRIMARY KEY  (`AddrId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DA_Address`
--

INSERT INTO `DA_Address` (`AddrId`, `EntityId`, `Type`, `PrimeUse`, `Addr1`, `Addr2`, `Addr3`, `City`, `State`, `PostalCode`, `Country`, `LongLat`) VALUES(0, 62, 0, '1', '4330 North Shore drive', '', '', 'Mound', 'Minnesota', '55364', 'USA', '');

-- --------------------------------------------------------

--
-- Table structure for table `DA_BasicStats`
--

DROP TABLE IF EXISTS `DA_BasicStats`;
CREATE TABLE `DA_BasicStats` (
  `LogId` int(11) NOT NULL,
  `TennantId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Type` int(11) NOT NULL default '0',
  `CreateDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `Function` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DA_BasicStats`
--

INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 07:05:55', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 07:07:07', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 07:07:41', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 89, 1, '2013-06-15 07:09:10', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 89, 1, '2013-06-15 07:20:03', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 07:27:49', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 07:29:16', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 10:39:51', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 13:14:05', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 13:56:03', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 13:57:04', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 14:09:56', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 14:33:26', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 14:58:21', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 15:31:30', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 18:05:30', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 18:06:18', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 18:07:41', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 18:09:01', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 18:09:52', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 18:10:04', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 18:17:24', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 89, 1, '2013-06-15 18:17:43', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 18:18:07', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 18:21:21', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-15 20:18:02', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-16 04:06:53', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-16 04:38:23', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-16 04:45:13', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-16 04:45:54', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-16 05:33:13', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-16 13:25:14', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-16 13:32:44', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-16 13:40:47', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-16 13:45:53', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-17 04:22:10', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-17 04:22:30', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-17 05:05:23', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-17 05:53:55', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-17 06:12:35', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-17 07:30:18', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-17 07:31:10', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-17 07:40:44', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-17 07:41:52', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-17 07:44:32', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-17 08:00:13', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-17 08:14:44', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-17 08:52:53', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-17 09:20:22', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-17 11:41:53', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-17 11:48:37', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-17 11:49:01', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-18 07:19:18', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-18 07:20:00', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-18 12:28:18', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-18 12:29:07', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-18 14:40:12', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-18 14:40:54', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-19 09:01:34', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-19 09:03:22', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-19 09:36:31', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-19 12:10:32', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-19 13:30:24', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-19 16:06:26', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-20 02:42:49', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-20 02:45:59', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-20 08:16:10', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-20 08:33:45', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-20 08:43:12', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-20 11:31:31', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-20 11:44:23', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-20 11:57:33', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-20 12:05:29', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-20 12:25:32', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-20 14:07:01', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-20 14:07:55', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-20 15:14:05', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-20 15:17:57', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-20 15:32:22', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-21 04:38:50', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-21 06:06:18', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-21 06:06:33', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-21 08:10:02', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-21 08:46:14', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-21 09:43:58', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-21 09:48:42', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-21 09:49:31', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-21 10:03:16', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-21 10:09:50', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-21 10:14:46', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-21 10:14:48', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-21 10:14:50', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-21 11:14:38', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-21 11:16:20', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-21 11:22:16', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-21 11:24:00', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-21 11:24:32', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-21 11:29:32', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-21 11:31:32', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-21 11:32:29', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-21 11:37:12', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-21 11:38:14', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-21 11:45:23', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-21 11:50:26', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-21 11:52:34', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-21 11:54:36', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-21 12:46:07', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-21 13:31:55', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-21 13:47:44', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-21 14:40:31', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-21 15:51:46', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-21 17:34:40', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-21 19:11:42', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-21 22:01:30', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-21 22:01:41', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-21 22:01:45', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-21 22:02:58', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-23 03:32:16', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-23 04:24:00', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-23 05:30:39', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-23 09:35:52', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-23 16:03:59', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 72, 0, '2013-06-23 17:06:51', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-23 17:11:05', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-23 18:44:56', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-24 03:15:51', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-24 06:07:34', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 26, 62, 1, '2013-06-24 06:07:59', 'TENNANTSIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-24 08:34:32', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-24 09:03:22', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-24 09:18:39', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-24 09:27:36', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-24 10:08:37', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-24 10:12:03', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-24 11:00:01', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-24 11:50:47', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-24 12:25:02', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 78, 0, '2013-06-24 12:32:02', 'SIGNIN');
INSERT INTO `DA_BasicStats` (`LogId`, `TennantId`, `UserId`, `Type`, `CreateDate`, `Function`) VALUES(0, 0, 62, 0, '2013-06-24 12:40:20', 'SIGNIN');

-- --------------------------------------------------------

--
-- Table structure for table `DA_ContactNote`
--

DROP TABLE IF EXISTS `DA_ContactNote`;
CREATE TABLE `DA_ContactNote` (
  `Seq` int(11) NOT NULL auto_increment,
  `UserId` int(11) NOT NULL,
  `Source` varchar(255) NOT NULL,
  `Context` varchar(800) NOT NULL,
  `CreateDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`Seq`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `DA_ContactNote`
--


-- --------------------------------------------------------

--
-- Table structure for table `DA_ElemStyles`
--

DROP TABLE IF EXISTS `DA_ElemStyles`;
CREATE TABLE `DA_ElemStyles` (
  `TennantId` int(11) NOT NULL,
  `ElemType` int(11) NOT NULL,
  `BGColor` varchar(50) NOT NULL,
  `TextColor` varchar(50) NOT NULL,
  `BGImageURL` varchar(255) NOT NULL,
  `BGMode` int(11) default NULL,
  `BGpositionLeft` varchar(50) NOT NULL,
  `BGpositionTop` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DA_ElemStyles`
--


-- --------------------------------------------------------

--
-- Table structure for table `DA_EmailAccounts`
--

DROP TABLE IF EXISTS `DA_EmailAccounts`;
CREATE TABLE `DA_EmailAccounts` (
  `Seq` int(11) NOT NULL auto_increment,
  `UserId` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `CreateDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`Seq`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `DA_EmailAccounts`
--

INSERT INTO `DA_EmailAccounts` (`Seq`, `UserId`, `Email`, `CreateDate`) VALUES(55, 78, 'wolffbmn@gmail.com', '2013-05-29 09:48:04');
INSERT INTO `DA_EmailAccounts` (`Seq`, `UserId`, `Email`, `CreateDate`) VALUES(44, 67, 'billbgone@yahoo.com', '2013-04-27 10:17:43');
INSERT INTO `DA_EmailAccounts` (`Seq`, `UserId`, `Email`, `CreateDate`) VALUES(43, 66, 'loring.kaveney@live.com', '2013-04-08 08:45:04');
INSERT INTO `DA_EmailAccounts` (`Seq`, `UserId`, `Email`, `CreateDate`) VALUES(42, 65, 'test@test.com', '2013-04-05 11:10:14');
INSERT INTO `DA_EmailAccounts` (`Seq`, `UserId`, `Email`, `CreateDate`) VALUES(41, 64, 'Loring.kaveney@digiapolis.com', '2013-03-30 04:07:07');
INSERT INTO `DA_EmailAccounts` (`Seq`, `UserId`, `Email`, `CreateDate`) VALUES(39, 62, 'eric.lopez@digiapolis.com', '2013-03-24 18:42:12');
INSERT INTO `DA_EmailAccounts` (`Seq`, `UserId`, `Email`, `CreateDate`) VALUES(40, 63, 'test@test.com', '2013-03-25 16:01:50');
INSERT INTO `DA_EmailAccounts` (`Seq`, `UserId`, `Email`, `CreateDate`) VALUES(46, 69, 'loring.kaveney@yahoo.com', '2013-05-02 11:14:42');
INSERT INTO `DA_EmailAccounts` (`Seq`, `UserId`, `Email`, `CreateDate`) VALUES(49, 72, 'mrlo2pez@yahoo.com', '2013-05-02 12:31:41');
INSERT INTO `DA_EmailAccounts` (`Seq`, `UserId`, `Email`, `CreateDate`) VALUES(48, 71, 'eric@test.com', '2013-05-02 12:15:19');
INSERT INTO `DA_EmailAccounts` (`Seq`, `UserId`, `Email`, `CreateDate`) VALUES(50, 73, 'eric2@test.com', '2013-05-04 03:56:03');
INSERT INTO `DA_EmailAccounts` (`Seq`, `UserId`, `Email`, `CreateDate`) VALUES(51, 74, 'andrew.lopez@ pezigns.com', '2013-05-05 18:46:56');
INSERT INTO `DA_EmailAccounts` (`Seq`, `UserId`, `Email`, `CreateDate`) VALUES(52, 75, 'andrew.Lopez@pezigns.com', '2013-05-05 18:49:46');
INSERT INTO `DA_EmailAccounts` (`Seq`, `UserId`, `Email`, `CreateDate`) VALUES(53, 76, 'ivo.nelson@nextwavehealth.com', '2013-05-10 18:17:21');
INSERT INTO `DA_EmailAccounts` (`Seq`, `UserId`, `Email`, `CreateDate`) VALUES(54, 77, 'Wendy @ team-liftoff.com', '2013-05-12 06:36:20');
INSERT INTO `DA_EmailAccounts` (`Seq`, `UserId`, `Email`, `CreateDate`) VALUES(66, 89, 'ivo@alpha.com', '2013-06-13 15:40:11');
INSERT INTO `DA_EmailAccounts` (`Seq`, `UserId`, `Email`, `CreateDate`) VALUES(65, 88, 'Ivo@Ivo.com', '2013-06-13 15:35:49');
INSERT INTO `DA_EmailAccounts` (`Seq`, `UserId`, `Email`, `CreateDate`) VALUES(64, 87, 'pgriffin@griffinsdesigns.com', '2013-06-12 08:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `DA_Files`
--

DROP TABLE IF EXISTS `DA_Files`;
CREATE TABLE `DA_Files` (
  `TennantId` int(11) NOT NULL,
  `FileId` int(11) NOT NULL auto_increment,
  `RelativePath` varchar(255) NOT NULL,
  `PhysicalPath` varchar(255) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `FileName` varchar(255) NOT NULL,
  `Type` int(11) NOT NULL default '0',
  `FileSize` bigint(20) default NULL,
  PRIMARY KEY  (`FileId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=467 ;

--
-- Dumping data for table `DA_Files`
--

INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 215, '/DZ/4/f/', '', '', 'SmoothScroll.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 216, '/DZ/4/f/', '', '', 'jquery-1.9.1.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 217, '/DZ/4/f/', '', '', 'leviate.parallax.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 218, '/DZ/4/f/', '', '', 'bootstrap.min.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 219, '/DZ/4/f/', '', '', 'leviate.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 178, '/DZ/4/f/', '', '', 'zocial-647.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 174, '/DZ/4/f/', '', '', 'style.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 175, '/DZ/4/f/', '', '', 'stylesheet.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 176, '/DZ/4/f/', '', '', 'bootstrap.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 177, '/DZ/4/f/', '', '', 'ForestAddl-37.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 228, '/DZ/4/f/', '', '', 'jquery.form.min.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 220, '/DZ/4/f/', '', '', 'leviate.plugins.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 221, '/DZ/4/f/', '', '', 'jquery.cycle2.swipe.min.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 222, '/DZ/4/f/', '', '', 'jquery.cycle2.min.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 223, '/DZ/4/f/', '', '', 'jquery.tweet.min.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 224, '/DZ/4/f/', '', '', 'gmap3.min.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 225, '/DZ/4/f/', '', '', 'jquery.fitvids.min.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 226, '/DZ/4/f/', '', '', 'jflickrfeed.min.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 227, '/DZ/4/f/', '', '', 'jquery.isotope.min.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 311, '/DZ/3/f/', '', '', 'People.jpg', 20, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 310, '/DZ/3/f/', '', '', 'MakeABoldMove.jpg', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 309, '/DZ/3/f/', '', '', 'favicon - Copy.ico', 15, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 308, '/DZ/3/f/', '', '', 'favicon.ico', 15, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 378, '/DZ/26/f/', '', '', 'reset.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 376, '/DZ/27/w', '', '', '2013-06-13T10-12-40_1.jpg', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 95, '../DZ/62/f', '', '', 'DAEditing-865.css', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 77, 'JSLibrary/', '', '', 'jquery-1.9.1.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 230, '/DZ/4/f/', '', '', 'jquery.magnific-popup.min.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 375, '/DZ/27/w', '', '', '2013-06-13T10-12-39_0.jpg', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 173, '/DZ/4/f/', '', '', 'zocial.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 229, '/DZ/4/f/', '', '', 'jquery.validate.min.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 78, 'JSLibrary/', '', '', 'jquery-us.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 244, '/DZ/3/f/', '', '', 'Custom.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 275, '/DZ/3/f/', '', '', 'jquery-transit-modified.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 81, 'JSLibrary/', '', '', 'SmoothScroll.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 135, '/DZ/3/f/', '', '', 'SmoothScroll.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 149, '/DZ/3/f/', '', '', 'layerslider.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 279, '/DZ/3/f/', '', '', 'layerslider.transitions.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 274, '/DZ/3/f/', '', '', 'Basic_4222013.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 148, '/DZ/3/f/', '', '', 'jquery-ui-942.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(5, 88, '/DZ/5/w', '', '', 'picture015.jpg', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(5, 89, '/DZ/5/w', '', '', 'BAKALAKA#3.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(5, 90, '/DZ/5/w', '', '', 'BAKALAKA#3.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(5, 91, '/DZ/5/w', '', '', 'bakan (internet).png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(5, 92, '/DZ/5/w', '', '', 'b5.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 136, '/DZ/3/f/', '', '', 'RSSPoll.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 137, '/DZ/3/f/', '', '', 'Basic.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 138, '/DZ/3/f/', '', '', 'GeneralUtilities.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 139, '/DZ/3/f/', '', '', 'jquery-1.9.1.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 140, '/DZ/3/f/', '', '', 'jquery-ui.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 145, '/DZ/3/f/', '', '', 'Form_1232013-670.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 278, '/DZ/3/f/', '', '', 'layerslider.kreaturamedia.jquery.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 277, '/DZ/3/f/', '', '', 'jquery.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 276, '/DZ/3/f/', '', '', 'jquery-easing-1.3.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 273, '/DZ/3/w', '', '', 'DA_BigLogo.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 253, '/DZ/3/w', '', '', 'MarketingBetterWay.gif', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 272, '/DZ/4/w', '', '', 'Plant.gif', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 271, '/DZ/3/f/', '', '', 'P3310050.JPG', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 270, '/DZ/3/f/', '', '', 'P3310048.JPG', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 269, '/DZ/3/f/', '', '', 'P3290046.JPG', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 268, '/DZ/3/f/', '', '', 'P3310049.JPG', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 267, '/DZ/3/f/', '', '', 'P3290043.JPG', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 263, '/DZ/3/f/', '', '', 'P2230041.JPG', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 264, '/DZ/3/f/', '', '', 'P3290042.JPG', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 265, '/DZ/3/f/', '', '', 'P3290044.JPG', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 266, '/DZ/3/f/', '', '', 'P3290045.JPG', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 240, '/DZ/3/f/', '', '', 'reset.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 179, '/DZ/4/f/', '', '', 'style-697.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 180, '/DZ/4/f/', '', '', 'bootstrap-227.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 214, '/DZ/4/f/', '', '', 'stylesheet.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 182, '/DZ/4/f/', '', '', 'bootstrap-609.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 285, '/DZ//f/', '', '', 'Learning1.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 184, '/DZ/4/f/', '', '', 'jquerymagnific-popup.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 207, '/DZ/4/f/', '', '', 'Nexa_Free_Bold-webfont.ttf', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 208, '/DZ/4/f/', '', '', 'Nexa_Free_Bold-webfont.svg', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 209, '/DZ/4/f/', '', '', 'Nexa_Free_Light-webfont.ttf', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 210, '/DZ/4/f/', '', '', 'Nexa_Free_Light-webfont.svg', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 211, '/DZ/4/f/', '', '', 'Nexa_Free_Light-webfont.woff', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 212, '/DZ/4/f/', '', '', 'Nexa_Free_Light-webfont.eot', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(5, 304, '/DZ/5/w', '', '', 'bakalaka modern.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(5, 313, '/DZ/5/f/', '', '', 'bl favicon.ico', 15, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 206, '/DZ/4/f/', '', '', 'Nexa_Free_Bold-webfont.woff', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 205, '/DZ/4/f/', '', '', 'Nexa_Free_Bold-webfont.eot', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 282, '/DZ/3/w', '', '', 'MakeABoldMove.jpg', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(5, 303, '/DZ/5/w', '', '', 'B4.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 286, '/DZ//f/', '', '', 'Learning2.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(12, 297, '/DZ/12/f/', '', '', 'Learning2.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(12, 291, '/DZ/12/f/', '', '', 'Learning!!.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(5, 302, '/DZ/5/w', '', '', 'BAKALAKA LOGO 4 WEB.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(5, 305, '/DZ/5/w', '', '', 'BLKA LOGO WEB.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(5, 306, '/DZ/5/w', '', '', 'bl favicon.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(5, 312, '/DZ/5/f/', '', '', 'bakalaka css.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(71, 314, '/DZ/4/f/', '', '', 'PagePic.gif', 20, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(4, 315, '/DZ/4/f/', '', '', 'PagePic.gif', 20, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(5, 316, '/DZ/5/f/', '', '', 'bakalakaPage.gif', 20, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(5, 317, '/DZ/5/w', '', '', 'bakalakaPage.gif', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 318, '/DZ/3/f/', '', '', 'bakalakaPage.gif', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 319, '/DZ//f/', '', '', 'Custom.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(14, 320, '/DZ/14/f/', '', '', 'IMG_0138.JPG', 20, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 437, '/DZ//f/', '', '', 'OpenSans-Regular-webfont.eot', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(16, 323, '/DZ/16/f/', '', '', 'IMG_0057.JPG', 20, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(16, 324, '/DZ/16/w', '', '', 'IMG_0057.JPG', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 325, '/DZ/26/f/', '', '', 'stock-photo-21318443-doctor-looking-at-digital-tablet.jpg', 20, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 326, '/DZ/26/f/', '', '', 'favicon.ico', 15, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(14, 327, '/DZ/14/f/', '', '', 'BetterWay.gif', 20, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 328, '/DZ/26/f/', '', '', 'ManChildFlying.gif', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 329, '/DZ/26/f/', '', '', 'NWC.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 379, '/DZ/26/f/', '', '', 'BasicOps.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 331, '/DZ/26/f/', '', '', '20130612_094833.jpg', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 332, '/DZ/26/f/', '', '', '20130612_094833.gif', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 333, '/DZ/26/w', '', '', 'Next Wave Connect Logo.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 334, '/DZ/27/f/', '', '', 'Learning2[1].css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 335, '/DZ/27/f/', '', '', 'Learning!![1].css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 336, '/DZ//f/', '', '', 'gumby.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 337, '/DZ/27/f/', '', '', 'gumby.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 338, '/DZ/27/f/', '', '', 'media.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 339, '/DZ/27/f/', '', '', 'style.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 340, '/DZ//f/', '', '', 'grid.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 341, '/DZ/27/f/', '', '', 'grid.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 342, '/DZ/27/f/', '', '', 'jquery.scrollto.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 343, '/DZ/27/f/', '', '', 'jquery.tweet.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 344, '/DZ/27/f/', '', '', 'jquery-1.9.1.min.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 345, '/DZ/27/f/', '', '', 'modernizr.custom.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 346, '/DZ/27/f/', '', '', 'scripts.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 347, '/DZ/27/f/', '', '', 'waypoints.min.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 348, '/DZ//f/', '', '', 'OpenSans-Light-webfont.eot', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 349, '/DZ//f/', '', '', 'OpenSans-Light-webfont.svg', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 350, '/DZ/27/f/', '', '', 'OpenSans-Light-webfont.eot', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 351, '/DZ/27/f/', '', '', 'OpenSans-Light-webfont.svg', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 443, '/DZ/27/f/', '', '', 'OpenSans-Light-webfont.ttf', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 444, '/DZ/27/f/', '', '', 'OpenSans-Light-webfont.woff', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 354, '/DZ/27/f/', '', '', 'OpenSans-Regular-webfont.eot', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 355, '/DZ/27/f/', '', '', 'OpenSans-Regular-webfont.svg', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 445, '/DZ/27/f/', '', '', 'OpenSans-Regular-webfont.ttf', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 358, '/DZ/27/f/', '', '', 'OpenSans-Semibold-webfont.eot', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 359, '/DZ/27/f/', '', '', 'OpenSans-Semibold-webfont.svg', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 446, '/DZ/27/f/', '', '', 'OpenSans-Regular-webfont.woff', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 447, '/DZ/27/f/', '', '', 'OpenSans-Semibold-webfont.ttf', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 362, '/DZ/27/f/', '', '', 'Socialico.eot', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 364, '/DZ/27/f/', '', '', 'Socialico.svg', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 448, '/DZ/27/f/', '', '', 'OpenSans-Semibold-webfont.woff', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 367, '/DZ/26/w', '', '', 'Next-Wave-Connect-Logo.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 368, '/DZ//f/', '', '', 'DA_Twitter.png', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 369, '/DZ//f/', '', '', 'DA_Skills.png', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 370, '/DZ//f/', '', '', '3PezLogo.jpg', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 371, '/DZ//f/', '', '', 'DigeapolisSmallLogoICONWHITE.png', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 372, '/DZ//f/', '', '', 'DigeapolisCoverPhotoFB.gif', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 373, '/DZ//f/', '', '', 'DigeapolisSmallLogoICONWHITE_ST.png', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 374, '/DZ//f/', '', '', 'DigiapolisCoverPhotoFB.gif', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 380, '/DZ/26/f/', '', '', 'Addl.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 381, '/DZ/26/f/', '', '', 'UCNCNight.png', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 382, '/DZ/26/f/', '', '', 'HCMeeting.png', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 383, '/DZ/26/f/', '', '', 'Amb.png', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 384, '/DZ/26/f/', '', '', 'HCBuilding.png', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 385, '/DZ/26/f/', '', '', 'Docz.png', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 386, '/DZ/26/w', '', '', 'Wall.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 387, '/DZ/26/w', '', '', 'Blogs.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 388, '/DZ/26/w', '', '', 'Next-Wave-Connect-Logo.jpg', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 389, '/DZ/27/f/', '', '', '2013-06-13T10-12-39_0.jpg', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 390, '/DZ/27/f/', '', '', '2013-06-13T10-12-40_1.jpg', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 391, '/DZ/27/f/', '', '', '2013-06-13T10-12-40_3.jpg', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 392, '/DZ/27/f/', '', '', '2013-06-13T10-12-40_4.jpg', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 393, '/DZ/27/f/', '', '', '2013-06-13T10-12-40_5.jpg', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 394, '/DZ/27/f/', '', '', '2013-06-13T10-12-40_6.jpg', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 395, '/DZ/27/f/', '', '', '2013-06-13T10-12-40_7.jpg', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 396, '/DZ/27/f/', '', '', '2013-06-13T10-12-40_8.jpg', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 397, '/DZ/27/f/', '', '', 'IMG_0092.JPG', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 398, '/DZ/27/f/', '', '', 'IMG_0277.JPG', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 399, '/DZ/27/f/', '', '', '2013-06-13T10-12-40_2.jpg', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(3, 400, '/DZ/3/f/', '', '', 'DigiPic.gif', 20, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 401, '/DZ/27/f/', '', '', 'down.png', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(16, 402, '/DZ/16/f/', '', '', 'bn_avatar_builtin17.png', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(16, 403, '/DZ/16/f/', '', '', 'bn_avatar_builtin14.png', 12, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 404, '/DZ/27/w', '', '', '2013-06-13T10-12-40_3.jpg', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 405, '/DZ/27/w', '', '', '2013-06-13T10-12-40_4.jpg', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 406, '/DZ/27/w', '', '', '2013-06-13T10-12-40_5.jpg', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 407, '/DZ/27/w', '', '', '2013-06-13T10-12-40_6.jpg', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 408, '/DZ/27/w', '', '', '2013-06-13T10-12-40_7.jpg', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 409, '/DZ/34/f/', '', '', 'style.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 410, '/DZ/34/w', '', '', 'picture.jpg', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 411, '/DZ/34/w', '', '', 'picture2.jpg', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 412, '/DZ/34/w', '', '', '1.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 413, '/DZ/34/w', '', '', '2.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 414, '/DZ/34/w', '', '', '3.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 415, '/DZ/34/w', '', '', '4.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 416, '/DZ/34/w', '', '', '5.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 417, '/DZ/34/w', '', '', '6.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 418, '/DZ/34/w', '', '', '7.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 419, '/DZ/34/w', '', '', '8.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 420, '/DZ/34/w', '', '', '9.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 421, '/DZ/34/w', '', '', 'acronym.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 422, '/DZ/34/w', '', '', 'body-bg.jpg', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 423, '/DZ/34/w', '', '', 'checkbox.gif', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 424, '/DZ/34/w', '', '', 'loading.gif', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 425, '/DZ/34/w', '', '', 'previous-arrow.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 426, '/DZ/34/w', '', '', 'next-arrow.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 427, '/DZ/34/w', '', '', 'tick.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 428, '/DZ/34/w', '', '', 'wire.png', 0, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 429, '/DZ/34/f/', '', '', 'ie.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 430, '/DZ/34/f/', '', '', 'print.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 431, '/DZ/34/f/', '', '', 'screen.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 432, '/DZ/34/f/', '', '', 'forms.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 433, '/DZ/34/f/', '', '', 'grid.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 434, '/DZ/34/f/', '', '', 'reset.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 435, '/DZ/34/f/', '', '', 'typography.css', 10, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(34, 436, '/DZ/34/f/', '', '', 'engine.js', 11, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 438, '/DZ//f/', '', '', 'OpenSans-Semibold-webfont.eot', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 439, '/DZ//f/', '', '', 'Socialico.eot', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 440, '/DZ//f/', '', '', 'OpenSans-Regular-webfont.svg', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 441, '/DZ//f/', '', '', 'OpenSans-Semibold-webfont.svg', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(0, 442, '/DZ//f/', '', '', 'Socialico.svg', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 449, '/DZ/27/f/', '', '', 'Socialico.otf', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 450, '/DZ/27/f/', '', '', 'Socialico.ttf', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(27, 451, '/DZ/27/f/', '', '', 'Socialico.woff', 13, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 452, '/DZ/26/f/', '', '', 'NavControls.png', 16, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 453, '/DZ/26/f/', '', '', '3PezLogo.jpg', 16, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 454, '/DZ/26/f/', '', '', 'DA_Blog.png', 17, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 455, '/DZ/26/f/', '', '', 'WeCanHelpYouGetThereBANNER.jpg', 16, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 456, '/DZ/26/f/', '', '', 'DA_BigLogo.png', 17, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 457, '/DZ/26/f/', '', '', 'People.jpg', 16, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 458, '/DZ/26/f/', '', '', 'DA_Skills.png', 17, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 459, '/DZ/26/f/', '', '', 'DA_ResponsiveMarketing.png', 16, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(26, 460, '/DZ/26/f/', '', '', 'DA_WebDevelopment.png', 16, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(14, 461, '/DZ/14/f/', '', '', 'DA_Facebook.png', 16, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(14, 462, '/DZ/14/f/', '', '', 'DA_Twitter.png', 17, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(14, 463, '/DZ/14/f/', '', '', 'DA_WebDevelopment.png', 17, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(14, 464, '/DZ/14/f/', '', '', 'DA_Blog.png', 16, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(14, 465, '/DZ/14/f/', '', '', 'DA_Skills.png', 17, 0);
INSERT INTO `DA_Files` (`TennantId`, `FileId`, `RelativePath`, `PhysicalPath`, `Description`, `FileName`, `Type`, `FileSize`) VALUES(14, 466, '/DZ/14/f/', '', '', '3PezLogo.jpg', 17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `DA_Headlines`
--

DROP TABLE IF EXISTS `DA_Headlines`;
CREATE TABLE `DA_Headlines` (
  `HeadlineId` int(11) NOT NULL auto_increment,
  `TennantId` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `HeadlineURL` varchar(255) NOT NULL,
  `AuthorURL` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `AuthorImage` varchar(255) NOT NULL,
  `HeadlineImage` varchar(255) NOT NULL,
  `Priority` int(11) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL,
  PRIMARY KEY  (`HeadlineId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `DA_Headlines`
--

INSERT INTO `DA_Headlines` (`HeadlineId`, `TennantId`, `Title`, `Description`, `HeadlineURL`, `AuthorURL`, `Author`, `AuthorImage`, `HeadlineImage`, `Priority`, `CreateDate`, `StartDate`, `EndDate`) VALUES(1, 62, 'Big Time', 'big time influencer', 'http://www.cnn.com', 'http://www.foxnews.com', 'Bubba Tex', '/DZ/14/f/DA_Blog.png', '/DZ/14/f/3PezLogo.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `DA_Nav`
--

DROP TABLE IF EXISTS `DA_Nav`;
CREATE TABLE `DA_Nav` (
  `NavId` int(11) NOT NULL auto_increment,
  `PageId` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `BaseFunction` int(11) NOT NULL,
  `Target` int(11) NOT NULL,
  `URL` varchar(255) NOT NULL,
  `UpdateDate` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  `UserId` int(11) NOT NULL,
  `Active` bit(1) default b'1',
  `OrigNavId` int(11) NOT NULL,
  PRIMARY KEY  (`NavId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=186 ;

--
-- Dumping data for table `DA_Nav`
--

INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(29, 27, ' Segmentation is still key!', 0, 0, '', '2013-04-07 08:24:28', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(30, 28, 'dfgdfgfg', 0, 0, '', '2013-04-07 08:24:28', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(31, 29, 'test', 0, 0, '', '2013-04-07 08:24:28', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(32, 30, '', 0, 0, '', '2013-04-07 08:24:28', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(33, 31, '', 0, 0, '', '2013-04-07 08:24:28', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(34, 32, 'Responsive Marketing', 0, 0, '', '2013-05-28 06:23:12', 62, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(35, 33, 'Web/Mobile Development', 0, 0, '', '2013-06-12 15:08:49', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(36, 34, 'Social Business', 0, 0, '', '2013-06-12 15:08:49', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(37, 35, 'Skills', 0, 0, '', '2013-06-12 15:08:49', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(38, 36, 'About Us', 0, 0, '', '2013-04-09 11:10:28', 62, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(39, 37, 'Eric Lopez', 0, 0, '', '2013-06-12 15:08:49', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(40, 38, '', 0, 0, '', '2013-04-07 08:24:28', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(60, 63, 'Home', 0, 0, '', '2013-06-12 15:08:49', 62, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(42, 40, 'asdasdd', 0, 0, '', '2013-04-07 08:24:28', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(43, 41, 'XPageList', 0, 0, '', '2013-04-07 08:24:28', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(44, 42, 'XPageSort', 0, 0, '', '2013-04-07 08:24:28', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(45, 43, '', 0, 0, '', '2013-04-07 08:24:28', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(46, 44, 'Loring', 0, 0, '', '2013-04-07 08:24:28', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(47, 48, 'dsfsdfggd', 0, 0, '', '2013-04-07 08:24:28', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(48, 51, 'asdsdfs', 0, 0, '', '2013-04-07 08:24:28', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(115, 128, 'Home2', 0, 0, '', '2013-06-12 15:08:49', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(52, 55, '', 0, 0, '', '2013-04-18 09:29:54', 66, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(54, 57, 'My Story', 0, 0, '', '2013-04-10 14:40:02', 66, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(55, 58, 'Services', 0, 0, '', '2013-04-18 09:29:54', 66, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(113, 126, 'Contact Us', 0, 0, '', '2013-06-12 15:08:49', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(58, 61, 'Contact Us', 0, 0, '', '2013-04-11 10:27:35', 66, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(116, 129, 'About Us', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(79, 82, 'Home', 0, 0, '', '0000-00-00 00:00:00', 69, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(122, 135, 'Heading', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(114, 127, 'Footer', 0, 0, '', '2013-06-12 15:08:49', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(109, 122, 'Bakalaka p1', 0, 0, '', '2013-06-21 15:52:45', 72, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(81, 84, 'Who we are', 0, 0, '', '2013-05-13 12:57:51', 71, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(108, 121, 'Footer', 0, 0, '', '0000-00-00 00:00:00', 71, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(107, 120, '', 0, 0, '', '2013-05-13 12:57:51', 71, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(112, 125, '', 0, 0, '', '0000-00-00 00:00:00', 71, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(132, 145, 'zxczxcc', 0, 0, '', '0000-00-00 00:00:00', 62, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(117, 130, 'What We Do', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(131, 144, '', 0, 0, '', '0000-00-00 00:00:00', 62, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(90, 93, 'Get in Touch', 0, 0, '', '2013-05-13 12:57:51', 71, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(118, 131, 'Contact Us', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(99, 102, '2', 0, 0, '', '0000-00-00 00:00:00', 73, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(95, 98, '1', 0, 0, '', '0000-00-00 00:00:00', 73, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(97, 100, '3', 0, 0, '', '0000-00-00 00:00:00', 73, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(102, 115, 'Header', 0, 0, '', '0000-00-00 00:00:00', 73, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(103, 116, 'Slider', 0, 0, '', '2013-05-13 12:57:51', 71, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(134, 147, 'sss', 0, 0, '', '0000-00-00 00:00:00', 62, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(133, 146, 'x12', 0, 0, '', '0000-00-00 00:00:00', 62, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(129, 142, 'contact', 0, 0, '', '0000-00-00 00:00:00', 72, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(130, 143, 'purpose', 0, 0, '', '2013-06-21 09:46:37', 72, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(135, 148, 'sss', 0, 0, '', '0000-00-00 00:00:00', 62, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(136, 149, '', 0, 0, '', '0000-00-00 00:00:00', 62, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(137, 150, 'Home', 0, 0, '', '2013-06-15 13:56:44', 62, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(166, 179, 'Blog', 0, 0, '', '0000-00-00 00:00:00', 62, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(139, 152, 'About Us', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(140, 153, 'What We Do', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(141, 154, 'Contact Information', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(168, 181, 'Blog Items', 0, 0, '', '0000-00-00 00:00:00', 62, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(169, 182, 'Blog Items', 0, 0, '', '0000-00-00 00:00:00', 62, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(167, 180, 'Feed', 0, 0, '', '2013-06-13 15:33:39', 62, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(182, 195, 'About Us', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(147, 160, 'What We Do', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(183, 196, 'About Us', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(149, 162, 'Complete Repair', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(150, 163, 'Complete Repair', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(151, 164, 'About Us', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(152, 165, 'What We Do', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(153, 166, 'Contact Us', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(154, 167, 'Contact Us', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(163, 176, 'Home', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(161, 174, 'Welcome', 0, 0, '', '2013-06-13 15:33:39', 62, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(157, 170, 'fweer', 0, 0, '', '0000-00-00 00:00:00', 62, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(184, 197, 'About Us', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(171, 184, '', 0, 0, '', '2013-06-15 13:56:44', 89, '\0', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(172, 185, 'Pictures', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(173, 186, 'u', 0, 0, '', '0000-00-00 00:00:00', 72, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(174, 187, 'f', 0, 0, '', '0000-00-00 00:00:00', 72, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(177, 190, '', 0, 0, '', '0000-00-00 00:00:00', 72, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(178, 191, 'a', 0, 0, '', '0000-00-00 00:00:00', 72, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(179, 192, 'b', 0, 0, '', '0000-00-00 00:00:00', 72, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(180, 193, 'c', 0, 0, '', '0000-00-00 00:00:00', 72, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(181, 194, 'd', 0, 0, '', '0000-00-00 00:00:00', 72, '', 0);
INSERT INTO `DA_Nav` (`NavId`, `PageId`, `Title`, `BaseFunction`, `Target`, `URL`, `UpdateDate`, `UserId`, `Active`, `OrigNavId`) VALUES(185, 198, 'About Us', 0, 0, '', '0000-00-00 00:00:00', 78, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `DA_Order`
--

DROP TABLE IF EXISTS `DA_Order`;
CREATE TABLE `DA_Order` (
  `OrderId` int(11) NOT NULL auto_increment,
  `EntityId` int(11) NOT NULL,
  `OrderNum` int(11) NOT NULL,
  `Type` int(11) NOT NULL default '0',
  PRIMARY KEY  (`OrderId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2583 ;

--
-- Dumping data for table `DA_Order`
--

INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(106, 12, 3, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(105, 13, 2, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(104, 10, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(103, 14, 0, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(619, 94, 3, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(590, 92, 8, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(829, 123, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(838, 121, 5, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(610, 27, 16, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(609, 29, 15, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(608, 28, 14, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(607, 24, 13, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(606, 23, 12, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(605, 26, 11, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(604, 25, 10, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(603, 30, 9, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(602, 31, 8, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(601, 32, 7, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(600, 33, 6, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(599, 34, 5, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(598, 35, 4, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(597, 36, 3, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(596, 37, 2, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(585, 89, 5, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(595, 75, 1, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(594, 76, 0, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(492, 73, 3, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(442, 70, 1, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(491, 74, 2, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(586, 90, 6, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(579, 7781, 0, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(587, 91, 7, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(66, 8884, 0, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(753, 186, 1, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2188, 181, 4, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2160, 177, 10, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2159, 184, 9, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(742, 183, 4, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(98, 46, 5, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(107, 11, 4, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(108, 46, 5, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(109, 10, 0, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(110, 14, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(111, 13, 2, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(112, 12, 3, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(113, 11, 4, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(114, 46, 5, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(115, 10, 0, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(116, 14, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(117, 13, 2, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(118, 12, 3, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(119, 11, 4, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(120, 46, 5, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(837, 93, 4, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(842, 243, 7, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(836, 125, 3, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(696, 150, 1, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(490, 62, 1, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(489, 61, 0, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1203, 304, 11, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(359, 60, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(352, 53, 8, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(351, 52, 7, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(350, 51, 6, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(835, 84, 2, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2178, 383, 6, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(335, 120, 4, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(834, 116, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(334, 84, 3, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(333, 116, 2, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(332, 93, 1, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(833, 120, 0, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(698, 152, 3, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(699, 153, 4, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(552, 80, 3, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(551, 79, 2, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2012, 173, 3, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2158, 182, 8, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2019, 46, 6, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(621, 96, 5, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(622, 97, 4, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1286, 286, 1, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(841, 242, 6, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(700, 154, 5, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2125, 155, 5, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2173, 380, 3, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2241, 179, 5, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2118, 156, 6, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2571, 161, 4, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(706, 160, 11, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(707, 161, 12, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(708, 162, 13, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(709, 163, 14, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(710, 164, 15, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(711, 165, 16, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(712, 166, 17, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(713, 167, 18, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2110, 376, 2, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2008, 173, 3, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(716, 170, 21, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2157, 174, 7, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(819, 230, 15, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(754, 187, 2, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2450, 435, 7, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2414, 411, 2, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(757, 190, 4, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(758, 191, 5, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(759, 192, 6, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(760, 193, 7, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(761, 194, 8, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(762, 195, 9, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(763, 196, 10, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(764, 197, 1, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(765, 198, 2, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(766, 199, 3, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(767, 200, 4, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(768, 201, 5, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(769, 202, 6, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(770, 203, 7, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(771, 204, 8, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(772, 205, 1, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(773, 206, 2, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(774, 207, 3, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(775, 208, 4, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(776, 209, 5, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(777, 210, 6, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(778, 211, 7, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(779, 212, 8, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(818, 229, 14, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(817, 228, 13, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(816, 218, 12, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(815, 226, 11, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(814, 227, 10, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(813, 225, 9, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(812, 224, 8, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(811, 223, 7, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(810, 222, 6, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(809, 221, 5, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(808, 220, 4, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(807, 217, 3, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(806, 219, 2, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(805, 215, 1, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(804, 216, 0, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(820, 231, 1, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(821, 232, 2, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2410, 190, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(823, 234, 1, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(824, 235, 2, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(825, 236, 3, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(826, 237, 4, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1986, 128, 9, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1985, 127, 8, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1984, 37, 7, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1983, 126, 6, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1982, 35, 5, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(863, 3632, 0, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1981, 33, 4, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1980, 34, 3, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1979, 63, 2, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(879, 245, 1, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(880, 246, 2, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(881, 247, 3, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(882, 248, 4, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(883, 249, 5, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(884, 250, 6, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(885, 251, 7, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(886, 252, 8, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1978, 36, 1, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(916, 255, 1, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(917, 256, 2, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(918, 257, 3, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(919, 258, 4, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(920, 259, 5, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(921, 260, 6, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(922, 261, 7, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(932, 262, 8, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(942, 272, 6, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1977, 32, 0, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1057, 281, 11, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1151, 131, 3, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1150, 130, 2, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1082, 132, 0, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1149, 129, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1067, 285, 1, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1074, 286, 2, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1124, 296, 1, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1086, 129, 0, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1087, 130, 1, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1088, 131, 2, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1254, 313, 1, 15);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1202, 297, 1, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1285, 285, 0, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1201, 291, 0, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1199, 302, 9, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1200, 303, 10, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1284, 319, 3, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1220, 305, 12, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1221, 306, 13, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1243, 312, 1, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1265, 314, 1, 20);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1266, 315, 1, 20);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1267, 316, 1, 20);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1268, 317, 14, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1287, 319, 2, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2582, 466, 4, 17);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2581, 465, 3, 17);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2580, 464, 2, 16);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2579, 463, 2, 17);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2578, 462, 1, 17);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2577, 461, 1, 16);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2576, 161, 4, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2561, 460, 6, 16);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2560, 459, 5, 16);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2559, 458, 3, 17);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2558, 457, 4, 16);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2557, 456, 2, 17);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2570, 185, 3, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2532, 455, 3, 16);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2531, 454, 1, 17);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2530, 453, 2, 16);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2529, 452, 1, 16);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2528, 451, 16, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2527, 450, 15, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2526, 449, 14, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2525, 448, 13, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2524, 447, 12, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2523, 446, 11, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2522, 445, 10, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2521, 444, 9, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2520, 443, 8, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2497, 366, 16, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2496, 365, 15, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2519, 364, 7, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2494, 363, 13, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2518, 362, 6, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2492, 361, 11, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2491, 360, 10, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2517, 359, 5, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2472, 442, 8, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2471, 441, 7, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2456, 194, 5, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2455, 193, 4, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2454, 192, 3, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2453, 191, 2, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2452, 436, 0, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2449, 434, 6, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2448, 433, 5, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2447, 432, 4, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2446, 431, 3, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2445, 430, 2, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2444, 429, 1, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2443, 409, 0, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2431, 428, 19, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2430, 427, 18, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2429, 426, 17, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2428, 425, 16, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2427, 424, 15, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2426, 423, 14, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2425, 422, 13, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2424, 421, 12, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2423, 420, 11, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2422, 419, 10, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2421, 418, 9, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2420, 417, 8, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2419, 416, 7, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2418, 415, 6, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2417, 414, 5, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2416, 413, 4, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2415, 412, 3, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2413, 410, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2409, 122, 3, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2408, 187, 2, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2407, 186, 1, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2404, 188, 3, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2575, 185, 3, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2574, 160, 2, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2405, 187, 4, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2403, 186, 2, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2569, 160, 2, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2298, 408, 7, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2297, 407, 6, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2296, 406, 5, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2295, 405, 4, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2294, 404, 3, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2291, 403, 2, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2290, 402, 1, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2289, 401, 11, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2276, 400, 1, 20);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2288, 399, 10, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2287, 398, 9, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2286, 397, 8, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2285, 396, 7, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2284, 395, 6, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2283, 394, 5, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2282, 393, 4, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2281, 392, 3, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2280, 391, 2, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2279, 390, 1, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2278, 389, 0, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2254, 388, 5, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2253, 184, 5, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2240, 183, 4, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2252, 150, 4, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2251, 179, 3, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2239, 184, 3, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2199, 182, 4, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2194, 182, 4, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2193, 181, 4, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2250, 183, 2, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2249, 180, 1, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2238, 180, 2, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2182, 387, 4, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2181, 386, 3, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2180, 385, 8, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2179, 384, 7, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2248, 174, 0, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2156, 214, 6, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2108, 375, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2155, 176, 5, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2154, 180, 4, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2153, 179, 3, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2237, 174, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2020, 50, 7, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2470, 440, 6, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2177, 382, 5, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1993, 374, 7, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1992, 373, 6, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1991, 372, 5, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1990, 371, 4, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1989, 370, 3, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1988, 369, 2, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1987, 368, 1, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1976, 367, 2, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2172, 329, 2, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2127, 157, 7, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2124, 158, 4, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2117, 155, 5, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2573, 196, 1, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2553, 198, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2572, 176, 0, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2152, 173, 2, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2171, 379, 1, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2098, 167, 9, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2097, 166, 8, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2096, 165, 7, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2095, 164, 6, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2094, 163, 5, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2126, 156, 6, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2119, 157, 7, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2116, 158, 4, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2547, 197, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2516, 358, 4, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2488, 357, 7, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2487, 356, 6, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2515, 355, 3, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2514, 354, 2, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2484, 353, 3, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2483, 352, 2, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2513, 351, 1, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2512, 350, 0, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2480, 442, 7, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2479, 441, 6, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2478, 440, 5, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2477, 439, 4, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2476, 438, 3, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2475, 437, 2, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2474, 349, 1, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2473, 348, 0, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1887, 349, 2, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1886, 348, 1, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1885, 347, 6, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1884, 346, 5, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1883, 345, 4, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1882, 344, 3, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1881, 343, 2, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1880, 342, 1, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1879, 341, 0, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1864, 340, 1, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1975, 334, 4, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1974, 335, 3, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1973, 339, 2, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1855, 336, 4, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2568, 196, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2535, 195, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2093, 154, 4, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2092, 153, 3, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2091, 152, 2, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2090, 162, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2567, 176, 0, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1972, 338, 1, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1971, 337, 0, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2176, 381, 4, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2226, 150179, 0, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2236, 150, 0, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1836, 333, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1835, 332, 3, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1834, 331, 2, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2170, 378, 0, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2151, 175, 1, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1829, 328, 1, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1828, 327, 2, 20);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2150, 178, 0, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1826, 326, 1, 15);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1825, 325, 1, 20);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1814, 149, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1813, 324, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1812, 323, 1, 20);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2469, 439, 5, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2467, 437, 3, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1809, 320, 1, 20);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2468, 438, 4, 13);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1807, 147, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1806, 146, 3, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2402, 143, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2401, 122, 0, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(2406, 143, 0, 1);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1777, 128, 9, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1776, 127, 8, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1775, 126, 7, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1774, 37, 6, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1773, 36, 5, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1772, 35, 4, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1771, 34, 3, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1770, 33, 2, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1769, 32, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1768, 63, 0, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1756, 269, 10, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1755, 270, 9, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1754, 271, 8, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1753, 310, 7, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1752, 318, 6, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1751, 266, 5, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1750, 265, 4, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1749, 264, 3, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1748, 263, 2, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1747, 267, 1, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1746, 268, 0, 12);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1745, 78, 13, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1744, 276, 12, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1743, 277, 11, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1742, 278, 10, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1805, 145, 2, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1783, 142, 2, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1804, 144, 1, 0);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1738, 136, 6, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1737, 279, 5, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1736, 81, 4, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1735, 275, 3, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1734, 77, 2, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1733, 135, 1, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1732, 137, 0, 11);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1803, 244, 5, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1802, 148, 4, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1801, 145, 3, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1800, 274, 2, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1799, 149, 1, 10);
INSERT INTO `DA_Order` (`OrderId`, `EntityId`, `OrderNum`, `Type`) VALUES(1798, 240, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `DA_Pages`
--

DROP TABLE IF EXISTS `DA_Pages`;
CREATE TABLE `DA_Pages` (
  `PageId` int(11) NOT NULL auto_increment,
  `Title` varchar(255) NOT NULL,
  `PageHTML` text NOT NULL,
  `UpdateDate` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  `TennantId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Active` bit(1) default b'1',
  `Type` int(11) NOT NULL default '0',
  `InlineEdit` bit(1) NOT NULL,
  `OrigPageId` int(11) NOT NULL,
  `DisplayMode` int(11) NOT NULL default '0',
  PRIMARY KEY  (`PageId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=199 ;

--
-- Dumping data for table `DA_Pages`
--

INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(32, 'Interactive  Marketing', '&lt;div class="SmallLogo"&gt;&lt;img src="/images/spacer.gif"&gt;&lt;/div&gt;&lt;h1 style="position: relative;" contenteditable="true"&gt;Interactive Marketing&lt;/h1&gt;&lt;h2 style="position: relative;" contenteditable="true"&gt;Overview&lt;/h2&gt;&lt;p style="position: relative;" contenteditable="true"&gt;For many companies, marketing can be a costly proposition that represents a lot of energy but does not deliver a lot of light. From not taking advantage of new methods and techniques, to simply not getting it right.&lt;/p&gt;&lt;p style="position: relative;" contenteditable="true"&gt;Interactive Marketing is a term we use that takes into consideration the many different elements and channels that are available to use. Coupled with key messaging for your business or products you have the beginning of a new level of differentiation from your competitors and have more effective access to your prospects and customers mind-share.&lt;/p&gt;&lt;p style="position: relative;" contenteditable="true"&gt;Let us introduce you to a new service from Digiapolis: "CMO In The Cloudâ€&lt;/p&gt;&lt;h2 style="position: relative;" contenteditable="true"&gt;CMO In The Cloud&lt;/h2&gt;&lt;p style="position: relative;" contenteditable="true"&gt;You are small to medium size company. Your company and products are in the market and doing ok, however, you are spending a lot of money on market activities and possibly personnel that are not driving the results you hoped for. You may be big enough to spend the money on marketing but not big enough to benefit from the best strategies or personnel to execute for you. CMO In The Cloud brings Senior marketing experience to your team at a fraction of the cost of hiring your own CMO (Chief Marketing Officer), marketing executive, or separate agency. We couple the service to desired outcomes and a subscription model that delivers services from the most basic, to the most unique and comprehensive strategies that truly move the needle and drive opportunity and closed business.&lt;/p&gt;&lt;h2 style="position: relative;" contenteditable="true"&gt;Services&lt;/h2&gt;&lt;ul&gt; &lt;li contenteditable="true"&gt;&lt;span style="font-weight: bold;" contenteditable="true"&gt;Market Strategy&lt;/span&gt; â€“ We listen, research, and understand your business to work effectively with you and your teams to develop effective marketing plans that drive results. Nothing intergalactic, rather, straight forward plans with milestones that keep your company engaged with tangible results. We believe in simple designs and maximum results. We focus on hard, tangible leads and awareness that supports a perpetual interest in your organization, products, and services.&lt;/li&gt; &lt;li contenteditable="true"&gt;&lt;span style="font-weight: bold;" contenteditable="true"&gt;SEO &lt;/span&gt;â€“ We help you establish your SEO strategy and work with you to continuously analyze and manage your SEO to drive interest to your sites and increase your search ratings. SEO is not magic but extremely important to ensure you are coming as close to the top of the most important searches. This ensures that people find you. Itâ€™s todayâ€™s best practice.&lt;/li&gt; &lt;li contenteditable="true"&gt;&lt;span style="font-weight: bold;" contenteditable="true"&gt;Social Integrations&lt;/span&gt; â€“ Integrating to popular social sites is important. There are many reasons to integrate and many contexts that your brand must support. Itâ€™s quite simple when you understand why these channels are important, how your messages become broadcast to large groups of people, how SEO is impacted, and finally, how you can step out of the crowd to be heard. &lt;p style="position: relative;" contenteditable="true"&gt;Let us help you define your social strategy, help you implement, and possibly provide ongoing support for your strategies.&lt;/p&gt;&lt;/li&gt; &lt;li contenteditable="true"&gt;&lt;span style="font-weight: bold;" contenteditable="true"&gt;Email Marketing &lt;/span&gt;â€“ With all the changes upon us in social networking, itâ€™s easy to forget a very effective medium to communicate out to. Email marketing continues to be a low cost, high value, direct communication to people you want to reach. Let us help you be more effective by integrating these types of activities into your overall plan while ensuring best practice of your execution.&lt;/li&gt; &lt;li contenteditable="true"&gt;&lt;span style="font-weight: bold;" contenteditable="true"&gt;Marketing Campaigns&lt;/span&gt; â€“ Do you want to rollout a new product or service? Let us help you strategize and get the word out for you. Once the campaign is designed we can even help you run it using your tools or ours.&lt;/li&gt;&lt;/ul&gt;&lt;h2 style="position: relative;" contenteditable="true"&gt;Bottom Line&lt;/h2&gt;&lt;p style="position: relative;" contenteditable="true"&gt;Itâ€™s May 29, 2013, 7:51 am PSTâ€¦ do you know where your marketing dollars are right now and how they are working for you?&lt;/p&gt;', '2013-06-04 17:56:38', 3, 62, '', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(160, 'What We Do', '\r\n&lt;section id="What We Do"&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;div class="twelve columns centered"&gt;\r\n			&lt;h2&gt;What We Do&lt;/h2&gt;\r\n			&lt;div&gt;\r\n				&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;div class="eleven columns centered"&gt;\r\n			&lt;p align="left"&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;We pride ourselves on being able to come up with effective, efficient and practical solutions to any of your home repair needs. If you donâ€™t see your project on this list, contact us and you might be surprised that we may be able to work with you.&lt;/span&gt;&lt;/p&gt;&lt;span style="font-size: 14pt;"&gt;&lt;/span&gt;\r\n			&lt;div&gt;&lt;span style="font-size: 14pt;"&gt;&lt;/span&gt;\r\n				&lt;div&gt;&lt;span style="font-size: 14pt;"&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;span style="font-size: 14pt;"&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;&lt;/span&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;&lt;/span&gt;&lt;/span&gt;\r\n			&lt;p&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;Â·Soffit and Siding Repair and Replacement&lt;/span&gt;&lt;/p&gt;&lt;span style="font-size: 14pt;"&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;&lt;/span&gt;&lt;/span&gt;\r\n			&lt;p&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;Â·Window Repair and Replacement&lt;/span&gt;&lt;/p&gt;&lt;span style="font-size: 14pt;"&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;&lt;/span&gt;&lt;/span&gt;\r\n			&lt;p&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;Â·Door Replacement and Repair&lt;/span&gt;&lt;/p&gt;&lt;span style="font-size: 14pt;"&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;&lt;/span&gt;&lt;/span&gt;\r\n			&lt;p&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;Â·Moderate Plumbing&lt;/span&gt;&lt;/p&gt;&lt;span style="font-size: 14pt;"&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;&lt;/span&gt;&lt;/span&gt;\r\n			&lt;p&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;Â·Moderate Electrical&lt;/span&gt;&lt;/p&gt;&lt;span style="font-size: 14pt;"&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;&lt;/span&gt;&lt;/span&gt;\r\n			&lt;p&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;Â·Deck Construction and Repair&lt;/span&gt;&lt;/p&gt;&lt;span style="font-size: 14pt;"&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;&lt;/span&gt;&lt;/span&gt;\r\n			&lt;p&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;Â·Roofing Repair&lt;/span&gt;&lt;/p&gt;&lt;span style="font-size: 14pt;"&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;&lt;/span&gt;&lt;/span&gt;\r\n			&lt;p&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;Â·Sheetrock and Plaster&lt;/span&gt;&lt;/p&gt;&lt;span style="font-size: 14pt;"&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;&lt;/span&gt;&lt;/span&gt;\r\n			&lt;p&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;Â·Moderate Concrete Work&lt;/span&gt;&lt;/p&gt;&lt;span style="font-size: 14pt;"&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;&lt;/span&gt;&lt;/span&gt;\r\n			&lt;p&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;Â·Kitchen Remodels&lt;/span&gt;&lt;/p&gt;&lt;span style="font-size: 14pt;"&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;&lt;/span&gt;&lt;/span&gt;\r\n			&lt;p&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;Â·Bathroom Remodels&lt;/span&gt;&lt;/p&gt;\r\n			&lt;div&gt;\r\n				&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;', '2013-06-21 11:54:09', 27, 78, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(129, 'About Us', '&lt;span style="font-size: 14pt;"&gt;&lt;span style="font-weight: bold; font-size: 14pt;"&gt;About Us:&lt;/span&gt;&lt;br /&gt;\r\n	&lt;/span&gt;\r\n&lt;p&gt;&lt;span style="font-size: 14pt;"&gt;Complete Repair is a "jack of all tradesâ€ home repair\r\ncompany out of Minneapolis, MN started in 2000.\r\nOwner Pete Wolff started Complete Repair shortly after completing a comprehensive\r\nrestoration of an 1889 Victorian mansion located in Edina, MN. During the restoration Pete realized that his\r\nspecialized skills were very much in need especially on older homes particularly\r\nin the South Minneapolis and Edina area. Complete Repair is certified to handle lead\r\nbased paint found on some older homes.&amp;nbsp; Pete has 40+ years of woodworking experience that\r\nincludes cabinet construction, mass birdhouse manufacturing and collaboration\r\nin the construction of a fully functional two person airplane built in 1974\r\nwhich is still in use today.&lt;/span&gt;&lt;/p&gt;&lt;span style="font-size: 12pt;"&gt;&lt;/span&gt;\r\n&lt;!--\r\nEndFragment\r\n--&gt;\r\n&lt;br /&gt;\r\n\r\n&lt;!--\r\nEndFragment\r\n--&gt;\r\n ', '2013-06-12 09:10:29', 12, 78, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(167, 'Contact Us', '\r\n&lt;section id="contact"&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;div class="twelve columns centered"&gt;\r\n			&lt;h2&gt;Contact. &lt;span style="font-style: italic;"&gt;&lt;/span&gt;&lt;/h2&gt;&lt;/div&gt;&lt;/div&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;div class="eleven columns centered"&gt;\r\n			&lt;p class="subtittle"&gt;We''re currently accepting new client projects.&lt;br /&gt;\r\n				Think we might help? We''d love to hear from you.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;div class="seven columns"&gt;\r\n			&lt;form action="form_sender.php" method="post" name="htmlform"&gt;\r\n				&lt;input type="text" required="" placeholder="YOUR LOVELY NAME" name="first_name" /&gt;\r\n				&lt;input type="email" required="" placeholder="E-MAIL" name="email" /&gt;\r\n				&lt;textarea required="" placeholder="TELL US EVERYTHING" rows="5" cols="1" name="comments"&gt;&lt;/textarea&gt;\r\n				&lt;button class="submit" type="submit" name="send"&gt;Alright&lt;/button&gt;\r\n			&lt;/form&gt;&lt;/div&gt;\r\n		&lt;div class="five columns info"&gt;\r\n			&lt;h4&gt;Where to meet&lt;/h4&gt;&lt;br /&gt;\r\n			\r\n			&lt;p&gt;1000 Bruxelles&lt;/p&gt;\r\n			&lt;p&gt;Avenue Saint Pierre, 82&lt;/p&gt;\r\n			&lt;p&gt;BELGIUM&lt;/p&gt;\r\n			&lt;h4&gt;New business&lt;/h4&gt;&lt;br /&gt;\r\n			\r\n			&lt;p&gt;&lt;a href="#"&gt;stuff@halfcreative.be&lt;/a&gt;&lt;/p&gt;\r\n			&lt;h4&gt;Employement&lt;/h4&gt;&lt;br /&gt;\r\n			\r\n			&lt;p&gt;&lt;a href="#"&gt;needmoney@halfcreative.be&lt;/a&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;', '0000-00-00 00:00:00', 0, 78, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(166, 'Contact Us', '\r\n&lt;section id="whatwedo"&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;div class="twelve columns centered"&gt;\r\n			&lt;h2&gt;What we do. &lt;span style="font-style: italic;"&gt;&lt;/span&gt;&lt;/h2&gt;&lt;/div&gt;&lt;/div&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;div class="eleven columns centered"&gt;\r\n			&lt;p class="subtittle"&gt;See also great stuff on &lt;a href="#"&gt;Behance&lt;/a&gt;.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;!--\r\n		WORKS GRID\r\n		--&gt;\r\n		\r\n		&lt;ul class="og-grid" id="og-grid"&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/2big.png" href="http://www.google.be"&gt;&lt;img alt="img01" src="img/thumbs/1.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/1big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/2.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/3big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/3.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/4big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/4.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/6big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/5.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/7big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/6.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/7big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/7.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/8big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/8.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/9big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/9.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n		&lt;!--\r\n		END WORKS GRID\r\n		--&gt;\r\n		&lt;/div&gt;&lt;/section&gt;', '0000-00-00 00:00:00', 0, 78, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(33, 'Web/Mobile Development', '&lt;div class="SmallLogo"&gt;&lt;img src="/images/spacer.gif"&gt;&lt;/div&gt;&lt;h1 style="position: relative;" contenteditable="true"&gt;Web/Mobile Development&lt;/h1&gt;&lt;h2 style="position: relative;" contenteditable="true"&gt;Overview&lt;/h2&gt;&lt;p style="position: relative;" contenteditable="true"&gt;Digeapolis provides full service web development designed for the needs of small to medium sized organizations. We listen, collaborate, and deliver solutions that fit your budget, your operational needs, and represent scalable functionality that can be easily managed by your company or ours.&lt;/p&gt;&lt;p style="position: relative;" contenteditable="true"&gt;We focus on internet development for all web and mobile devices. Our skills represent everything needed to develop solid solutions that are elegant in design, forward thinking, and simple.&lt;/p&gt;&lt;h3 style="position: relative;" contenteditable="true"&gt;Site Building&lt;/h3&gt;&lt;ul&gt; &lt;li contenteditable="true"&gt;&lt;span style="font-weight: bold;" contenteditable="true"&gt;Product Strategy&lt;/span&gt; â€“ From whole product solutions and designs, to technology strategy and acquisition, we can help you develop intellectual property that is strategic to your organization.&lt;/li&gt; &lt;li contenteditable="true"&gt;&lt;span style="font-weight: bold;" contenteditable="true"&gt;Interactive Design&lt;/span&gt; â€“ We approach all new sites from the perspectives of todayâ€™s users. Our designs display on all devices, including tablets, phones, and any web browser and can be developed on just about any commercially available operating system. &lt;/li&gt; &lt;li contenteditable="true"&gt;&lt;span style="font-weight: bold;" contenteditable="true"&gt;Web Standard&lt;/span&gt; â€“ We follow the latest in "Web Standardsâ€ development for all development.&lt;/li&gt; &lt;li contenteditable="true"&gt;&lt;span style="font-weight: bold;" contenteditable="true"&gt;Professional Development&lt;/span&gt; â€“ We bring the processes and skills required to build solid solutions that are architected to scale and engineered to perform&lt;/li&gt; &lt;li contenteditable="true"&gt;&lt;span style="font-weight: bold;" contenteditable="true"&gt;Mobile&lt;/span&gt; â€“ Based on your requirements, we can build mobile solutions that fit your needs and how your customers need to interact. Our specialties focus on responsive designs, "web appsâ€ based on HTML5, and interactive touch functionality.&lt;/li&gt;&lt;/ul&gt;&lt;h3 style="position: relative;" contenteditable="true"&gt;Custom Development&lt;/h3&gt;&lt;p style="position: relative;" contenteditable="true"&gt;Digiapolis personnel have worked on some of the largest business application developments in the country and have many years of experience building high-end, custom web platforms and architectures that meet the needs of your business, large scale users, and desired functionality.&lt;/p&gt;&lt;p style="position: relative;" contenteditable="true"&gt;&lt;a href="http://www.digiapolis.com/#Skills"&gt;Learn more about our skills Â»&lt;/a&gt;&lt;/p&gt;&lt;h3 style="position: relative;" contenteditable="true"&gt;Bottom Line&lt;/h3&gt;&lt;p style="position: relative;" contenteditable="true"&gt;We combine creativity, discipline, and professionalism to build solutions that have no missing pieces and represent your company as the company you want to be.&lt;/p&gt;&lt;br&gt;', '2013-06-04 17:56:38', 3, 62, '', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(34, 'Social Business', '&lt;div class="SmallLogo"&gt;&lt;img src="/images/spacer.gif"&gt;&lt;/div&gt;&lt;h1 style="position: relative;" contenteditable="true"&gt;Social Business&lt;/h1&gt;&lt;h2 style="position: relative;" contenteditable="true"&gt;Overview&lt;/h2&gt;&lt;p style="position: relative;" contenteditable="true"&gt;Members of Digiapolis have been focused on the concepts of social for the last 10+ years, well before the term was coined. Only in the past couple of years has the term been truly understood as a concept by the masses. With consumer level products such as Facebook, Twitter, LinkedIn, and others, more and more people have come to understand what it is and what the value is.&lt;/p&gt;&lt;p style="position: relative;" contenteditable="true"&gt;Business has found "Socialâ€ to be of great value in the "broadcastingâ€ of communications for their company â€“ many are integrating their blogs and tweeting their ideas and assertions into the "socialsphereâ€. The focus has been outbound communication and interaction benefitting web site SEO, awareness of products and offerings, and hopefully new customers. But is this enough to differentiate your company?&lt;/p&gt;&lt;p style="position: relative;" contenteditable="true"&gt;Digiapolis consultants and developers are experts in social. Not just integrating your messages into standard consumer level tools â€“ but also in building custom, private communities for your company integrated into your web site, customer operations, and just about any external social or operational tool desired. We can help establish you as a leader in your industry with innovative functions for your customers and prospects that help them do their business better and ultimately consider your company strategic to their goals.&lt;/p&gt;&lt;h2 style="position: relative;" contenteditable="true"&gt;Consulting&lt;/h2&gt;&lt;ul&gt; &lt;li contenteditable="true"&gt;&lt;span style="font-weight: bold;" contenteditable="true"&gt;Education&lt;/span&gt; â€“ Let us help you understand what social is, what it can be, and where some innovative companies are taking it.&lt;/li&gt; &lt;li contenteditable="true"&gt;&lt;span style="font-weight: bold;" contenteditable="true"&gt;Audit and Assessment&lt;/span&gt; â€“ We can perform a formal assessment on your current strategy and execution and provide a comparison to the benchmark of other companies that are getting great results.&lt;/li&gt;&lt;/ul&gt;&lt;h2 style="position: relative;" contenteditable="true"&gt;Development&lt;/h2&gt;&lt;ul&gt; &lt;li contenteditable="true"&gt;&lt;span style="font-weight: bold;" contenteditable="true"&gt;Design and Architect&lt;/span&gt; â€“ Let us help design and architect your solution either as an independent design group or as part of your team. Benefit from our experience.&lt;/li&gt; &lt;li contenteditable="true"&gt;&lt;span style="font-weight: bold;" contenteditable="true"&gt;Development&lt;/span&gt; â€“ We have been developing high-end enterprise software for more than 30 years with the last 10+ years focused on commercial grade â€Socialâ€ solutions that have proven that our ideas work.&lt;/li&gt; &lt;li contenteditable="true"&gt;&lt;span style="font-weight: bold;" contenteditable="true"&gt;Deployment&lt;/span&gt; â€“ Proper roll out and community management is key to your success and ensuring adoption of your new ideas.&lt;/li&gt;&lt;/ul&gt;&lt;h2 style="position: relative;" contenteditable="true"&gt;Bottom Line&lt;/h2&gt;&lt;p style="position: relative;" contenteditable="true"&gt;Ask yourself some basic questions. Do I want more customers? Am I compelling my customers to consider my company strategic to their organization? Am I truly helping my customers gain ground and introducing them to others like them that extends their value in working with my company? If you answer "no" to any of these questions, we need to talk.&lt;/p&gt;&lt;br&gt;', '2013-06-04 17:56:38', 3, 62, '', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(35, 'Skills', '\r\n&lt;div class="SmallLogo"&gt;&lt;img src="/images/spacer.gif" /&gt;&lt;/div&gt;\r\n&lt;h1 style="position: relative;"&gt;Skills&lt;/h1&gt;\r\n&lt;p style="position: relative;" class="cke_focus"&gt;how to talk about it is one thing, knowing how to do it and do it right is another. Digiapolis brings incredible real world experience to your efforts and goals.&lt;/p&gt;\r\n&lt;div class="C1"&gt; \r\n	&lt;h2 style="position: relative;"&gt;Client Side&lt;/h2&gt; \r\n	&lt;ul&gt; \r\n		&lt;li&gt;HTML5&lt;/li&gt; \r\n		&lt;li&gt;CSS3&lt;/li&gt; \r\n		&lt;li&gt;OOCSS&lt;/li&gt; \r\n		&lt;li&gt;Javascript&lt;/li&gt; \r\n		&lt;li&gt;Ajax&lt;/li&gt; \r\n		&lt;li&gt;WordPress&lt;/li&gt; \r\n		&lt;li&gt;Drupal&lt;/li&gt; \r\n	&lt;/ul&gt; \r\n	&lt;h2 style="position: relative;"&gt;Server Side&lt;/h2&gt; \r\n	&lt;ul&gt; \r\n		&lt;li&gt;PHP&lt;/li&gt; \r\n		&lt;li&gt;.Net&lt;/li&gt; \r\n		&lt;li&gt;C#&lt;/li&gt; \r\n		&lt;li&gt;JAVA&lt;/li&gt; \r\n		&lt;li&gt;C&lt;/li&gt; \r\n		&lt;li&gt;ASP - yes, we still do this :-)&lt;/li&gt; \r\n		&lt;li&gt;IIS&lt;/li&gt; \r\n		&lt;li&gt;Apache&lt;/li&gt; \r\n		&lt;li&gt;Server Side Agents/Scripts&lt;/li&gt; \r\n		&lt;li&gt;SMTP&lt;/li&gt; \r\n		&lt;li&gt;Google Analytics&lt;/li&gt; \r\n	&lt;/ul&gt; \r\n	&lt;h2 style="position: relative;"&gt;eCommerce&lt;/h2&gt; \r\n	&lt;ul&gt; \r\n		&lt;li&gt;Authorize.net&lt;/li&gt; \r\n		&lt;li&gt;Custom&lt;/li&gt; \r\n	&lt;/ul&gt; \r\n	&lt;h2 style="position: relative;"&gt;Database&lt;/h2&gt; \r\n	&lt;ul&gt; \r\n		&lt;li&gt;SQL Server&lt;/li&gt; \r\n		&lt;li&gt;MySQL&lt;/li&gt; \r\n		&lt;li&gt;Stored Procedures/Functions&lt;/li&gt; \r\n	&lt;/ul&gt; \r\n	&lt;h2 style="position: relative;"&gt;Frameworks &amp;amp; Utilities&lt;/h2&gt; \r\n	&lt;ul&gt; \r\n		&lt;li&gt;scriptaculo.us&lt;/li&gt; \r\n		&lt;li&gt;JQuery&lt;/li&gt; \r\n		&lt;li&gt;JQuery Mobile&lt;/li&gt; \r\n		&lt;li&gt;Sencha Mobile (Touch)&lt;/li&gt; \r\n		&lt;li&gt;ImageMagik&lt;/li&gt; \r\n		&lt;li&gt;InnovaStudio&lt;/li&gt; \r\n	&lt;/ul&gt;&lt;/div&gt;\r\n&lt;div class="C2"&gt; \r\n	&lt;h2 style="position: relative;"&gt;Design&lt;/h2&gt; \r\n	&lt;ul&gt; \r\n		&lt;li&gt;Responsive Design &amp;amp; Development&lt;/li&gt; \r\n		&lt;li&gt;Web design&lt;/li&gt; \r\n		&lt;li&gt;Mobile design&lt;/li&gt; \r\n	&lt;/ul&gt; \r\n	&lt;h2 style="position: relative;"&gt;Graphics&lt;/h2&gt; \r\n	&lt;ul&gt; \r\n		&lt;li&gt;Photoshop&lt;/li&gt; \r\n		&lt;li&gt;Illustrator&lt;/li&gt; \r\n		&lt;li&gt;Flash&lt;/li&gt; \r\n	&lt;/ul&gt; \r\n	&lt;h2 style="position: relative;"&gt;Cloud&lt;/h2&gt; \r\n	&lt;ul&gt; \r\n		&lt;li&gt;SaaS - deployments&lt;/li&gt; \r\n		&lt;li&gt;Multi-tenant architectures&lt;/li&gt; \r\n		&lt;li&gt;High-volume user systems&lt;/li&gt; \r\n		&lt;li&gt;Hosting technology (domains, subs, IP, Etc)&lt;/li&gt; \r\n		&lt;li&gt;Acquisition&lt;/li&gt; \r\n	&lt;/ul&gt;&lt;/div&gt;', '2013-06-04 17:56:38', 3, 62, '', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(36, 'About Us', '&lt;div class="SmallLogo"&gt;&lt;img src="/images/spacer.gif"&gt;&lt;/div&gt;&lt;h1 style="position: relative;" contenteditable="true"&gt;About Us&lt;/h1&gt;&lt;p style="position: relative;" contenteditable="true"&gt;Digiapolis is an interactive web development and marketing company focused on delivering opportunities to your business by bringing bold marketing ideas, an effective use of technology, and a passion for execution.&lt;/p&gt;&lt;p style="position: relative;" contenteditable="true"&gt;We deliver our innovations to your company with services such as our new "CMO In the cloudâ€ product that helps you improve your image, increase your awareness, and ultimately increase your market share. &lt;a href="http://www.digiapolis.com/?p=Home#ResponsiveMarketing"&gt;Learn more Â»&lt;/a&gt;&lt;/p&gt;&lt;p style="position: relative;" contenteditable="true"&gt;Need some help with your product or IP strategy? Considering integrating a social component into your site? Digiapolis has deep roots spanning over 10 years visioning and developing high-end, commercial grade, successful collaboration experiences for some very large organizations. &lt;a href="http://www.digiapolis.com/?p=Home#Skills"&gt;Check out our skillsÂ»&lt;/a&gt;&lt;/p&gt;&lt;h2 style="position: relative;" contenteditable="true"&gt;Innovative Services&lt;/h2&gt;&lt;ul&gt; &lt;li contenteditable="true"&gt;&lt;span style="font-weight: bold;" contenteditable="true"&gt;CMO In the cloud&lt;/span&gt; â€“ Delivering marketing results that return value and drive opportunity is what this service is all about. Let us show you how CMO In the Cloud can deliver business results that make sense.&lt;/li&gt; &lt;li contenteditable="true"&gt;&lt;span style="font-weight: bold;" contenteditable="true"&gt;Interactive Web/Mobile Development&lt;/span&gt; â€“ We can perform a formal assessment on your current strategy and execution and provide a comparison to the benchmark of other companies that are getting great results.&lt;/li&gt;&lt;/ul&gt;&lt;h2 style="position: relative;" contenteditable="true"&gt;Leadership&lt;/h2&gt;&lt;ul&gt; &lt;li contenteditable="true"&gt;&lt;a href="http://www.digiapolis.com/?p=About" contenteditable="true"&gt;&lt;span style="font-weight: bold;" contenteditable="true"&gt;Eric Lopez&lt;/span&gt; â€“ CEO &amp;amp; Founder&lt;/a&gt;&lt;/li&gt; &lt;li contenteditable="true"&gt;&lt;a href="http://www.digiapolis.com/?p=About%20Us#" contenteditable="true"&gt;&lt;span style="font-weight: bold;" contenteditable="true"&gt;Bill Geddy&lt;/span&gt; â€“ Chief Sales Officer&lt;/a&gt;&lt;/li&gt;&lt;/ul&gt;', '2013-06-04 17:56:38', 3, 62, '', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(37, 'Eric Lopez', '&lt;div class="SmallLogo"&gt;&lt;img src="/images/spacer.gif"&gt;&lt;/div&gt;&lt;h1 style="position: relative;" contenteditable="true"&gt;About Me&lt;/h1&gt;&lt;img class="MyPic" src="http://www.digiapolis.com/images/me.jpeg"&gt;&lt;div class="AboutMe"&gt; &lt;h3 style="position: relative;" contenteditable="true"&gt;Eric Lopez&lt;/h3&gt; &lt;h3 style="position: relative;" contenteditable="true"&gt;CEO, Founder&lt;/h3&gt; &lt;p style="position: relative;" contenteditable="true"&gt;4330 North Shore Drive&lt;/p&gt; &lt;p style="position: relative;" contenteditable="true"&gt;Minneapolis, Minnesota 55364&lt;/p&gt;&lt;/div&gt;&lt;p style="position: relative;" contenteditable="true"&gt;I bring more than 30 years of experience managing, developing and marketing high-end enterprise class software solutions in the ERP, Business Intelligence, CRM, Cloud, Social and Collaboration areas. My experience includes the development of solutions as well as the development and management of people, including budgeting, planning, strategic visioning, analyst relations, and successfully working with internal and external teams.&lt;/p&gt;&lt;p style="position: relative;" contenteditable="true"&gt;In addition to my ERP, and early pioneering in Business Intelligence, I am also a proven entrepreneur with early SaaS/Web 2.0, I have developed a strong track record of visioning and developing high-end collaboration/community sites for organizations such as the Mayo Clinic, Geek Squad, Microsoft, Lawson Software, and Cerner Healthcare. I am the founder and was President and key engineer/architect for DigitalConcourse.com; a commercial, web 2.0, digital community platform that focuses on private customer based digital communities that drive affinity and marketing opportunities for organizations. DigitalConcourse.com was sold to Velocity Technology Solutions in 2008.&lt;/p&gt;&lt;p style="position: relative;" contenteditable="true"&gt;I focus on bringing fresh, innovative ideas, sleeves up execution experience, and a positive attitude to the teams I manage and participate in.&lt;/p&gt;', '2013-06-04 17:56:38', 3, 62, '', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(55, 'Sue Page Design', '\r\n&lt;div&gt;Sue Page Design will help you with any creative challenges you may have decorating your home or business outside, inside, and on the table for special occasions.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;div align="center"&gt;\r\n		&lt;h2&gt;&lt;span style="text-decoration: underline;"&gt;Outside ~ Inside ~ On the Table &lt;/span&gt;&lt;/h2&gt;&lt;/div&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;table style="border-collapse:collapse;width:100%;"&gt;\r\n		&lt;tbody&gt;\r\n			&lt;tr&gt;\r\n				&lt;td align="left"&gt;&lt;img width="312" height="253" alt="" title="" src="http://www.digiapolis.com/Editor/assets/Sue%20Page%20Design%20Outside.jpg" style="margin: 10px; border: 7px double rgb(134, 216, 0); padding: 10px;" /&gt;&lt;/td&gt;\r\n				&lt;td align="center"&gt;&lt;img width="203" height="254" style="border: 7px double rgb(134, 216, 0); margin: 10px; padding: 10px;" alt="" title="" src="http://www.digiapolis.com/Editor/assets/Sue%20Page%20Design%20Outside%2003.jpg" /&gt;&lt;/td&gt;\r\n				&lt;td align="center"&gt;&lt;img width="292" height="251" style="border: 7px double rgb(134, 216, 0); padding: 10px; margin: 10px;" src="http://www.digiapolis.com/Editor/assets/Sue%20Page%20Design%20Outside%2001.jpg" title="" alt="" /&gt;&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td align="left"&gt;&lt;img width="315" height="291" src="/Editor/assets/Sue%20Page%20Design%20Inside.jpg" title="" alt="" style="margin: 10px; border: 7px double rgb(134, 216, 0); padding: 10px;" /&gt;&lt;br /&gt;\r\n					&lt;/td&gt;\r\n				&lt;td align="center"&gt;&lt;img width="262" height="322" style="border-width: 7px; border-style: double; border-color: rgb(134, 216, 0); margin: 10px;" alt="" title="" src="/Editor/assets/Sue%20Page%20Design%20Inside%2005.jpg" /&gt;&lt;br /&gt;\r\n					&lt;/td&gt;\r\n				&lt;td align="center"&gt;&lt;img width="262" height="322" src="http://www.digiapolis.com/Editor/assets/Sue%20Page%20Design%20Inside%2004.jpg" title="" alt="" style="border-width: 7px; border-style: double; border-color: rgb(134, 216, 0); margin: 10px;" /&gt;&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td align="center"&gt;&lt;img src="http://www.digiapolis.com/Editor/assets/Sue%20Page%20Design%20On%20the%20Table%2003.jpg" title="" alt="" style="border: 7px double rgb(134, 216, 0); padding: 10px; margin: 10px; width: 250px; height: 186px;" /&gt;&lt;/td&gt;\r\n				&lt;td align="center"&gt;&lt;img src="http://www.digiapolis.com/Editor/assets/Sue%20Page%20Design%20On%20the%20Table%2002.jpg" title="" alt="" style="border: 7px double rgb(134, 216, 0); padding: 10px; margin: 10px; width: 250px; height: 186px;" /&gt;&lt;br /&gt;\r\n					&lt;/td&gt;\r\n				&lt;td align="center"&gt;&lt;img style="border: 7px double rgb(134, 216, 0); margin: 10px; padding: 10px; width: 250px; height: 186px;" alt="" title="" src="/Editor/assets/Sue%20Page%20Design%20On%20the%20Table%2004.jpg" /&gt;&lt;br /&gt;\r\n					&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n		&lt;/tbody&gt;\r\n	&lt;/table&gt;&lt;br /&gt;\r\n	&lt;/div&gt;&lt;br /&gt;\r\n\r\n&lt;div&gt;\r\n	&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;\r\n&lt;ol&gt;\r\n&lt;/ol&gt;', '2013-04-13 09:03:16', 66, 66, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(57, 'About Sue', '\r\n&lt;h1&gt;&lt;/h1&gt;\r\n&lt;div&gt;For many years Sue Page have been surrounded by creative people that have inspired her to express her passion for color, fabrics, art, and furniture.&amp;nbsp; Creating fun parties for birthdays, baby showers, holidays, and \r\nprofessional company gatherings with unique themes fulled with style.&lt;/div&gt;\r\n&lt;div&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;Once the vision is clear on what needs to be accomplished, there is a plan put in place with open communication to make sure everyone is happy with the process of change.&lt;/div&gt;\r\n&lt;div&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;Sue Page Design can help and make people happy with ideas and a plan for action.\r\n	&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;', '2013-04-13 09:03:16', 66, 66, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(58, 'Services', 'Are you looking for:\r\n&lt;div&gt;\r\n	&lt;ul&gt;\r\n		&lt;li&gt;Outside landscaping? &lt;/li&gt;\r\n		&lt;li&gt;Outside decorating for a gathering or holiday?&lt;br /&gt;\r\n			&lt;/li&gt;\r\n		&lt;li&gt;Inside design?&lt;br /&gt;\r\n			&lt;/li&gt;\r\n		&lt;li&gt;Inside decorating for a gathering or holiday? &lt;br /&gt;\r\n			&lt;/li&gt;\r\n		&lt;li&gt;Or just need help with party ideas to create a unique experience?&lt;br /&gt;\r\n			&lt;/li&gt;\r\n	&lt;/ul&gt;&lt;br /&gt;\r\n	\r\n	&lt;div&gt;Please go to the Contact Sue tab to schedule an evaluation to create a successful&amp;nbsp; experience that everyone will love.&lt;/div&gt;\r\n	&lt;div&gt;&amp;nbsp;&lt;br /&gt;\r\n		\r\n		&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '2013-04-13 09:03:16', 66, 66, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(61, 'Contact Us', '\r\n&lt;div&gt;Susan Page Designs&lt;/div&gt;\r\n&lt;div&gt;12823 Hideaway Lane&lt;/div&gt;\r\n&lt;div&gt;San Diego, CA&amp;nbsp; 92131&lt;/div&gt;\r\n&lt;div&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;Please inform us of your contact information:&lt;/div&gt;\r\n&lt;div&gt;Name:&lt;/div&gt;\r\n&lt;div&gt;Email:&lt;/div&gt;\r\n&lt;div&gt;Phone:&lt;/div&gt;\r\n&lt;div&gt;Purpose for us contacting you:&amp;nbsp; &lt;br /&gt;\r\n	\r\n	&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;\r\n&lt;div&gt;&amp;nbsp;\r\n	&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;', '2013-04-13 09:03:16', 66, 66, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(63, 'Home', '&lt;div class="BillBoard"&gt;&lt;img alt="" title="" src="/DZ/3/w/DA_BigLogo.png" /&gt;\r\n	&lt;div id="BigLogox"&gt;\r\n		&lt;div id="SocialLinks"&gt;\r\n			&lt;div id="divTwitter"&gt;&lt;a target="_blank" href="http://www.twitter.com/Digiapolis" title="Visit us on Twitter"&gt;&lt;img src="/images/DA_Twitter.png" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n			&lt;div id="divFaceBook"&gt;&lt;a target="_blank" href="http://www.facebook.com/Digiapolis" title="Visit us on FaceBook"&gt;&lt;img src="/images/DA_Facebook.png" /&gt;&lt;/a&gt;&lt;/div&gt;&lt;br class="ClearFloat" /&gt;\r\n			&lt;/div&gt;&lt;br class="ClearFloat" /&gt;\r\n		&lt;/div&gt;&lt;/div&gt;\r\n&lt;div id="WhatWeDo"&gt;\r\n	&lt;p&gt;Digiapolis is an interactive marketing and web development company focused on delivering opportunities to your business bringing bold marketing ideas, an effective use of technology, and a passion for execution.&lt;/p&gt;&lt;/div&gt;\r\n&lt;div class="NavPanes"&gt;\r\n	&lt;div class="BasicTiles"&gt;&lt;a href="#xp_32" class="StdScrollAnchor"&gt;\r\n			&lt;div class="ServiceTile STOrange STResponsiveMarketing"&gt;\r\n				&lt;div class="ServiceImage"&gt;&lt;img src="http://www.digiapolis.com/images/DA_ResponsiveMarketing.png" /&gt;&lt;/div&gt;\r\n				&lt;div class="ServiceText"&gt;Interactive Marketing&lt;/div&gt;&lt;/div&gt;&lt;/a&gt;&lt;a href="#xp_33" class="StdScrollAnchor"&gt;\r\n			&lt;div class="ServiceTile STBlue STWebDevelopment"&gt;\r\n				&lt;div class="ServiceImage"&gt;&lt;img src="http://www.digiapolis.com/images/DA_WebDevelopment.png" /&gt;&lt;/div&gt;\r\n				&lt;div class="ServiceText"&gt;Web/Mobile Development&lt;/div&gt;&lt;/div&gt;&lt;/a&gt;&lt;a href="#xp_34" class="StdScrollAnchor"&gt;\r\n			&lt;div class="ServiceTile STGreen STBusinessSocial"&gt;\r\n				&lt;div class="ServiceImage"&gt;&lt;img src="http://www.digiapolis.com/images/DA_BusinessSocial.png" /&gt;&lt;/div&gt;\r\n				&lt;div class="ServiceText"&gt;Social Business&lt;/div&gt;&lt;/div&gt;&lt;/a&gt;&lt;a class="StdScrollAnchor" href="#xp_35"&gt;\r\n			&lt;div class="ServiceTile STBlue STSkills"&gt;\r\n				&lt;div class="ServiceImage"&gt;&lt;img src="http://www.digiapolis.com/images/DA_Skills.png" /&gt;&lt;/div&gt;\r\n				&lt;div class="ServiceText"&gt;Skills&lt;/div&gt;&lt;/div&gt;&lt;/a&gt;&lt;a title="Learn more about us" class="StdScrollAnchor Peeps" href="http://www.digiapolis.com/?p=About%20Us"&gt;\r\n			&lt;div class="ServiceTile STPeople"&gt;&lt;img src="http://www.digiapolis.com/images/MarketBold.jpg" /&gt;&lt;/div&gt;&lt;/a&gt;&lt;br class="ClearFloatManual" /&gt;\r\n		&lt;/div&gt;\r\n	&lt;div id="RSSTileContainer"&gt;\r\n		&lt;div id="RSSTile"&gt;\r\n			&lt;h3&gt;@Digiapolis - tweet. tweet.&lt;/h3&gt;\r\n			&lt;div id="RSSPoll"&gt;[[OX.RSS.http://feeds.feedburner.com/twitter/digiapolis]]&lt;/div&gt;&lt;br class="ClearFloat" /&gt;\r\n			&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '2013-06-05 09:51:30', 3, 62, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(128, 'Home2', ' &lt;div id="layerslider-container-fw"&gt; &lt;div id="layerslider" style="width: 100%; height: 333px; margin: 0px auto; "&gt; &lt;div class="ls-layer" style="slidedirection: right; transition2d: 24,25,27,28; "&gt;&lt;img src="images/WeCanHelpYouGetThereBANNER.jpg" class="ls-bg" alt="Digiapolis - We can help you get there"&gt; &lt;h5 class="ls-s-1 text" style=" top:50%; left: 40%; slidedirection : top; slideoutdirection : fade; durationout : 750; easingin : easeOutQuint; delayin : 300; scalein : .8; scaleout : .8; showuntil : 4000;"&gt; &lt;div&gt; &lt;div&gt;We can help you get there&lt;/div&gt;&lt;/div&gt;&lt;/h5&gt;&lt;/div&gt; &lt;div class="ls-layer" style="slidedirection: right; transition2d: 110,111,112,113; "&gt;&lt;img src="images/HillOfBeans.gif" class="ls-bg" alt="Digiapolis - Is your marketing worth a Hill of Beans"&gt; &lt;h5 class="ls-s-1 text" style=" top:70%; left: 50%; slidedirection : right; slideoutdirection : fade; durationout : 750; easingin : easeOutQuint; delayin : 300; scalein : .8; scaleout : .8; showuntil : 4000;"&gt; &lt;div&gt; &lt;div&gt;Your marketing can do more&lt;/div&gt;&lt;/div&gt;&lt;/h5&gt;&lt;/div&gt; &lt;div class="ls-layer" style="slidedirection: right; transition2d: 92,93,105; "&gt;&lt;img src="images/MarketingBetterWay.gif" class="ls-bg" alt="Digiapolis - Marketing. There is a better way."&gt; &lt;h5 class="ls-s-1 text" style=" top:30%; left: 30%; slidedirection : left; slideoutdirection : fade; durationout : 750; easingin : easeOutQuint; delayin : 300; scalein : .8; scaleout : .8; showuntil : 4000;"&gt; &lt;div&gt; &lt;div&gt;There is a better way&lt;/div&gt;&lt;/div&gt;&lt;/h5&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '2013-06-04 17:56:38', 3, 62, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(122, 'logo', '&lt;img width="267" height="100" src="/DZ/5/w/BLKA%20LOGO%20WEB.png" title="" alt="" /&gt;&lt;br /&gt;\r\n', '2013-06-21 17:45:10', 5, 72, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(154, 'Contact Information', '\r\n&lt;p&gt;&lt;span style="font-weight: bold;"&gt;Contact Information:&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;Pete\r\nWolff&lt;/p&gt;\r\n&lt;p&gt;612-296-1353&lt;/p&gt;\r\n&lt;p&gt;pwcompleterepair@gmail.com&lt;/p&gt;', '0000-00-00 00:00:00', 0, 78, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(135, 'Heading', ' \r\n&lt;div align="center"&gt;&lt;span style="font-size: 14pt;"&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;div align="center"&gt;&lt;span style="font-size: 36pt; font-weight: bold; font-family: Verdana;"&gt;Complete Repair&lt;/span&gt; &lt;/div&gt;\r\n&lt;div align="center"&gt;&lt;br /&gt;\r\n	&lt;/div&gt;\r\n&lt;div align="right"&gt;&lt;span style="font-size: 14pt; font-family: Verdana;"&gt;&lt;span style="font-size: 14pt;"&gt;&lt;span style="font-size: 14pt;"&gt;&lt;span style="font-size: 14pt;"&gt;Effective, Efficient and Practical Solutions&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n	&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;', '2013-06-12 09:10:29', 12, 78, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(153, 'What We Do', '\r\n&lt;div&gt;\r\n	&lt;p&gt;&lt;span style="font-weight: bold;"&gt;What We Do:&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;We pride ourselves\r\non being able to come up with effective, efficient and practical solutions to\r\nany of your home repair needs. If you\r\ndonâ€™t see your project on this list, contact us and you might be surprised that\r\nwe may be able to work with you.&lt;/p&gt;&lt;/div&gt;&lt;br clear="all" /&gt;\r\n\r\n&lt;p&gt;Â·Soffit\r\nand Siding Repair and Replacement&lt;/p&gt;\r\n&lt;p&gt;Â·Window\r\nRepair and Replacement&lt;/p&gt;\r\n&lt;p&gt;Â·Door\r\nReplacement and Repair&lt;/p&gt;\r\n&lt;p&gt;Â·Moderate\r\nPlumbing&lt;/p&gt;\r\n&lt;p&gt;Â·Moderate\r\nElectrical&lt;/p&gt;\r\n&lt;p&gt;Â·Deck\r\nConstruction and Repair&lt;/p&gt;\r\n&lt;p&gt;Â·Roofing\r\nRepair&lt;/p&gt;\r\n&lt;p&gt;Â·Sheetrock\r\nand Plaster&lt;/p&gt;\r\n&lt;p&gt;Â·Moderate\r\nConcrete Work&lt;/p&gt;\r\n&lt;p&gt;Â·Kitchen\r\nRemodels&lt;/p&gt;\r\n&lt;p&gt;Â·Bathroom\r\nRemodels&lt;/p&gt;', '0000-00-00 00:00:00', 0, 78, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(152, 'About Us', 'Complete Repair is a "jack of all trades" home repair company out of Minneapolis, MN started in 2000.&amp;nbsp; Owner Pete Wolff started Complete Repair shortly after completing a comprehensive restoration of an 1882 Victorian mansion located in Edina, MN.&amp;nbsp; During the restoration, Pete realized that his specialized skills were very much in need especially on older homes particularily in the South Minneapolis and Edina area.&amp;nbsp; Complete Repair is certified to handle lead based paint found on some older homes.&amp;nbsp; Prior to the start of Complete Repair, Pete had 45+ years of woodworking that includes cabinet making, mass birdhouse manufacturing and collaboration in the construction of a fully functional two person airplane built in 1974 which is still in use today.&lt;br /&gt;\r\n', '0000-00-00 00:00:00', 0, 78, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(120, 'Menus', '&lt;div class="fullscreen-row header"&gt; &lt;header class="main-header affix-top" id="zw-header"&gt; &lt;div class="main-header-wrap clearfix"&gt; &lt;div class="brand" align="center"&gt;&lt;a href="http://www.idocampaigns.com" contenteditable="true"&gt;&lt;img alt="I Do Campaigns" src="/Editor/assets/IDoCampaignsLogo.png" height="121" width="364"&gt;&lt;/a&gt;&lt;/div&gt;&lt;a id="nav-toggle" aria-hidden="true" href="#" contenteditable="true"&gt;&lt;/a&gt; &lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;span contenteditable="true"&gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;span contenteditable="true"&gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;span contenteditable="true"&gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;span contenteditable="true"&gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#"&gt;&lt;span&gt;&lt;/span&gt;&lt;/a&gt;&lt;nav class="nav closed closed closed closed closed closed closed closed closed closed closed closed closed" id="zw-nav" aria-hidden="false" style="transition:max-height 400ms; position: relative;"&gt; &lt;ul&gt; &lt;li contenteditable="true"&gt;&lt;a href="#about" contenteditable="true"&gt;About&lt;br&gt; &lt;/a&gt;&lt;/li&gt; &lt;li contenteditable="true"&gt;&lt;a href="#services" contenteditable="true"&gt;Services&lt;/a&gt;&lt;/li&gt; &lt;li contenteditable="true"&gt;&lt;a href="#contact" contenteditable="true"&gt;Contact&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt;&lt;/nav&gt;&lt;/div&gt;&lt;/header&gt;&lt;/div&gt;', '2013-06-04 19:43:37', 4, 71, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(190, 'theme muse', '&lt;img width="9478" height="704" src="/DZ/34/w/loading.gif" title="" alt="" /&gt;\r\n&lt;meta charset="utf-8"&gt;&lt;/meta&gt;\r\n&lt;title&gt;Muse - Freelancers Creative Portfolio&lt;/title&gt;\r\n&lt;link rel="stylesheet" href="assets/css/style.css" type="text/css" /&gt;\r\n&lt;link href="http://fonts.googleapis.com/css?family=Handlee|Exo:400,800" rel="stylesheet" type="text/css" /&gt;\r\n&lt;!--\r\n[if lt IE 9]&gt;&lt;script src="http://html5shim.googlecode.com/svn/trunk/html5.js"&gt;&lt;/script&gt;&lt;![endif]\r\n--&gt;\r\n\r\n&lt;div id="loading"&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;div class="container"&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;section id="intro"&gt;\r\n	&lt;h1&gt;Tommy Potatoe&lt;/h1&gt;\r\n	&lt;p&gt;07837 488564 &lt;a href="#" title="#"&gt;hello@danielhellier.com&lt;/a&gt;&lt;/p&gt;&lt;img src="assets/img/photos/picture.jpg" alt="alternative text" /&gt;\r\n	&lt;ul&gt;\r\n		&lt;li class="message"&gt;If it helps somewhat, here''s a pic.&lt;/li&gt;\r\n		&lt;li class="big"&gt;I &lt;span style="font-weight: bold;"&gt;design&lt;/span&gt; &amp;amp; &lt;span style="font-weight: bold;"&gt;code&lt;/span&gt; for the internet&lt;/li&gt;\r\n		&lt;li class="medium"&gt;I''m a &lt;span style="font-weight: bold;"&gt;freelancer&lt;/span&gt; from &lt;span style="font-weight: bold;"&gt;Essex&lt;/span&gt;, &lt;span style="font-weight: bold;"&gt;England&lt;/span&gt;&lt;/li&gt;\r\n		&lt;li class="small"&gt;With over &lt;span style="font-weight: bold;"&gt;7 years&lt;/span&gt; experience&lt;/li&gt;\r\n	&lt;/ul&gt;&lt;/section&gt;\r\n&lt;section id="portfolio"&gt;\r\n	&lt;h2&gt;Portfolio&lt;/h2&gt;\r\n	&lt;aside class="message"&gt;showcased work &amp;amp; skill sets etc.&lt;/aside&gt;\r\n	&lt;dl&gt;\r\n		&lt;dt&gt;What I Offer&lt;/dt&gt;\r\n		&lt;dd&gt;Photography&lt;/dd&gt;\r\n		&lt;dd&gt;\r\n			&lt;abbr title="Hypertext Markup Language"&gt;HTML&lt;/abbr&gt; &amp;amp; \r\n			&lt;abbr title="Cascading Style Sheets"&gt;CSS&lt;/abbr&gt;&lt;/dd&gt;\r\n		&lt;dd&gt;Web Design&lt;/dd&gt;\r\n		&lt;dd&gt;PHP&lt;/dd&gt;\r\n		&lt;dd&gt;\r\n			&lt;abbr title="Search Engine Optimization"&gt;SEO&lt;/abbr&gt;&lt;/dd&gt;\r\n		&lt;dd&gt;Wordpress &amp;amp; vBulletin intergration&lt;/dd&gt;\r\n	&lt;/dl&gt;\r\n	&lt;div class="sc_menu_wrapper" style="overflow-x: hidden; overflow-y: hidden; "&gt;\r\n		&lt;div class="sc_menu gallery clearfix"&gt;&lt;a href="#"&gt;&lt;img src="assets/img/portfolio/1.png" alt="alternative text" /&gt;&lt;/a&gt;\r\n			&lt;div class="text"&gt;&lt;span style="font-weight: bold;"&gt;Headline&lt;/span&gt;\r\n				&lt;p&gt;Proin aliquam purus id augue ornare fringilla. Phasellus sagittis tempus nulla, faucibus volutpat leo vestibulum sed.&lt;/p&gt;&lt;/div&gt;&lt;a href="#"&gt;&lt;img src="assets/img/portfolio/2.png" alt="alternative text" /&gt;&lt;/a&gt;\r\n			&lt;div class="text"&gt;&lt;span style="font-weight: bold;"&gt;Headline&lt;/span&gt;\r\n				&lt;p&gt;Proin aliquam purus id augue ornare fringilla. Phasellus sagittis tempus nulla, faucibus volutpat leo vestibulum sed.&lt;/p&gt;&lt;/div&gt;&lt;a href="#"&gt;&lt;img src="assets/img/portfolio/3.png" alt="alternative text" /&gt;&lt;/a&gt;\r\n			&lt;div class="text"&gt;&lt;span style="font-weight: bold;"&gt;Headline&lt;/span&gt;\r\n				&lt;p&gt;Proin aliquam purus id augue ornare fringilla. Phasellus sagittis tempus nulla, faucibus volutpat leo vestibulum sed.&lt;/p&gt;&lt;/div&gt;&lt;a href="#"&gt;&lt;img src="assets/img/portfolio/4.png" alt="alternative text" /&gt;&lt;/a&gt;\r\n			&lt;div class="text"&gt;&lt;span style="font-weight: bold;"&gt;Headline&lt;/span&gt;\r\n				&lt;p&gt;Proin aliquam purus id augue ornare fringilla. Phasellus sagittis tempus nulla, faucibus volutpat leo vestibulum sed.&lt;/p&gt;&lt;/div&gt;&lt;a href="#"&gt;&lt;img src="assets/img/portfolio/5.png" alt="alternative text" /&gt;&lt;/a&gt;\r\n			&lt;div class="text"&gt;&lt;span style="font-weight: bold;"&gt;Headline&lt;/span&gt;\r\n				&lt;p&gt;Proin aliquam purus id augue ornare fringilla. Phasellus sagittis tempus nulla, faucibus volutpat leo vestibulum sed.&lt;/p&gt;&lt;/div&gt;&lt;a href="#"&gt;&lt;img src="assets/img/portfolio/6.png" alt="alternative text" /&gt;&lt;/a&gt;\r\n			&lt;div class="text"&gt;&lt;span style="font-weight: bold;"&gt;Headline&lt;/span&gt;\r\n				&lt;p&gt;Proin aliquam purus id augue ornare fringilla. Phasellus sagittis tempus nulla, faucibus volutpat leo vestibulum sed.&lt;/p&gt;&lt;/div&gt;&lt;a href="#"&gt;&lt;img src="assets/img/portfolio/7.png" alt="alternative text" /&gt;&lt;/a&gt;\r\n			&lt;div class="text"&gt;&lt;span style="font-weight: bold;"&gt;Headline&lt;/span&gt;\r\n				&lt;p&gt;Proin aliquam purus id augue ornare fringilla. Phasellus sagittis tempus nulla, faucibus volutpat leo vestibulum sed.&lt;/p&gt;&lt;/div&gt;&lt;a href="#"&gt;&lt;img src="assets/img/portfolio/8.png" alt="alternative text" /&gt;&lt;/a&gt;\r\n			&lt;div class="text"&gt;&lt;span style="font-weight: bold;"&gt;Headline&lt;/span&gt;\r\n				&lt;p&gt;Proin aliquam purus id augue ornare fringilla. Phasellus sagittis tempus nulla, faucibus volutpat leo vestibulum sed.&lt;/p&gt;&lt;/div&gt;&lt;a href="#"&gt;&lt;img src="assets/img/portfolio/9.png" alt="alternative text" /&gt;&lt;/a&gt;\r\n			&lt;div class="text"&gt;&lt;span style="font-weight: bold;"&gt;Headline&lt;/span&gt;\r\n				&lt;p&gt;Proin aliquam purus id augue ornare fringilla. Phasellus sagittis tempus nulla, faucibus volutpat leo vestibulum sed.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;\r\n&lt;section id="about"&gt;\r\n	&lt;h2&gt;About Me&lt;/h2&gt;\r\n	&lt;aside class="message"&gt;21/m/uk&lt;/aside&gt;&lt;span class="picture"&gt;&lt;img src="assets/img/photos/picture2.jpg" alt="alternative text" /&gt;&lt;/span&gt;\r\n	&lt;p&gt;Bonjour. I''m a 21 year old &lt;span style="font-weight: bold;"&gt;web developer&lt;/span&gt; living in England.&lt;/p&gt;\r\n	&lt;p&gt;Tenderloin brisket &lt;span style="font-weight: bold;"&gt;pork belly&lt;/span&gt; beef ribs turkey andouille. Biltong meatloaf tenderloin, prosciutto &lt;span style="font-weight: bold;"&gt;flank frankfurter&lt;/span&gt; pancetta. Rump sausage &lt;span style="font-weight: bold;"&gt;bresaola cow&lt;/span&gt;, &lt;span style="font-weight: bold;"&gt;meatloaf speck&lt;/span&gt;. Short loin cow tenderloin.&lt;/p&gt;\r\n	&lt;p&gt;I engulf a &lt;span style="font-weight: bold;"&gt;friendly&lt;/span&gt; eccentric atmosphere where productivity and efficiency are ensuring.&lt;/p&gt;\r\n	&lt;p&gt;Ham speck strip steak, pig ball tip pork loin swine short ribs ground round shoulder pastrami corned beef boudin short loin salami. Hamburger jerky.&lt;/p&gt;\r\n	&lt;aside class="message1"&gt;I also like smelling petrol.&lt;/aside&gt;&lt;/section&gt;\r\n&lt;section id="contact"&gt;\r\n	&lt;h2&gt;Hire Me!&lt;/h2&gt;\r\n	&lt;aside class="message"&gt;have your people contact my people and maybe we can do magic&lt;/aside&gt;\r\n	&lt;form&gt;\r\n		&lt;input type="text" name="emailaddress" style="display:none" /&gt;\r\n		&lt;fieldset class="input"&gt;\r\n			&lt;label for="name"&gt;Your Name &lt;span style="font-weight: bold;"&gt;*&lt;/span&gt;&lt;/label&gt;\r\n			&lt;input type="text" id="name" name="name" /&gt;&lt;/fieldset&gt;\r\n		&lt;fieldset class="input"&gt;\r\n			&lt;label for="email"&gt;Your Email &lt;span style="font-weight: bold;"&gt;*&lt;/span&gt;&lt;/label&gt;\r\n			&lt;input type="text" id="email" name="email" /&gt;&lt;/fieldset&gt;\r\n		&lt;fieldset class="detail"&gt;\r\n			&lt;label for="message"&gt;Message &lt;span style="font-weight: bold;"&gt;*&lt;/span&gt;&lt;/label&gt;\r\n			&lt;textarea id="message" name="message"&gt;&lt;/textarea&gt;&lt;/fieldset&gt;\r\n		&lt;fieldset class="input"&gt;\r\n			&lt;label for="telephone"&gt;Phone Number&lt;/label&gt;\r\n			&lt;input type="text" id="telephone" name="telephone" /&gt;&lt;/fieldset&gt;\r\n		&lt;fieldset class="input"&gt;\r\n			&lt;label for="website"&gt;Website URL&lt;/label&gt;\r\n			&lt;input type="text" id="website" name="website" /&gt;&lt;/fieldset&gt;\r\n		&lt;fieldset class="input"&gt;\r\n			&lt;label&gt;Required Service&lt;/label&gt;\r\n			&lt;ul&gt;\r\n				&lt;li&gt;\r\n					&lt;label&gt;\r\n						&lt;input type="checkbox" name="checkbox1" value="photography" /&gt;Photography&lt;/label&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;label&gt;\r\n						&lt;input type="checkbox" name="checkbox2" value="web design" /&gt;Web Design&lt;/label&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;label&gt;\r\n						&lt;input type="checkbox" name="checkbox3" value="programming" /&gt;Programming&lt;/label&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;label&gt;\r\n						&lt;input type="checkbox" name="checkbox4" value="print design" /&gt;Print Design&lt;/label&gt;&lt;/li&gt;\r\n			&lt;/ul&gt;&lt;/fieldset&gt;\r\n		&lt;fieldset class="input"&gt;\r\n			&lt;label&gt;Projected Budget&lt;/label&gt;\r\n			&lt;ul&gt;\r\n				&lt;li&gt;\r\n					&lt;label&gt;\r\n						&lt;input type="radio" name="budget" value="&amp;pound;600-&amp;pound;1900" /&gt;$1000 - $3000&lt;/label&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;label&gt;\r\n						&lt;input type="radio" name="budget" value="&amp;pound;1900-&amp;pound;3800" /&gt;$3000 - $6000&lt;/label&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;label&gt;\r\n						&lt;input type="radio" name="budget" value="&amp;pound;3800-&amp;pound;6300" /&gt;$6000 - $10,000&lt;/label&gt;&lt;/li&gt;\r\n				&lt;li&gt;\r\n					&lt;label&gt;\r\n						&lt;input type="radio" name="budget" value="&amp;pound;6,300+" /&gt;$10,000+&lt;/label&gt;&lt;/li&gt;\r\n			&lt;/ul&gt;&lt;/fieldset&gt;\r\n		&lt;button&gt;Send Email&lt;/button&gt;\r\n	&lt;/form&gt;&lt;/section&gt;\r\n&lt;ul id="toggle"&gt;\r\n	&lt;li class="previous"&gt;&lt;a href="#contact" id="test" style="display: none; "&gt;&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class="next"&gt;&lt;a href="#portfolio" style="display: block; "&gt;&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"&gt;\r\n\r\n&lt;/script&gt;\r\n&lt;script type="text/javascript" src="assets/js/engine.js"&gt;\r\n\r\n&lt;/script&gt;', '2013-06-21 19:42:18', 34, 72, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(174, 'Collaboration', '\r\n&lt;h1&gt;Welcome [[OX.FirstName]]!&lt;/h1&gt;\r\n&lt;div&gt;&amp;nbsp;\r\n	&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;\r\n&lt;div align="center"&gt;&lt;img src="/DZ/26/w/Wall.png" title="" alt="" /&gt;&lt;/div&gt;', '2013-06-13 15:21:28', 26, 62, '\0', 0, '\0', 0, 1);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(197, 'About Us', '\r\n&lt;section id="whatwedo"&gt;&lt;span style="font-size: 36pt;"&gt;&lt;span style="font-size: 36pt; color: rgb(105, 105, 105);"&gt;&lt;/span&gt;&lt;/span&gt;\r\n	&lt;div class="row"&gt;&lt;span style="font-size: 36pt;"&gt;&lt;span style="font-size: 36pt; color: rgb(105, 105, 105);"&gt;&lt;/span&gt;&lt;/span&gt;\r\n		&lt;div class="twelve columns centered"&gt;&lt;span style="font-size: 36pt; color: rgb(105, 105, 105); font-family: sans-serif;"&gt;&lt;span style="font-size: 36pt; font-family: sans-serif;"&gt;About Us&lt;/span&gt;&lt;/span&gt;\r\n			&lt;h2&gt;&lt;/h2&gt;\r\n			&lt;h2&gt;&lt;span style="color: rgb(169, 169, 169);"&gt;&lt;span style="color: rgb(0, 0, 0);"&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;\r\n			&lt;div&gt;\r\n				&lt;p&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;Complete Repair is a "jack of all trades" home repair company out of Minneapolis, MN started in 2000. Owner Pete Wolff started Complete Repair shortly after completing a comprehensive restoration of an 1882 Victorian mansion located in Edina, MN. During the restoration, Pete realized that his specialized skills were very much in need especially on older homes particularly in the South Minneapolis and Edina area. Complete Repair is certified to handle lead based paint found on some older homes. Prior to the start of Complete Repair, Pete had 45+ years of woodworking that includes cabinet making, mass birdhouse manufacturing and collaboration in the construction of a fully functional two person airplane built in 1974 which is still in use today. &lt;/span&gt;&lt;/p&gt;\r\n				&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;span style="color: rgb(169, 169, 169);"&gt;&lt;/span&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;!--\r\n		WORKS GRID\r\n		--&gt;\r\n		\r\n		&lt;ul class="og-grid" id="og-grid"&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/2big.png" href="http://www.google.be"&gt;&lt;img alt="img01" src="img/thumbs/1.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/1big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/2.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/3big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/3.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/4big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/4.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/6big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/5.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/7big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/6.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/7big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/7.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/8big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/8.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n		&lt;!--\r\n		END WORKS GRID\r\n		--&gt;\r\n		&lt;/div&gt;&lt;/section&gt;', '2013-06-24 10:13:07', 0, 78, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(198, 'About Us', '\r\n&lt;section id="whatwedo"&gt;&lt;span style="font-size: 36pt;"&gt;&lt;span style="font-size: 36pt; color: rgb(105, 105, 105);"&gt;&lt;/span&gt;&lt;/span&gt;\r\n	&lt;div class="row"&gt;&lt;span style="font-size: 36pt;"&gt;&lt;span style="font-size: 36pt; color: rgb(105, 105, 105);"&gt;&lt;/span&gt;&lt;/span&gt;\r\n		&lt;div class="twelve columns centered"&gt;&lt;span style="font-size: 36pt; color: rgb(105, 105, 105); font-family: sans-serif;"&gt;&lt;span style="font-size: 36pt; font-family: sans-serif;"&gt;About Us&lt;/span&gt;&lt;/span&gt;\r\n			&lt;h2&gt;&lt;/h2&gt;\r\n			&lt;h2&gt;&lt;span style="color: rgb(169, 169, 169);"&gt;&lt;span style="color: rgb(0, 0, 0);"&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;\r\n			&lt;div&gt;\r\n				&lt;p&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;Complete Repair is a "jack of all trades" home repair company out of Minneapolis, MN started in 2000. Owner Pete Wolff started Complete Repair shortly after completing a comprehensive restoration of an 1882 Victorian mansion located in Edina, MN. During the restoration, Pete realized that his specialized skills were very much in need especially on older homes particularly in the South Minneapolis and Edina area. Complete Repair is certified to handle lead based paint found on some older homes. Prior to the start of Complete Repair, Pete had 45+ years of woodworking that includes cabinet making, mass birdhouse manufacturing and collaboration in the construction of a fully functional two person airplane built in 1974 which is still in use today. &lt;/span&gt;&lt;/p&gt;\r\n				&lt;div&gt;&amp;nbsp;&lt;/div&gt;\r\n				&lt;div&gt;&amp;nbsp;\r\n					&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;span style="color: rgb(169, 169, 169);"&gt;&lt;/span&gt;&lt;/section&gt;', '2013-06-24 10:18:30', 0, 78, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(181, 'Blog Items', '\r\n&lt;h1&gt;Blogs&lt;/h1&gt;\r\n&lt;div align="center"&gt;&lt;a href="#xp_179"&gt;&lt;img alt="" title="" src="/DZ/26/w/Blogs.png" /&gt;&lt;/a&gt;&lt;/div&gt;', '2013-06-13 15:12:27', 0, 62, '\0', 0, '\0', 0, 1);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(179, 'Blog', '\r\n&lt;div class="BlogContainer"&gt;\r\n	&lt;div class="TwoCols"&gt;\r\n		&lt;div class="Col Col1"&gt;\r\n			&lt;div class="Inner"&gt;[[OX.BLOG.14]]&lt;/div&gt;&lt;/div&gt;\r\n		&lt;div class="Col Col2"&gt;\r\n			&lt;div class="Inner"&gt;Timeline&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '2013-06-15 07:27:33', 26, 89, '\0', 0, '\0', 0, 1);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(185, 'Photos', '\r\n&lt;h2 align="center"&gt;Photos&lt;/h2&gt;\r\n&lt;div&gt;&amp;nbsp;\r\n	&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;\r\n&lt;div&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;\r\n&lt;div&gt;&lt;img width="350" height="350" src="/DZ/27/w/2013-06-13T10-12-39_0.jpg" title="" alt="" style="margin: 10px 50px 30px 40px; border-width: 4px; border-style: solid; border-color: rgb(128, 0, 0);" /&gt;&lt;img width="275" height="225" src="/DZ/27/w/2013-06-13T10-12-40_1.jpg" title="" alt="" style="margin: 10px 55px 30px; border-width: 4px; border-style: solid; border-color: rgb(128, 0, 0);" /&gt;&lt;img width="275" height="225" src="/DZ/27/w/2013-06-13T10-12-40_3.jpg" title="" alt="" style="margin: 10px 50px 30px 60px; border-width: 4px; border-style: solid; border-color: rgb(128, 0, 0);" /&gt;&lt;img width="300" height="250" src="http://www.digiapolis.com/DZ/27/w/2013-06-13T10-12-40_5.jpg" title="" alt="" style="margin: 10px 30px 30px; border-width: 4px; border-style: solid; border-color: rgb(128, 0, 0);" /&gt;&lt;img width="300" height="275" src="http://www.digiapolis.com/DZ/27/w/2013-06-13T10-12-40_6.jpg" title="" alt="" style="margin: 10px 40px 30px 45px; border-width: 4px; border-style: solid; border-color: rgb(128, 0, 0);" /&gt;&lt;img width="375" height="400" src="http://www.digiapolis.com/DZ/27/w/2013-06-13T10-12-40_4.jpg" title="" alt="" style="margin: 10px 40px 30px 45px; border-width: 4px; border-style: solid; border-color: rgb(128, 0, 0);" /&gt;&lt;/div&gt;&lt;img width="300" height="325" src="http://www.digiapolis.com/DZ/27/w/2013-06-13T10-12-40_7.jpg" title="" alt="" style="margin: 10px 30px; border-width: 4px; border-style: solid; border-color: rgb(128, 0, 0);" /&gt;\r\n&lt;div&gt;\r\n	&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;', '2013-06-24 08:48:55', 27, 78, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(180, 'Feed', '\r\n&lt;div&gt;\r\n	&lt;h1&gt;Important Feeds &lt;/h1&gt;&lt;/div&gt;\r\n&lt;div class="TwoCols"&gt;\r\n	&lt;div class="Col Col1"&gt;\r\n		&lt;div class="Inner"&gt;[[OX.RSS.http://feeds.feedburner.com/healthcare-informatics?format=xml]]&lt;/div&gt;&lt;/div&gt;\r\n	&lt;div class="Col Col2"&gt;\r\n		&lt;div class="Inner"&gt;[[OX.RSS.http://www.healthcareitnews.com/home/feed]]&lt;/div&gt;&lt;/div&gt;&lt;br class="ClearFloat" /&gt;\r\n	 " &lt;/div&gt;\r\n&lt;div&gt; [[OX.RSS.http://www.healthcareitnews.com/videos/feed]] &lt;/div&gt;', '2013-06-14 03:03:47', 26, 62, '\0', 0, '\0', 0, 1);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(182, 'Blog Items', '\r\n&lt;h1&gt;Blogs&lt;/h1&gt;\r\n&lt;div align="center"&gt;&lt;a href="#xp_179"&gt;&lt;img alt="" title="" src="http://www.digiapolis.com/DZ/26/w/Blogs.png" /&gt;&lt;/a&gt;&lt;/div&gt;', '2013-06-13 15:15:49', 0, 62, '\0', 0, '\0', 0, 1);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(183, 'Blog Items', '\r\n&lt;h1&gt;Blogs&lt;/h1&gt;\r\n&lt;div align="center"&gt;&lt;a href="#xp_179"&gt;&lt;img alt="" title="" src="http://www.digiapolis.com/DZ/26/w/Blogs.png" /&gt;&lt;/a&gt;&lt;/div&gt;', '2013-06-13 16:12:01', 26, 62, '\0', 0, '\0', 0, 1);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(142, 'contact', '\r\n&lt;div&gt;\r\n	&lt;p&gt;&lt;span style="font-size: 18pt;"&gt;Minneapolis,MN&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;p&gt;&lt;span style="font-size: 18pt;"&gt;Phone(612)850-8804&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;p&gt;&lt;span style="font-size: 18pt;"&gt;Email Mrlo2pez@yahoo.com&lt;br /&gt;\r\n			&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;\r\n&lt;div&gt;&lt;span style="font-size: 12pt;"&gt;&amp;nbsp;&lt;/span&gt;&lt;/div&gt;\r\n&lt;div&gt;&amp;nbsp;&lt;/div&gt;', '2013-06-05 21:45:17', 72, 72, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(143, 'Purpose', '\r\n&lt;h2&gt;Purpose&lt;/h2&gt;\r\n&lt;p&gt;This website is being built at the moment,but its going to have pretty much everything you could want or desire as far as your skate &amp;amp; snowboard needs go, without that retail store price&amp;nbsp; and bad smell.This is why will be providing you with the best quality goods and services in a quick and and easy manner&lt;/p&gt;', '2013-06-21 17:36:04', 5, 72, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(144, '', 'dfggfdgd', '0000-00-00 00:00:00', 62, 62, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(145, 'zxczxcc', 'zxczxxzc', '0000-00-00 00:00:00', 62, 62, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(146, 'x12', 'asdada', '0000-00-00 00:00:00', 62, 62, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(147, 'You want to implement a social platform.. listen up!', '&lt;span class="edit-link"&gt;&lt;/span&gt;\r\n&lt;div class="entry-content"&gt;\r\n	&lt;p align="center"&gt;&lt;img src="http://digiapolis.files.wordpress.com/2013/06/fbmastheadtemplatehere2there.gif?w=650" alt="Image" id="i-162" class="size-full wp-image" /&gt;&lt;/p&gt;\r\n	&lt;p&gt;Had a chance to meet with a very large publicly traded professional services company the other day to discuss their enterprise social media strategy. Not a marketing oriented plan, rather, an employee, contractor community that would tie people together. They are in the business of people and it simply makes sense to engage as much as possible with their teams, their employees, contractors, and even potential employees. Itâ€™s their business.&lt;/p&gt;\r\n	&lt;h3&gt;&lt;span style="font-weight: bold;"&gt;Itâ€™s about the goal, and then itâ€™s about the strategy&lt;/span&gt;&lt;/h3&gt;\r\n	&lt;p&gt;With that said, our discussion focused on ideas, outcomes, and low and beholdâ€¦ tools. STOP! Whoa! Before you start settling in on tools, make sure you know that whatever tool you plan to use is going to support your goals. Seems simpleâ€¦ seems like common knowledge â€“ surely, they would know that. Of course they do. However, it seems as if every time there is a new concept or technology, we tend to throw out our basic, time tested, approaches; our best practices. Social implementations are no different. &lt;/p&gt;\r\n	&lt;h3&gt;&lt;span style="font-weight: bold;"&gt;Only the concept is new&lt;/span&gt;&lt;/h3&gt;\r\n	&lt;p&gt;When I consult I use a very simple approach to any outcome. I ask questions and I write things down. Of course I do a bit more than that but I believe the simpler the better. What do I listen for and what do I write? When the discussion is about a social implementation â€“ I ask about goals, the audience, and the expectations and outcomes desired. I ask questions like who is leading the initiative and what level the "buy inâ€ is at organizationally. Once we understand the basic goals I would ask a lot of questions about the make-up of the users. How are they organized? How do they work together? Where do they not work together? Whatâ€™s common and whatâ€™s not.&lt;/p&gt;\r\n	&lt;h3&gt;&lt;span style="font-weight: bold;"&gt;Keep breaking it down and keep writing.&lt;/span&gt;&lt;/h3&gt;\r\n	&lt;p&gt;In this case and to really simplify, we came up with:&lt;/p&gt;\r\n	&lt;p&gt;Goals:&lt;/p&gt;\r\n	&lt;ul&gt;\r\n		&lt;li&gt;To improve the level of communication to all constituents of the organization&lt;/li&gt;\r\n		&lt;li&gt;To engage all employees and create an affinity to the organization while building a "communityâ€&lt;/li&gt;\r\n		&lt;li&gt;Be an employment destination for future and periodically employed personnel&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;p&gt;Segmentation:&lt;/p&gt;\r\n	&lt;ul&gt;\r\n		&lt;li&gt;Management â€“ Executives &amp;amp; Management of organization&lt;/li&gt;\r\n		&lt;li&gt;Employees â€“ Standard FTEâ€™s&lt;/li&gt;\r\n		&lt;li&gt;Contractors â€“ Periodic contractors&lt;/li&gt;\r\n		&lt;li&gt;Prospective Employees â€“ Future employees&lt;/li&gt;\r\n		&lt;li&gt;Engagement Employees â€“ People who are employed during key projects, but come in and out of the business&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;p&gt;&lt;span style="font-weight: bold; font-style: italic;"&gt;I think you get the ideaâ€¦&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;Where do we go from here? I would suggest we would move to identifying administrative functions, macro "appâ€ functions for the users, rights &amp;amp; access and ultimately a desired architecture, process scheme, and a list of requirements that will help us determine what we are looking for. Lots of discussion and socializing about the implementation and the benefits we intend to achieve.&lt;/p&gt;\r\n	&lt;p&gt;&lt;span style="font-weight: bold;"&gt;Bottom line&lt;/span&gt; â€“ Implementing an Enterprise Social strategy is no different than any other product. Itâ€™s not an inter-galactic effort; just hard work &amp;amp; smart workâ€¦ have fun.&lt;/p&gt;\r\n	&lt;h3&gt;&lt;span style="font-weight: bold;"&gt;Conclusion&lt;/span&gt;&lt;/h3&gt;\r\n	&lt;p&gt;Later posts will focus on some of the details of the implementation. However, donâ€™t forget that even though implementing an enterprise social platform into your company or even your market â€“ basic implementation skills and tasks still prevail. Know your goal, understand the buy-in at the corporate level, understand the different groups of constituents and how they work together, and listen.&lt;/p&gt;&lt;/div&gt;', '2013-06-13 13:34:46', 14, 62, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(149, 'Home', '&lt;img alt="" title="" src="/DZ/16/w/IMG_0057.JPG" /&gt;', '2013-06-09 10:00:23', 16, 62, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(150, 'Home', '&lt;div class="SSMLogoContainer"&gt;&lt;img class="SSMLogo" alt="" title="" src="/DZ/26/w/Next-Wave-Connect-Logo.png" /&gt;&lt;/div&gt;\r\n&lt;h1&gt;Welcome!&lt;/h1&gt;\r\n&lt;div class="divLoginContainer"&gt;[[OX.LOGIN]]&lt;/div&gt;', '2013-06-21 11:53:58', 26, 62, '\0', 0, '', 0, 2);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(131, 'Contact Us', '&lt;span style="font-weight: bold;"&gt;Contact Information:&lt;/span&gt;\r\n&lt;p&gt;Pete Wolff&lt;/p&gt;\r\n&lt;p&gt;612-296-1353&lt;/p&gt;\r\n&lt;p&gt;completerepair@gmail.com&lt;/p&gt;\r\n&lt;!--\r\nEndFragment\r\n--&gt;\r\n ', '2013-06-12 09:10:29', 12, 78, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(161, 'Contact Information', '\r\n&lt;section id="contact"&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;div class="twelve columns centered"&gt;\r\n			&lt;h2&gt;Contact &lt;span style="font-style: italic;"&gt;&lt;/span&gt;&lt;/h2&gt;&lt;/div&gt;&lt;/div&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;div class="eleven columns centered"&gt;\r\n			&lt;p class="subtittle"&gt;Do you have a project or repair that needs to get done around your home?&lt;/p&gt;\r\n			&lt;p class="subtittle"&gt;We would love to hear from you.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;div class="seven columns"&gt;\r\n			&lt;form name="htmlform" method="post" action="form_sender.php"&gt;\r\n				&lt;input type="text" name="first_name" placeholder="YOUR NAME" required="" /&gt;\r\n				&lt;input type="email" name="email" placeholder="E-MAIL" required="" /&gt;\r\n				&lt;textarea name="comments" cols="1" rows="5" placeholder="TELL US EVERYTHING" required=""&gt;&lt;/textarea&gt;\r\n				&lt;button name="send" type="submit" class="submit"&gt;Alright&lt;/button&gt;\r\n			&lt;/form&gt;&lt;/div&gt;\r\n		&lt;div class="five columns info"&gt;\r\n			&lt;h4&gt;Pete Wolff&lt;/h4&gt;&lt;br /&gt;\r\n			\r\n			&lt;p&gt;612-296-1353&lt;/p&gt;\r\n			&lt;h4&gt;Email:&lt;/h4&gt;&lt;br /&gt;\r\n			\r\n			&lt;p&gt;&lt;a href="#"&gt;pwcompleterepair@gmail.com&lt;/a&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;', '2013-06-21 10:30:52', 27, 78, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(130, 'What We Do', '\r\n&lt;xml&gt;&lt;/xml&gt;\r\n&lt;xml&gt;\r\n	&lt;w:worddocument&gt;\r\n		&lt;w:trackmoves&gt;\r\n			&lt;w:trackformatting&gt;\r\n				&lt;w:punctuationkerning&gt;\r\n					&lt;w:validateagainstschemas&gt;\r\n						&lt;w:donotpromoteqf&gt;\r\n							&lt;w:lidthemecomplexscript&gt;&lt;/w:lidthemecomplexscript&gt;\r\n							&lt;w:compatibility&gt;\r\n								&lt;w:breakwrappedtables&gt;\r\n									&lt;w:snaptogridincell&gt;\r\n										&lt;w:useasianbreakrules&gt;\r\n											&lt;w:dontgrowautofit&gt;\r\n												&lt;w:splitpgbreakandparamark&gt;\r\n													&lt;w:enableopentypekerning&gt;\r\n														&lt;w:dontflipmirrorindents&gt;\r\n															&lt;w:overridetablestylehps&gt;\r\n																&lt;w:usefelayout&gt;&lt;/w:usefelayout&gt;&lt;/w:overridetablestylehps&gt;&lt;/w:dontflipmirrorindents&gt;&lt;/w:enableopentypekerning&gt;&lt;/w:splitpgbreakandparamark&gt;&lt;/w:dontgrowautofit&gt;&lt;/w:useasianbreakrules&gt;&lt;/w:snaptogridincell&gt;&lt;/w:breakwrappedtables&gt;&lt;/w:compatibility&gt;\r\n							&lt;m:mathpr&gt;\r\n								&lt;m:mathfont m:val="Cambria Math"&gt;\r\n									&lt;m:brkbin m:val="before"&gt;\r\n										&lt;m:brkbinsub m:val="--"&gt;\r\n											&lt;m:smallfrac m:val="off"&gt;\r\n												&lt;m:dispdef&gt;\r\n													&lt;m:lmargin m:val="0"&gt;\r\n														&lt;m:rmargin m:val="0"&gt;\r\n															&lt;m:defjc m:val="centerGroup"&gt;\r\n																&lt;m:wrapindent m:val="1440"&gt;\r\n																	&lt;m:intlim m:val="subSup"&gt;\r\n																		&lt;m:narylim m:val="undOvr"&gt;&lt;/m:narylim&gt;&lt;/m:intlim&gt;&lt;/m:wrapindent&gt;&lt;/m:defjc&gt;&lt;/m:rmargin&gt;&lt;/m:lmargin&gt;&lt;/m:dispdef&gt;&lt;/m:smallfrac&gt;&lt;/m:brkbinsub&gt;&lt;/m:brkbin&gt;&lt;/m:mathfont&gt;&lt;/m:mathpr&gt;&lt;/w:donotpromoteqf&gt;&lt;/w:validateagainstschemas&gt;&lt;/w:punctuationkerning&gt;&lt;/w:trackformatting&gt;&lt;/w:trackmoves&gt;&lt;/w:worddocument&gt;&lt;/xml&gt;\r\n&lt;xml&gt;\r\n	&lt;w:latentstyles latentstylecount="276" defpriority="99" defqformat="false" defsemihidden="true" defunhidewhenused="true" deflockedstate="false"&gt;\r\n		&lt;w:lsdexception name="Normal" qformat="true" unhidewhenused="false" semihidden="false" priority="0" locked="false"&gt;\r\n			&lt;w:lsdexception name="heading 1" qformat="true" unhidewhenused="false" semihidden="false" priority="9" locked="false"&gt;\r\n				&lt;w:lsdexception name="heading 2" qformat="true" priority="9" locked="false"&gt;\r\n					&lt;w:lsdexception name="heading 3" qformat="true" priority="9" locked="false"&gt;\r\n						&lt;w:lsdexception name="heading 4" qformat="true" priority="9" locked="false"&gt;\r\n							&lt;w:lsdexception name="heading 5" qformat="true" priority="9" locked="false"&gt;\r\n								&lt;w:lsdexception name="heading 6" qformat="true" priority="9" locked="false"&gt;\r\n									&lt;w:lsdexception name="heading 7" qformat="true" priority="9" locked="false"&gt;\r\n										&lt;w:lsdexception name="heading 8" qformat="true" priority="9" locked="false"&gt;\r\n											&lt;w:lsdexception name="heading 9" qformat="true" priority="9" locked="false"&gt;\r\n												&lt;w:lsdexception name="toc 1" priority="39" locked="false"&gt;\r\n													&lt;w:lsdexception name="toc 2" priority="39" locked="false"&gt;\r\n														&lt;w:lsdexception name="toc 3" priority="39" locked="false"&gt;\r\n															&lt;w:lsdexception name="toc 4" priority="39" locked="false"&gt;\r\n																&lt;w:lsdexception name="toc 5" priority="39" locked="false"&gt;\r\n																	&lt;w:lsdexception name="toc 6" priority="39" locked="false"&gt;\r\n																		&lt;w:lsdexception name="toc 7" priority="39" locked="false"&gt;\r\n																			&lt;w:lsdexception name="toc 8" priority="39" locked="false"&gt;\r\n																				&lt;w:lsdexception name="toc 9" priority="39" locked="false"&gt;\r\n																					&lt;w:lsdexception name="caption" qformat="true" priority="35" locked="false"&gt;\r\n																						&lt;w:lsdexception name="Title" qformat="true" unhidewhenused="false" semihidden="false" priority="10" locked="false"&gt;\r\n																							&lt;w:lsdexception name="Default Paragraph Font" priority="1" locked="false"&gt;\r\n																								&lt;w:lsdexception name="Subtitle" qformat="true" unhidewhenused="false" semihidden="false" priority="11" locked="false"&gt;\r\n																									&lt;w:lsdexception name="Strong" qformat="true" unhidewhenused="false" semihidden="false" priority="22" locked="false"&gt;\r\n																										&lt;w:lsdexception name="Emphasis" qformat="true" unhidewhenused="false" semihidden="false" priority="20" locked="false"&gt;\r\n																											&lt;w:lsdexception name="Table Grid" unhidewhenused="false" semihidden="false" priority="59" locked="false"&gt;\r\n																												&lt;w:lsdexception name="Placeholder Text" unhidewhenused="false" locked="false"&gt;\r\n																													&lt;w:lsdexception name="No Spacing" qformat="true" unhidewhenused="false" semihidden="false" priority="1" locked="false"&gt;\r\n																														&lt;w:lsdexception name="Light Shading" unhidewhenused="false" semihidden="false" priority="60" locked="false"&gt;\r\n																															&lt;w:lsdexception name="Light List" unhidewhenused="false" semihidden="false" priority="61" locked="false"&gt;\r\n																																&lt;w:lsdexception name="Light Grid" unhidewhenused="false" semihidden="false" priority="62" locked="false"&gt;\r\n																																	&lt;w:lsdexception name="Medium Shading 1" unhidewhenused="false" semihidden="false" priority="63" locked="false"&gt;\r\n																																		&lt;w:lsdexception name="Medium Shading 2" unhidewhenused="false" semihidden="false" priority="64" locked="false"&gt;\r\n																																			&lt;w:lsdexception name="Medium List 1" unhidewhenused="false" semihidden="false" priority="65" locked="false"&gt;\r\n																																				&lt;w:lsdexception name="Medium List 2" unhidewhenused="false" semihidden="false" priority="66" locked="false"&gt;\r\n																																					&lt;w:lsdexception name="Medium Grid 1" unhidewhenused="false" semihidden="false" priority="67" locked="false"&gt;\r\n																																						&lt;w:lsdexception name="Medium Grid 2" unhidewhenused="false" semihidden="false" priority="68" locked="false"&gt;\r\n																																							&lt;w:lsdexception name="Medium Grid 3" unhidewhenused="false" semihidden="false" priority="69" locked="false"&gt;\r\n																																								&lt;w:lsdexception name="Dark List" unhidewhenused="false" semihidden="false" priority="70" locked="false"&gt;\r\n																																									&lt;w:lsdexception name="Colorful Shading" unhidewhenused="false" semihidden="false" priority="71" locked="false"&gt;\r\n																																										&lt;w:lsdexception name="Colorful List" unhidewhenused="false" semihidden="false" priority="72" locked="false"&gt;\r\n																																											&lt;w:lsdexception name="Colorful Grid" unhidewhenused="false" semihidden="false" priority="73" locked="false"&gt;\r\n																																												&lt;w:lsdexception name="Light Shading Accent 1" unhidewhenused="false" semihidden="false" priority="60" locked="false"&gt;\r\n																																													&lt;w:lsdexception name="Light List Accent 1" unhidewhenused="false" semihidden="false" priority="61" locked="false"&gt;\r\n																																														&lt;w:lsdexception name="Light Grid Accent 1" unhidewhenused="false" semihidden="false" priority="62" locked="false"&gt;\r\n																																															&lt;w:lsdexception name="Medium Shading 1 Accent 1" unhidewhenused="false" semihidden="false" priority="63" locked="false"&gt;\r\n																																																&lt;w:lsdexception name="Medium Shading 2 Accent 1" unhidewhenused="false" semihidden="false" priority="64" locked="false"&gt;\r\n																																																	&lt;w:lsdexception name="Medium List 1 Accent 1" unhidewhenused="false" semihidden="false" priority="65" locked="false"&gt;\r\n																																																		&lt;w:lsdexception name="Revision" unhidewhenused="false" locked="false"&gt;\r\n																																																			&lt;w:lsdexception name="List Paragraph" qformat="true" unhidewhenused="false" semihidden="false" priority="34" locked="false"&gt;\r\n																																																				&lt;w:lsdexception name="Quote" qformat="true" unhidewhenused="false" semihidden="false" priority="29" locked="false"&gt;\r\n																																																					&lt;w:lsdexception name="Intense Quote" qformat="true" unhidewhenused="false" semihidden="false" priority="30" locked="false"&gt;\r\n																																																						&lt;w:lsdexception name="Medium List 2 Accent 1" unhidewhenused="false" semihidden="false" priority="66" locked="false"&gt;\r\n																																																							&lt;w:lsdexception name="Medium Grid 1 Accent 1" unhidewhenused="false" semihidden="false" priority="67" locked="false"&gt;\r\n																																																								&lt;w:lsdexception name="Medium Grid 2 Accent 1" unhidewhenused="false" semihidden="false" priority="68" locked="false"&gt;\r\n																																																									&lt;w:lsdexception name="Medium Grid 3 Accent 1" unhidewhenused="false" semihidden="false" priority="69" locked="false"&gt;\r\n																																																										&lt;w:lsdexception name="Dark List Accent 1" unhidewhenused="false" semihidden="false" priority="70" locked="false"&gt;\r\n																																																											&lt;w:lsdexception name="Colorful Shading Accent 1" unhidewhenused="false" semihidden="false" priority="71" locked="false"&gt;\r\n																																																												&lt;w:lsdexception name="Colorful List Accent 1" unhidewhenused="false" semihidden="false" priority="72" locked="false"&gt;\r\n																																																													&lt;w:lsdexception name="Colorful Grid Accent 1" unhidewhenused="false" semihidden="false" priority="73" locked="false"&gt;\r\n																																																														&lt;w:lsdexception name="Light Shading Accent 2" unhidewhenused="false" semihidden="false" priority="60" locked="false"&gt;\r\n																																																															&lt;w:lsdexception name="Light List Accent 2" unhidewhenused="false" semihidden="false" priority="61" locked="false"&gt;\r\n																																																																&lt;w:lsdexception name="Light Grid Accent 2" unhidewhenused="false" semihidden="false" priority="62" locked="false"&gt;\r\n																																																																	&lt;w:lsdexception name="Medium Shading 1 Accent 2" unhidewhenused="false" semihidden="false" priority="63" locked="false"&gt;\r\n																																																																		&lt;w:lsdexception name="Medium Shading 2 Accent 2" unhidewhenused="false" semihidden="false" priority="64" locked="false"&gt;\r\n																																																																			&lt;w:lsdexception name="Medium List 1 Accent 2" unhidewhenused="false" semihidden="false" priority="65" locked="false"&gt;\r\n																																																																				&lt;w:lsdexception name="Medium List 2 Accent 2" unhidewhenused="false" semihidden="false" priority="66" locked="false"&gt;\r\n																																																																					&lt;w:lsdexception name="Medium Grid 1 Accent 2" unhidewhenused="false" semihidden="false" priority="67" locked="false"&gt;\r\n																																																																						&lt;w:lsdexception name="Medium Grid 2 Accent 2" unhidewhenused="false" semihidden="false" priority="68" locked="false"&gt;\r\n																																																																							&lt;w:lsdexception name="Medium Grid 3 Accent 2" unhidewhenused="false" semihidden="false" priority="69" locked="false"&gt;\r\n																																																																								&lt;w:lsdexception name="Dark List Accent 2" unhidewhenused="false" semihidden="false" priority="70" locked="false"&gt;\r\n																																																																									&lt;w:lsdexception name="Colorful Shading Accent 2" unhidewhenused="false" semihidden="false" priority="71" locked="false"&gt;\r\n																																																																										&lt;w:lsdexception name="Colorful List Accent 2" unhidewhenused="false" semihidden="false" priority="72" locked="false"&gt;\r\n																																																																											&lt;w:lsdexception name="Colorful Grid Accent 2" unhidewhenused="false" semihidden="false" priority="73" locked="false"&gt;\r\n																																																																												&lt;w:lsdexception name="Light Shading Accent 3" unhidewhenused="false" semihidden="false" priority="60" locked="false"&gt;\r\n																																																																													&lt;w:lsdexception name="Light List Accent 3" unhidewhenused="false" semihidden="false" priority="61" locked="false"&gt;\r\n																																																																														&lt;w:lsdexception name="Light Grid Accent 3" unhidewhenused="false" semihidden="false" priority="62" locked="false"&gt;\r\n																																																																															&lt;w:lsdexception name="Medium Shading 1 Accent 3" unhidewhenused="false" semihidden="false" priority="63" locked="false"&gt;\r\n																																																																																&lt;w:lsdexception name="Medium Shading 2 Accent 3" unhidewhenused="false" semihidden="false" priority="64" locked="false"&gt;\r\n																																																																																	&lt;w:lsdexception name="Medium List 1 Accent 3" unhidewhenused="false" semihidden="false" priority="65" locked="false"&gt;\r\n																																																																																		&lt;w:lsdexception name="Medium List 2 Accent 3" unhidewhenused="false" semihidden="false" priority="66" locked="false"&gt;\r\n																																																																																			&lt;w:lsdexception name="Medium Grid 1 Accent 3" unhidewhenused="false" semihidden="false" priority="67" locked="false"&gt;\r\n																																																																																				&lt;w:lsdexception name="Medium Grid 2 Accent 3" unhidewhenused="false" semihidden="false" priority="68" locked="false"&gt;\r\n																																																																																					&lt;w:lsdexception name="Medium Grid 3 Accent 3" unhidewhenused="false" semihidden="false" priority="69" locked="false"&gt;\r\n																																																																																						&lt;w:lsdexception name="Dark List Accent 3" unhidewhenused="false" semihidden="false" priority="70" locked="false"&gt;\r\n																																																																																							&lt;w:lsdexception name="Colorful Shading Accent 3" unhidewhenused="false" semihidden="false" priority="71" locked="false"&gt;\r\n																																																																																								&lt;w:lsdexception name="Colorful List Accent 3" unhidewhenused="false" semihidden="false" priority="72" locked="false"&gt;\r\n																																																																																									&lt;w:lsdexception name="Colorful Grid Accent 3" unhidewhenused="false" semihidden="false" priority="73" locked="false"&gt;\r\n																																																																																										&lt;w:lsdexception name="Light Shading Accent 4" unhidewhenused="false" semihidden="false" priority="60" locked="false"&gt;\r\n																																																																																											&lt;w:lsdexception name="Light List Accent 4" unhidewhenused="false" semihidden="false" priority="61" locked="false"&gt;\r\n																																																																																												&lt;w:lsdexception name="Light Grid Accent 4" unhidewhenused="false" semihidden="false" priority="62" locked="false"&gt;\r\n																																																																																													&lt;w:lsdexception name="Medium Shading 1 Accent 4" unhidewhenused="false" semihidden="false" priority="63" locked="false"&gt;\r\n																																																																																														&lt;w:lsdexception name="Medium Shading 2 Accent 4" unhidewhenused="false" semihidden="false" priority="64" locked="false"&gt;\r\n																																																																																															&lt;w:lsdexception name="Medium List 1 Accent 4" unhidewhenused="false" semihidden="false" priority="65" locked="false"&gt;\r\n																																																																																																&lt;w:lsdexception name="Medium List 2 Accent 4" unhidewhenused="false" semihidden="false" priority="66" locked="false"&gt;\r\n																																																																																																	&lt;w:lsdexception name="Medium Grid 1 Accent 4" unhidewhenused="false" semihidden="false" priority="67" locked="false"&gt;\r\n																																																																																																		&lt;w:lsdexception name="Medium Grid 2 Accent 4" unhidewhenused="false" semihidden="false" priority="68" locked="false"&gt;\r\n																																																																																																			&lt;w:lsdexception name="Medium Grid 3 Accent 4" unhidewhenused="false" semihidden="false" priority="69" locked="false"&gt;\r\n																																																																																																				&lt;w:lsdexception name="Dark List Accent 4" unhidewhenused="false" semihidden="false" priority="70" locked="false"&gt;\r\n																																																																																																					&lt;w:lsdexception name="Colorful Shading Accent 4" unhidewhenused="false" semihidden="false" priority="71" locked="false"&gt;\r\n																																																																																																						&lt;w:lsdexception name="Colorful List Accent 4" unhidewhenused="false" semihidden="false" priority="72" locked="false"&gt;\r\n																																																																																																							&lt;w:lsdexception name="Colorful Grid Accent 4" unhidewhenused="false" semihidden="false" priority="73" locked="false"&gt;\r\n																																																																																																								&lt;w:lsdexception name="Light Shading Accent 5" unhidewhenused="false" semihidden="false" priority="60" locked="false"&gt;\r\n																																																																																																									&lt;w:lsdexception name="Light List Accent 5" unhidewhenused="false" semihidden="false" priority="61" locked="false"&gt;\r\n																																																																																																										&lt;w:lsdexception name="Light Grid Accent 5" unhidewhenused="false" semihidden="false" priority="62" locked="false"&gt;\r\n																																																																																																											&lt;w:lsdexception name="Medium Shading 1 Accent 5" unhidewhenused="false" semihidden="false" priority="63" locked="false"&gt;\r\n																																																																																																												&lt;w:lsdexception name="Medium Shading 2 Accent 5" unhidewhenused="false" semihidden="false" priority="64" locked="false"&gt;\r\n																																																																																																													&lt;w:lsdexception name="Medium List 1 Accent 5" unhidewhenused="false" semihidden="false" priority="65" locked="false"&gt;\r\n																																																																																																														&lt;w:lsdexception name="Medium List 2 Accent 5" unhidewhenused="false" semihidden="false" priority="66" locked="false"&gt;\r\n																																																																																																															&lt;w:lsdexception name="Medium Grid 1 Accent 5" unhidewhenused="false" semihidden="false" priority="67" locked="false"&gt;\r\n																																																																																																																&lt;w:lsdexception name="Medium Grid 2 Accent 5" unhidewhenused="false" semihidden="false" priority="68" locked="false"&gt;\r\n																																																																																																																	&lt;w:lsdexception name="Medium Grid 3 Accent 5" unhidewhenused="false" semihidden="false" priority="69" locked="false"&gt;\r\n																																																																																																																		&lt;w:lsdexception name="Dark List Accent 5" unhidewhenused="false" semihidden="false" priority="70" locked="false"&gt;\r\n																																																																																																																			&lt;w:lsdexception name="Colorful Shading Accent 5" unhidewhenused="false" semihidden="false" priority="71" locked="false"&gt;\r\n																																																																																																																				&lt;w:lsdexception name="Colorful List Accent 5" unhidewhenused="false" semihidden="false" priority="72" locked="false"&gt;\r\n																																																																																																																					&lt;w:lsdexception name="Colorful Grid Accent 5" unhidewhenused="false" semihidden="false" priority="73" locked="false"&gt;\r\n																																																																																																																						&lt;w:lsdexception name="Light Shading Accent 6" unhidewhenused="false" semihidden="false" priority="60" locked="false"&gt;\r\n																																																																																																																							&lt;w:lsdexception name="Light List Accent 6" unhidewhenused="false" semihidden="false" priority="61" locked="false"&gt;\r\n																																																																																																																								&lt;w:lsdexception name="Light Grid Accent 6" unhidewhenused="false" semihidden="false" priority="62" locked="false"&gt;\r\n																																																																																																																									&lt;w:lsdexception name="Medium Shading 1 Accent 6" unhidewhenused="false" semihidden="false" priority="63" locked="false"&gt;\r\n																																																																																																																										&lt;w:lsdexception name="Medium Shading 2 Accent 6" unhidewhenused="false" semihidden="false" priority="64" locked="false"&gt;\r\n																																																																																																																											&lt;w:lsdexception name="Medium List 1 Accent 6" unhidewhenused="false" semihidden="false" priority="65" locked="false"&gt;\r\n																																																																																																																												&lt;w:lsdexception name="Medium List 2 Accent 6" unhidewhenused="false" semihidden="false" priority="66" locked="false"&gt;\r\n																																																																																																																													&lt;w:lsdexception name="Medium Grid 1 Accent 6" unhidewhenused="false" semihidden="false" priority="67" locked="false"&gt;\r\n																																																																																																																														&lt;w:lsdexception name="Medium Grid 2 Accent 6" unhidewhenused="false" semihidden="false" priority="68" locked="false"&gt;\r\n																																																																																																																															&lt;w:lsdexception name="Medium Grid 3 Accent 6" unhidewhenused="false" semihidden="false" priority="69" locked="false"&gt;\r\n																																																																																																																																&lt;w:lsdexception name="Dark List Accent 6" unhidewhenused="false" semihidden="false" priority="70" locked="false"&gt;\r\n																																																																																																																																	&lt;w:lsdexception name="Colorful Shading Accent 6" unhidewhenused="false" semihidden="false" priority="71" locked="false"&gt;\r\n																																																																																																																																		&lt;w:lsdexception name="Colorful List Accent 6" unhidewhenused="false" semihidden="false" priority="72" locked="false"&gt;\r\n																																																																																																																																			&lt;w:lsdexception name="Colorful Grid Accent 6" unhidewhenused="false" semihidden="false" priority="73" locked="false"&gt;\r\n																																																																																																																																				&lt;w:lsdexception name="Subtle Emphasis" qformat="true" unhidewhenused="false" semihidden="false" priority="19" locked="false"&gt;\r\n																																																																																																																																					&lt;w:lsdexception name="Intense Emphasis" qformat="true" unhidewhenused="false" semihidden="false" priority="21" locked="false"&gt;\r\n																																																																																																																																						&lt;w:lsdexception name="Subtle Reference" qformat="true" unhidewhenused="false" semihidden="false" priority="31" locked="false"&gt;\r\n																																																																																																																																							&lt;w:lsdexception name="Intense Reference" qformat="true" unhidewhenused="false" semihidden="false" priority="32" locked="false"&gt;\r\n																																																																																																																																								&lt;w:lsdexception name="Book Title" qformat="true" unhidewhenused="false" semihidden="false" priority="33" locked="false"&gt;\r\n																																																																																																																																									&lt;w:lsdexception name="Bibliography" priority="37" locked="false"&gt;\r\n																																																																																																																																										&lt;w:lsdexception name="TOC Heading" qformat="true" priority="39" locked="false"&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:lsdexception&gt;&lt;/w:latentstyles&gt;&lt;/xml&gt;\r\n&lt;style&gt;\r\n&lt;!--\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n	{mso-style-name:"Table Normal";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:"";\r\n	mso-padding-alt:0in 5.4pt 0in 5.4pt;\r\n	mso-para-margin:0in;\r\n	mso-para-margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:12.0pt;\r\n	font-family:Cambria;\r\n	mso-ascii-font-family:Cambria;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-hansi-font-family:Cambria;\r\n	mso-hansi-theme-font:minor-latin;}\r\n--&gt;\r\n&lt;/style&gt;\r\n&lt;!--\r\nStartFragment\r\n--&gt;\r\n\r\n&lt;div&gt;\r\n	&lt;p&gt;&lt;span style="font-weight: bold;"&gt;What We Do:&lt;/span&gt;&lt;/p&gt;\r\n	&lt;p&gt;We pride ourselves in being able to come up with effective,\r\nefficient and practical solutions to any of your home repair needs. If you donâ€™t see your project on this list,\r\ncontact us and you might be surprised that we may be able to work with you.&lt;/p&gt;&lt;/div&gt;\r\n&lt;p&gt;Â·Soffit and Siding Repair and Replacement&lt;/p&gt;\r\n&lt;p&gt;Â·Window Repair and Replacement &lt;/p&gt;\r\n&lt;p&gt;Â·Door Repair and Replacement &lt;br /&gt;\r\n	&lt;/p&gt;\r\n&lt;p&gt;Â·Moderate Plumbing&lt;/p&gt;\r\n&lt;p&gt;Â·Moderate Electrical&lt;/p&gt;\r\n&lt;p&gt;Â·Deck Construction and Repair&lt;/p&gt;\r\n&lt;p&gt;Â·Roofing Repair&lt;/p&gt;\r\n&lt;p&gt;Â·Sheetrock and Plaster&lt;/p&gt;\r\n&lt;p&gt;Â·Moderate Concrete Work&lt;/p&gt;\r\n&lt;p&gt;Â·Kitchen Remodels&lt;/p&gt;\r\n&lt;p&gt;Â·Bathroom Remodels&lt;/p&gt;\r\n&lt;!--\r\nEndFragment\r\n--&gt;\r\n', '2013-06-12 09:10:29', 12, 78, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(125, 'Services', '\r\n&lt;section id="services" class="section-block"&gt;\r\n	&lt;h1 aria-describedby="cke_265" title="Rich Text Editor, editor3" aria-label="Rich Text Editor, editor3" role="textbox" spellcheck="false" tabindex="0" style="position: relative;" class="section-title cke_editable cke_editable_inline cke_contents_ltr"&gt;Awesome Service. &lt;small&gt;See Below, You Might Be Interested!&lt;/small&gt;&lt;/h1&gt;\r\n	&lt;div class="container"&gt;\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span12"&gt;\r\n				&lt;p aria-describedby="cke_1421" title="Rich Text Editor, editor37" aria-label="Rich Text Editor, editor37" role="textbox" spellcheck="false" tabindex="0" class="lead cke_editable cke_editable_inline cke_contents_ltr" style="position: relative;"&gt;There are many ways to stay connected to your customers and "I Do Campaigns" can assist without inundating your customers with too much information.&lt;/p&gt;\r\n				&lt;p aria-describedby="cke_1455" title="Rich Text Editor, editor38" aria-label="Rich Text Editor, editor38" role="textbox" spellcheck="false" tabindex="0" class="lead cke_editable cke_editable_inline cke_contents_ltr" style="position: relative;"&gt;&lt;span style="font-weight: bold;"&gt;What we offer:&lt;/span&gt;&lt;/p&gt;\r\n				&lt;ul&gt;\r\n					&lt;li&gt;Measurable results&lt;/li&gt;\r\n					&lt;li&gt;Increase response rates&lt;/li&gt;\r\n					&lt;li&gt;Database growth&lt;/li&gt;\r\n					&lt;li&gt;Push information out to pull in information &lt;/li&gt;\r\n					&lt;li&gt;Increase traffic to our site/pages&lt;/li&gt;\r\n				&lt;/ul&gt;\r\n				&lt;p aria-describedby="cke_1489" title="Rich Text Editor, editor39" aria-label="Rich Text Editor, editor39" role="textbox" spellcheck="false" tabindex="0" style="position: relative;" class="lead cke_editable cke_editable_inline cke_contents_ltr"&gt;&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span4"&gt;\r\n				&lt;div class="service"&gt;\r\n					&lt;div class="service-icon"&gt;&lt;span style="font-style: italic;"&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;h3 aria-describedby="cke_503" title="Rich Text Editor, editor10" aria-label="Rich Text Editor, editor10" role="textbox" spellcheck="false" tabindex="0" class="title cke_editable cke_editable_inline cke_contents_ltr"&gt;Just a thought...&lt;/h3&gt;\r\n					&lt;p align="left" aria-describedby="cke_1523" title="Rich Text Editor, editor40" aria-label="Rich Text Editor, editor40" role="textbox" spellcheck="false" tabindex="0" class="cke_editable cke_editable_inline cke_contents_ltr" style="position: relative;"&gt;Ask your customers, "How would you like to receive information?â€&lt;/p&gt;\r\n					&lt;p align="left" aria-describedby="cke_1557" title="Rich Text Editor, editor41" aria-label="Rich Text Editor, editor41" role="textbox" spellcheck="false" tabindex="0" class="cke_editable cke_editable_inline cke_contents_ltr" style="position: relative;"&gt;Email communications should be short, directly to the point, and understood within two minutes or less&lt;/p&gt;\r\n					&lt;p align="left" aria-describedby="cke_1591" title="Rich Text Editor, editor42" aria-label="Rich Text Editor, editor42" role="textbox" spellcheck="false" tabindex="0" class="cke_editable cke_editable_inline cke_contents_ltr" style="position: relative;"&gt;Tailor your message to the appropriate audience&lt;/p&gt;\r\n					&lt;p align="left" aria-describedby="cke_1625" title="Rich Text Editor, editor43" aria-label="Rich Text Editor, editor43" role="textbox" spellcheck="false" tabindex="0" class="cke_editable cke_editable_inline cke_contents_ltr" style="position: relative;"&gt;Donâ€™t forget to add the fun factor, by making your communications/campaigns fun&lt;/p&gt;&lt;br /&gt;\r\n					&lt;a href="#contact" class="btn btn-danger"&gt;Learn More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="span4"&gt;\r\n				&lt;div class="service"&gt;\r\n					&lt;div class="service-icon"&gt;&lt;span style="font-style: italic;"&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;h3 aria-describedby="cke_537" title="Rich Text Editor, editor11" aria-label="Rich Text Editor, editor11" role="textbox" spellcheck="false" tabindex="0" class="title cke_editable cke_editable_inline cke_contents_ltr"&gt;Campaign ideas&lt;/h3&gt;\r\n					&lt;p aria-describedby="cke_1659" title="Rich Text Editor, editor44" aria-label="Rich Text Editor, editor44" role="textbox" spellcheck="false" tabindex="0" class="cke_editable cke_editable_inline cke_contents_ltr" style="position: relative;"&gt;There are many ways to build long-term business relationships and here a few that may help you understand how "I DO Campaigns" can assist.&lt;/p&gt;\r\n					&lt;ul&gt;\r\n						&lt;li&gt;Monthly newsletters with important updates&lt;/li&gt;\r\n						&lt;li&gt;Partner announcements &lt;/li&gt;\r\n						&lt;li&gt;Welcome new customers&lt;/li&gt;\r\n						&lt;li&gt;Facilitate a community on products or start a discussion&lt;/li&gt;\r\n						&lt;li&gt;Highlight your customers&lt;/li&gt;\r\n						&lt;li&gt;Announce offerings or promotion&lt;/li&gt;\r\n						&lt;li&gt;Event invite&lt;/li&gt;\r\n						&lt;li&gt;Send holiday or birthday cards&lt;/li&gt;\r\n						&lt;li&gt;Tips and Trick&lt;/li&gt;\r\n					&lt;/ul&gt;\r\n					&lt;p aria-describedby="cke_1693" title="Rich Text Editor, editor45" aria-label="Rich Text Editor, editor45" role="textbox" spellcheck="false" tabindex="0" class="cke_editable cke_editable_inline cke_contents_ltr" style="position: relative;"&gt;Drive customers to social media sites to build awareness, such as:&lt;/p&gt;\r\n					&lt;ul&gt;\r\n						&lt;li&gt;Facebook&lt;/li&gt;\r\n						&lt;li&gt;LinkedIn&lt;/li&gt;\r\n						&lt;li&gt;Twitter&lt;/li&gt;\r\n						&lt;li&gt;YouTube&lt;/li&gt;\r\n					&lt;/ul&gt;&lt;a href="#contact" class="btn btn-danger"&gt;Learn More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="span4"&gt;\r\n				&lt;div class="service"&gt;\r\n					&lt;div class="service-icon"&gt;&lt;span style="font-style: italic;"&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;h3 aria-describedby="cke_571" title="Rich Text Editor, editor12" aria-label="Rich Text Editor, editor12" role="textbox" spellcheck="false" tabindex="0" class="title cke_editable cke_editable_inline cke_contents_ltr"&gt;Prospect Process&lt;/h3&gt;\r\n					&lt;p aria-describedby="cke_1727" title="Rich Text Editor, editor46" aria-label="Rich Text Editor, editor46" role="textbox" spellcheck="false" tabindex="0" class="cke_editable cke_editable_inline cke_contents_ltr" style="position: relative;"&gt;What type of campaign?&lt;/p&gt;\r\n					&lt;ul&gt;\r\n						&lt;li&gt;Build awareness&lt;/li&gt;\r\n						&lt;li&gt; Generate leads&lt;/li&gt;\r\n						&lt;li&gt;Maintain on going dialogue with customers&lt;br /&gt;\r\n							&lt;/li&gt;\r\n						&lt;li&gt;Amplify the reach and impact of other marketing efforts&lt;br /&gt;\r\n							&lt;/li&gt;\r\n						&lt;li&gt;Drive sales&lt;br /&gt;\r\n							&lt;/li&gt;\r\n					&lt;/ul&gt;\r\n					&lt;ul&gt;\r\n					&lt;/ul&gt;\r\n					&lt;p aria-describedby="cke_1761" title="Rich Text Editor, editor47" aria-label="Rich Text Editor, editor47" role="textbox" spellcheck="false" tabindex="0" class="cke_editable cke_editable_inline cke_contents_ltr" style="position: relative;"&gt;Who is the audience?&lt;/p&gt;\r\n					&lt;ul&gt;\r\n						&lt;li&gt;Current customers&lt;/li&gt;\r\n						&lt;li&gt;Prospects&lt;/li&gt;\r\n						&lt;li&gt;Attendees&lt;/li&gt;\r\n						&lt;li&gt;Partners&lt;/li&gt;\r\n					&lt;/ul&gt;\r\n					&lt;p aria-describedby="cke_1795" title="Rich Text Editor, editor48" aria-label="Rich Text Editor, editor48" role="textbox" spellcheck="false" tabindex="0" class="cke_editable cke_editable_inline cke_contents_ltr" style="position: relative;"&gt;What is the goal or objective?&lt;/p&gt;\r\n					&lt;ul&gt;\r\n						&lt;li&gt;Reach new customers&lt;/li&gt;\r\n						&lt;li&gt;Nurture leads&lt;/li&gt;\r\n						&lt;li&gt;Drive repeats business&lt;/li&gt;\r\n					&lt;/ul&gt;&lt;a href="#contact" class="btn btn-danger"&gt;Learn More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n		&lt;div class="row"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;', '2013-06-04 19:43:37', 4, 71, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(121, 'Footer', '\r\n&lt;div id="BottCredits"&gt;\r\n	&lt;div class="Context"&gt;&lt;span class="Legal"&gt; IDoCampaigns, LLC &amp;copy;2013 | Mpls. Minnesota 55391 &lt;a href="tel:612-483-0967"&gt;612-483-0967&lt;/a&gt;&lt;/span&gt;&lt;span class="BottomMenu"&gt;&lt;a href="#about"&gt;about&lt;/a&gt;&lt;a href="#services"&gt;services&lt;/a&gt;&lt;a href="#contact"&gt;contact &lt;/a&gt;\r\n			&lt;div class="SocialIcons"&gt;&lt;a target="_blank" href="http://www.facebook.com/idocampaigns"&gt;&lt;img alt="Like Us on FaceBook" title="Like Us on FaceBook" src="/Editor/assets/FaceBookIcon.png" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n			&lt;div class="SocialIcons"&gt;&lt;a target="_blank" href="http://www.twitter.com/idocampaigns"&gt;&lt;img alt="Follow Us on Twitter" title="Follow Us on Twitter" src="/Editor/assets/TwitterIcon.png" /&gt;&lt;/a&gt;&lt;/div&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;', '2013-06-04 19:43:37', 4, 71, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(126, 'Contact Us', '&lt;div class="SmallLogo"&gt;&lt;img src="/images/spacer.gif"&gt;&lt;/div&gt;&lt;h1&gt;Contact&lt;/h1&gt;&lt;p&gt;Hello! We are happy you found us. How can we help? Please provide your contact information and we will get back to you immediately.&lt;/p&gt;&lt;p&gt;Regards, The Digiapolis team.&lt;/p&gt;&lt;hr&gt;&lt;div class="TwoCol"&gt; &lt;div class="LeftPane"&gt; &lt;div class="ContactAddress"&gt; &lt;div class="CompanyName"&gt;Digiapolis&lt;/div&gt; &lt;div class="CompanyAddress"&gt; &lt;div&gt;4330 North Shore Drive&lt;/div&gt; &lt;div&gt;Orono, Minnesota 55364&lt;/div&gt; &lt;div&gt;p: &lt;a href="tel:612-860-1025"&gt;612-860-1025&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="RightPane"&gt; &lt;div id="divForm"&gt; &lt;form class="BasicForm" name="formContactUs" id="formContactUs" method="post" action="" onsubmit="return(fValidateForm(event,this,0))"&gt; &lt;input class="xf_UpdInd" name="UpdInd" id="UpdInd" type="hidden"&gt; &lt;input name="Source" id="Source" value="ContactUs" type="hidden"&gt; &lt;input name="formModeInd" id="AcFormMode" value="Contact" type="hidden"&gt; &lt;input class="xf_UpdMode" name="formMode" type="hidden"&gt; &lt;div class="StdRow"&gt; &lt;div class="StdLabel"&gt;* First Name&lt;/div&gt; &lt;div class="StdInput Required"&gt; &lt;input class="xf_Alpha xf_Required" name="FirstName" id="FirstName" type="text"&gt;&lt;/div&gt;&lt;br class="ClearFloat"&gt; &lt;/div&gt; &lt;div class="StdRow"&gt; &lt;div class="StdLabel"&gt;* Last Name&lt;/div&gt; &lt;div class="StdInput Required"&gt; &lt;input class="xf_Alpha xf_Required" name="LastName" id="LastName" type="text"&gt;&lt;/div&gt;&lt;br class="ClearFloat"&gt; &lt;/div&gt; &lt;div class="StdRow"&gt; &lt;div class="StdLabel"&gt;* Email&lt;/div&gt; &lt;div class="StdInput Required"&gt; &lt;input class="xf_Alpha xf_Required xf_Email" name="eMail" id="eMail" type="text"&gt;&lt;/div&gt;&lt;br class="ClearFloat"&gt; &lt;/div&gt; &lt;div class="StdRow"&gt; &lt;div class="StdLabel"&gt;Company Name&lt;/div&gt; &lt;div class="StdInput"&gt; &lt;input class="xf_Alpha" name="CompanyName" id="CompanyName" type="text"&gt;&lt;/div&gt;&lt;br class="ClearFloat"&gt; &lt;/div&gt; &lt;div class="StdRow"&gt; &lt;div class="StdLabel"&gt;* Phone&lt;/div&gt; &lt;div class="StdInput Required"&gt; &lt;input class="xf_Alpha xf_Required" name="Phone" id="Phone" type="text"&gt;&lt;/div&gt;&lt;br class="ClearFloat"&gt; &lt;/div&gt; &lt;div class="StdRow"&gt; &lt;div class="StdLabel"&gt;* How can we help?&lt;/div&gt; &lt;div class="StdInput Required"&gt; &lt;textarea class="xf_Alpha xf_Required" name="Context" id="Context"&gt;&lt;/textarea&gt;&lt;/div&gt;&lt;br class="ClearFloat"&gt; &lt;/div&gt; &lt;div class="StdRow Footer Action"&gt; &lt;input class="ActionButton" value="Submit" type="submit"&gt;&lt;/div&gt; &lt;/form&gt;&lt;/div&gt;&lt;/div&gt;&lt;br class="ClearFloat"&gt; &lt;/div&gt; ', '2013-06-04 17:56:38', 3, 62, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(162, 'Complete Repair', '\r\n&lt;section id="home"&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;div class="twelve columns"&gt;\r\n			&lt;h1 class="fade-it"&gt;&lt;img src="img/logo_header.png" alt="YOURLOGO" /&gt;&lt;/h1&gt;\r\n			&lt;div class="fade-it "&gt;\r\n				&lt;div class="roles"&gt;\r\n					&lt;div style="margin-top: -140px;"&gt; We are Design &lt;/div&gt;\r\n					&lt;div&gt; We are Code&lt;/div&gt;\r\n					&lt;div&gt; &lt;br /&gt;\r\n						&lt;/div&gt;\r\n					&lt;div&gt; &lt;/div&gt;\r\n					&lt;div&gt; &lt;/div&gt;\r\n					&lt;div&gt;Efficient and&lt;br /&gt;\r\n						&lt;/div&gt;\r\n					&lt;div&gt; &lt;/div&gt;\r\n					&lt;div&gt; Practical Solutions &lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n		&lt;!--\r\n		LITTLE LOGO SEE WHAT WE DO\r\n		--&gt;\r\n		\r\n		&lt;div class="fade-it" id="down_button"&gt;&lt;a href="#whatwedo"&gt;&lt;/a&gt;&lt;/div&gt;\r\n		&lt;!--\r\n		END LITTLE LOGO SEE WHAT WE DO\r\n		--&gt;\r\n		&lt;/div&gt;&lt;/section&gt;', '2013-06-12 10:29:47', 0, 78, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(163, 'Complete Repair', '\r\n&lt;section id="home"&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;div class="twelve columns"&gt;\r\n			&lt;h1 class="fade-it"&gt;&lt;img src="img/logo_header.png" alt="YOURLOGO" /&gt;&lt;/h1&gt;\r\n			&lt;div class="fade-it "&gt;\r\n				&lt;div class="roles"&gt;\r\n					&lt;div style="margin-top: -140px;"&gt; We are Design &lt;/div&gt;\r\n					&lt;div&gt; We are Code &lt;/div&gt;\r\n					&lt;div&gt; We are Video &lt;/div&gt;\r\n					&lt;div&gt; We are Friendly &lt;/div&gt;\r\n					&lt;div&gt; We are what you need. &lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n		&lt;!--\r\n		LITTLE LOGO SEE WHAT WE DO\r\n		--&gt;\r\n		\r\n		&lt;div class="fade-it" id="down_button"&gt;&lt;a href="#whatwedo"&gt;&lt;/a&gt;&lt;/div&gt;\r\n		&lt;!--\r\n		END LITTLE LOGO SEE WHAT WE DO\r\n		--&gt;\r\n		&lt;/div&gt;&lt;/section&gt;', '0000-00-00 00:00:00', 0, 78, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(164, 'About Us', '\r\n&lt;section id="whatwedo"&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;div class="twelve columns centered"&gt;\r\n			&lt;h2&gt;What We Do. &lt;span style="font-style: italic;"&gt;&lt;/span&gt;&lt;/h2&gt;&lt;/div&gt;&lt;/div&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;div class="eleven columns centered"&gt;\r\n			&lt;p class="subtittle"&gt;\r\n				&lt;!--\r\n				[if gte mso 9]&gt;&lt;xml&gt;\r\n &lt;o:OfficeDocumentSettings&gt;\r\n  &lt;o:AllowPNG/&gt;\r\n &lt;/o:OfficeDocumentSettings&gt;\r\n&lt;/xml&gt;&lt;![endif]\r\n				--&gt;\r\n				&lt;/p&gt;\r\n			&lt;p class="subtittle"&gt;\r\n				&lt;!--\r\n				[if gte mso 9]&gt;&lt;xml&gt;\r\n &lt;w:WordDocument&gt;\r\n  &lt;w:View&gt;Normal&lt;/w:View&gt;\r\n  &lt;w:Zoom&gt;0&lt;/w:Zoom&gt;\r\n  &lt;w:TrackMoves/&gt;\r\n  &lt;w:TrackFormatting/&gt;\r\n  &lt;w:PunctuationKerning/&gt;\r\n  &lt;w:ValidateAgainstSchemas/&gt;\r\n  &lt;w:SaveIfXMLInvalid&gt;false&lt;/w:SaveIfXMLInvalid&gt;\r\n  &lt;w:IgnoreMixedContent&gt;false&lt;/w:IgnoreMixedContent&gt;\r\n  &lt;w:AlwaysShowPlaceholderText&gt;false&lt;/w:AlwaysShowPlaceholderText&gt;\r\n  &lt;w:DoNotPromoteQF/&gt;\r\n  &lt;w:LidThemeOther&gt;EN-US&lt;/w:LidThemeOther&gt;\r\n  &lt;w:LidThemeAsian&gt;X-NONE&lt;/w:LidThemeAsian&gt;\r\n  &lt;w:LidThemeComplexScript&gt;X-NONE&lt;/w:LidThemeComplexScript&gt;\r\n  &lt;w:Compatibility&gt;\r\n   &lt;w:BreakWrappedTables/&gt;\r\n   &lt;w:SnapToGridInCell/&gt;\r\n   &lt;w:WrapTextWithPunct/&gt;\r\n   &lt;w:UseAsianBreakRules/&gt;\r\n   &lt;w:DontGrowAutofit/&gt;\r\n   &lt;w:SplitPgBreakAndParaMark/&gt;\r\n   &lt;w:EnableOpenTypeKerning/&gt;\r\n   &lt;w:DontFlipMirrorIndents/&gt;\r\n   &lt;w:OverrideTableStyleHps/&gt;\r\n  &lt;/w:Compatibility&gt;\r\n  &lt;m:mathPr&gt;\r\n   &lt;m:mathFont m:val="Cambria Math"/&gt;\r\n   &lt;m:brkBin m:val="before"/&gt;\r\n   &lt;m:brkBinSub m:val="&amp;#45;-"/&gt;\r\n   &lt;m:smallFrac m:val="off"/&gt;\r\n   &lt;m:dispDef/&gt;\r\n   &lt;m:lMargin m:val="0"/&gt;\r\n   &lt;m:rMargin m:val="0"/&gt;\r\n   &lt;m:defJc m:val="centerGroup"/&gt;\r\n   &lt;m:wrapIndent m:val="1440"/&gt;\r\n   &lt;m:intLim m:val="subSup"/&gt;\r\n   &lt;m:naryLim m:val="undOvr"/&gt;\r\n  &lt;/m:mathPr&gt;&lt;/w:WordDocument&gt;\r\n&lt;/xml&gt;&lt;![endif]\r\n				--&gt;\r\n				\r\n				&lt;!--\r\n				[if gte mso 9]&gt;&lt;xml&gt;\r\n &lt;w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"\r\n  DefSemiHidden="true" DefQFormat="false" DefPriority="99"\r\n  LatentStyleCount="267"&gt;\r\n  &lt;w:LsdException Locked="false" Priority="0" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Normal"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="9" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="heading 1"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="39" Name="toc 1"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="39" Name="toc 2"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="39" Name="toc 3"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="39" Name="toc 4"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="39" Name="toc 5"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="39" Name="toc 6"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="39" Name="toc 7"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="39" Name="toc 8"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="39" Name="toc 9"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="10" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Title"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="11" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtitle"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="22" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Strong"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="20" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Emphasis"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="59" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Table Grid"/&gt;\r\n  &lt;w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="1" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="No Spacing"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 1"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 1"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 1"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 1"/&gt;\r\n  &lt;w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="34" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="List Paragraph"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="29" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Quote"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="30" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Quote"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 1"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 1"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 1"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 1"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 1"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 2"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 2"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 2"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 2"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 2"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 2"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 2"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 2"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 2"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 3"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 3"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 3"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 3"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 3"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 3"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 3"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 3"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 3"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 4"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 4"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 4"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 4"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 4"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 4"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 4"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 4"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 4"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 5"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 5"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 5"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 5"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 5"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 5"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 5"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 5"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 5"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 6"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 6"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 6"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 6"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 6"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 6"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 6"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 6"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 6"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="19" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="21" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="31" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="32" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Reference"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="33" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Book Title"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="37" Name="Bibliography"/&gt;\r\n  &lt;w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading"/&gt;\r\n &lt;/w:LatentStyles&gt;\r\n&lt;/xml&gt;&lt;![endif]\r\n				--&gt;\r\n				\r\n				&lt;!--\r\n				[if gte mso 10]&gt;\r\n&lt;style&gt;\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:"Table Normal";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:"";\r\n	mso-padding-alt:0in 5.4pt 0in 5.4pt;\r\n	mso-para-margin-top:0in;\r\n	mso-para-margin-right:0in;\r\n	mso-para-margin-bottom:10.0pt;\r\n	mso-para-margin-left:0in;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:"Calibri","sans-serif";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;}\r\n&lt;/style&gt;\r\n&lt;![endif]\r\n				--&gt;\r\n				&lt;/p&gt;\r\n			&lt;p class="MsoNormal"&gt;&lt;span style="font-size:12.0pt;line-height:115%"&gt;&lt;/span&gt;&lt;/p&gt;\r\n			&lt;p&gt;We pride ourselves\r\non being able to come up with effective, efficient and practical solutions to\r\nany of your home repair needs. If you\r\ndonâ€™t see your project on this list, contact us and you might be surprised that\r\nwe may be able to work with you.&lt;/p&gt;\r\n			&lt;div&gt;\r\n				&lt;p&gt;Â·Soffit\r\nand Siding Repair and Replacement&lt;/p&gt;\r\n				&lt;p&gt;Â·Window\r\nRepair and Replacement&lt;/p&gt;\r\n				&lt;p&gt;Â·Door\r\nReplacement and Repair&lt;/p&gt;\r\n				&lt;p&gt;Â·Moderate\r\nPlumbing&lt;/p&gt;\r\n				&lt;p&gt;Â·Moderate\r\nElectrical&lt;/p&gt;\r\n				&lt;p&gt;Â·Deck\r\nConstruction and Repair&lt;/p&gt;\r\n				&lt;p&gt;Â·Roofing\r\nRepair&lt;/p&gt;\r\n				&lt;p&gt;Â·Sheetrock\r\nand Plaster&lt;/p&gt;\r\n				&lt;p&gt;Â·Moderate\r\nConcrete Work&lt;/p&gt;\r\n				&lt;p&gt;Â·Kitchen\r\nRemodels&lt;/p&gt;\r\n				&lt;p&gt;Â·Bathroom\r\nRemodels&lt;/p&gt;\r\n				&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;!--\r\n		WORKS GRID\r\n		--&gt;\r\n		\r\n		&lt;ul class="og-grid" id="og-grid"&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/2big.png" href="http://www.google.be"&gt;&lt;img alt="img01" src="img/thumbs/1.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/1big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/2.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/3big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/3.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/4big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/4.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/6big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/5.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/7big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/6.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/7big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/7.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/8big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/8.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot." data-title="Name Of Project" data-largesrc="img/9big.png" href="#"&gt;&lt;img alt="img01" src="img/thumbs/9.jpg" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n		&lt;!--\r\n		END WORKS GRID\r\n		--&gt;\r\n		&lt;/div&gt;&lt;/section&gt;', '2013-06-12 12:25:33', 0, 78, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(165, 'What We Do', '\r\n&lt;section id="about"&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;div class="twelve columns centered"&gt;\r\n			&lt;h2&gt;Who are us. &lt;span style="font-style: italic;"&gt;&lt;/span&gt;&lt;/h2&gt;&lt;/div&gt;&lt;/div&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;div class="eleven columns centered"&gt;\r\n			&lt;p class="subtittle"&gt;The most important thing to us is&lt;br /&gt;\r\n				building products people love.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;div class="three columns"&gt;\r\n			&lt;div class="portraits"&gt;&lt;img src="img/portraits/exemple1.jpg" alt="PORTRAITNAME" /&gt;&lt;span class="name"&gt;Francis Martinez&lt;/span&gt;&lt;br /&gt;\r\n				&lt;span class="poste"&gt;CEO / Founder&lt;/span&gt;&lt;br /&gt;\r\n				&lt;span class="whathedo"&gt;&lt;a target="_blank" href="#"&gt;&lt;span style="font-style: italic;"&gt;L&lt;/span&gt;&lt;/a&gt;&lt;a target="_blank" href="#"&gt;&lt;span style="font-style: italic;"&gt;D&lt;/span&gt;&lt;/a&gt;&lt;a target="_blank" href="#"&gt;&lt;span style="font-style: italic;"&gt;I&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;\r\n		&lt;div class="three columns"&gt;\r\n			&lt;div class="portraits"&gt;&lt;img src="img/portraits/exemple2.jpg" alt="PORTRAITNAME" /&gt;&lt;span class="name"&gt;John Stargasm&lt;/span&gt;&lt;br /&gt;\r\n				&lt;span class="poste"&gt;CTO / Founder&lt;/span&gt;&lt;br /&gt;\r\n				&lt;span class="whathedo"&gt;&lt;a target="_blank" href="#"&gt;&lt;span style="font-style: italic;"&gt;F&lt;/span&gt;&lt;/a&gt;&lt;a target="_blank" href="#"&gt;&lt;span style="font-style: italic;"&gt;L&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;\r\n		&lt;div class="three columns"&gt;\r\n			&lt;div class="portraits"&gt;&lt;img src="img/portraits/exemple3.jpg" alt="PORTRAITNAME" /&gt;&lt;span class="name"&gt;Lisa Simpsons&lt;/span&gt;&lt;br /&gt;\r\n				&lt;span class="poste"&gt;Creative Director&lt;/span&gt;&lt;br /&gt;\r\n				&lt;span class="whathedo"&gt;&lt;a target="_blank" href="#"&gt;&lt;span style="font-style: italic;"&gt;L&lt;/span&gt;&lt;/a&gt;&lt;a target="_blank" href="#"&gt;&lt;span style="font-style: italic;"&gt;B&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;\r\n		&lt;div class="three columns"&gt;\r\n			&lt;div class="portraits"&gt;&lt;img src="img/portraits/exemple4.jpg" alt="PORTRAITNAME" /&gt;&lt;span class="name"&gt;Jane Birkin&lt;/span&gt;&lt;br /&gt;\r\n				&lt;span class="poste"&gt;Video Director&lt;/span&gt;&lt;br /&gt;\r\n				&lt;span class="whathedo"&gt;&lt;a target="_blank" href="#"&gt;&lt;span style="font-style: italic;"&gt;L&lt;/span&gt;&lt;/a&gt;&lt;a target="_blank" href="#"&gt;&lt;span style="font-style: italic;"&gt;V&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;', '2013-06-12 10:44:51', 0, 78, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(93, 'Get in Touch', '\r\n&lt;section id="contact" class="section-block" style="margin-bottom:60px;"&gt;\r\n	&lt;h1 style="position: relative;" class="section-title cke_focus"&gt;Get in Touch. &lt;small&gt;Feel Free to Contact Us, We Don''t Bite&lt;/small&gt;&lt;/h1&gt;\r\n	&lt;div class="container"&gt;\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span12"&gt;\r\n				&lt;form style="display:none;" novalidate="novalidate" method="post" action="php/contact/contact.php" id="contact-form"&gt;\r\n					&lt;div class="controls controls-row row"&gt;\r\n						&lt;div class="span6"&gt;\r\n							&lt;input type="text" placeholder="Name" class="input-block-level required" name="ContactForm[name]" /&gt;&lt;/div&gt;\r\n						&lt;div class="span6"&gt;\r\n							&lt;input type="text" placeholder="Email" class="input-block-level required email" name="ContactForm[email]" /&gt;&lt;/div&gt;&lt;/div&gt;\r\n					&lt;div class="controls controls-row row"&gt;\r\n						&lt;div class="span6"&gt;\r\n							&lt;input type="text" placeholder="URL" class="input-block-level url" name="ContactForm[url]" /&gt;&lt;/div&gt;\r\n						&lt;div class="span6"&gt;\r\n							&lt;input type="text" placeholder="Subject" class="input-block-level required" name="ContactForm[subject]" /&gt;&lt;/div&gt;&lt;/div&gt;\r\n					&lt;div class="controls"&gt;\r\n						&lt;textarea rows="4" placeholder="Message" class="required span12" name="ContactForm[message]"&gt;Message&lt;/textarea&gt;&lt;/div&gt;\r\n					&lt;div class="form-actions"&gt;\r\n						&lt;button type="submit" class="btn btn-primary"&gt;Submit&lt;/button&gt;&lt;/div&gt;\r\n				&lt;/form&gt;&lt;/div&gt;&lt;/div&gt;\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span3"&gt;\r\n				&lt;div class="sidebar"&gt;\r\n					&lt;p style="position: relative;" class="sidebar-block"&gt;&amp;nbsp;&lt;/p&gt;\r\n					&lt;h3 style="position: relative;"&gt;Let''s Meet Face to Face&lt;/h3&gt;Feel free to meet us if you have anything to discuss. We always welcome you to come to our office. \r\n					&lt;p style="position: relative;"&gt;&amp;nbsp;&lt;/p&gt;\r\n					&lt;div class="sidebar-block"&gt;\r\n						&lt;h3 style="position: relative;"&gt;Our Location&lt;/h3&gt;\r\n						&lt;p style="position: relative;"&gt;&lt;br /&gt;\r\n							Mpls, Minnesota 55391&lt;br /&gt;\r\n							&lt;a href="mailto:loring.kaveney@idocampaigns.com"&gt;loring.kaveney@idocampaigns.com&lt;/a&gt;&lt;/p&gt;&lt;/div&gt;\r\n					&lt;p style="position: relative;" class="sidebar-block"&gt;&amp;nbsp;&lt;/p&gt;\r\n					&lt;h3 style="position: relative;"&gt;We''re Social&lt;/h3&gt;\r\n					&lt;ul class="inline-list"&gt;\r\n						&lt;li&gt;&lt;a target="_blank" href="http://www.facebook.com/IDoCampaigns"&gt;FaceBook&lt;/a&gt;&lt;br /&gt;\r\n							&lt;/li&gt;\r\n						&lt;li&gt;&lt;a target="_blank" href="http://www.twitter.com/IDoCampaigns"&gt;Twitter&lt;/a&gt;&lt;/li&gt;\r\n						&lt;li&gt;\r\n							&lt;div style="background: #fff url(''https://www.chamberofcommerce.com/Portals/0/images/badges/badges03-TransparentOverWhite.gif'') no-repeat;width:144px;height:22px;*width:151px;*height:46px;line-height:10px;text-align:left;padding: 24px 0px 0px 7px;margin:0px 0 0 18px;"&gt;&lt;a style="color:#000;font-size:11px;font-weight:bold;font-family:arial;text-decoration:none;" href="http://www.chamberofcommerce.com/wayzata-mn/direct-marketing/"&gt;Direct Marketing in Wayzata&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;\r\n					&lt;/ul&gt;\r\n					&lt;p style="position: relative;"&gt;&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="span9"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;', '2013-06-04 19:43:37', 4, 71, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(84, 'Who we are', '\r\n&lt;section id="about" class="section-block"&gt;\r\n	&lt;h1 style="position: relative;" class="section-title"&gt;Welcome to: I DO Campaigns &lt;small&gt;Helping your organization Lead, Connect, and Grow.&lt;/small&gt;&lt;/h1&gt;\r\n	&lt;div class="container"&gt;\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span12"&gt;\r\n				&lt;p style="position: relative;" class="lead"&gt;&lt;img width="166" height="224" id="growthImg" style="float: right;" src="/DZ/71/w/Plant.gif" alt="" /&gt;&lt;/p&gt;\r\n				&lt;p style="position: relative;" class="lead cke_focus"&gt;&lt;span style="font-weight: bold;"&gt;&lt;big&gt;Lead. Connect. Grow.&lt;/big&gt;&lt;/span&gt;&lt;/p&gt;\r\n				&lt;p style="position: relative;" class="lead"&gt;"I Do Campaigns" is focused on helping you establish a leadership position for your brand in your market by connecting you with your customers and prospects while helping you grow your business.&lt;/p&gt;\r\n				&lt;p style="position: relative;" class="lead"&gt;For over ten years, our marketing professionals have been delivering effective email and social campaigns that engage your organization with your customers while advocating your brand.&lt;/p&gt;\r\n				&lt;p style="position: relative;" class="lead"&gt;Let us help you grow.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span6"&gt;\r\n				&lt;h3 style="position: relative;"&gt;Facts About Us&lt;/h3&gt;\r\n				&lt;ul class="check-list"&gt;\r\n					&lt;li&gt;We provide 100% customer satisfaction&lt;br /&gt;\r\n						&lt;/li&gt;\r\n					&lt;li&gt;We are awesome and creative&lt;/li&gt;\r\n					&lt;li&gt;We drink ten cups of coffee a day&lt;/li&gt;\r\n					&lt;li&gt;We are the best company in the world&lt;/li&gt;\r\n					&lt;li&gt;We love doing our job&lt;/li&gt;\r\n					&lt;li&gt;We always strive for customer satisfaction&lt;br /&gt;\r\n						&lt;br /&gt;\r\n						&lt;/li&gt;\r\n				&lt;/ul&gt;&lt;/div&gt;\r\n			&lt;div style="display: none;" class="span6"&gt;\r\n				&lt;h3 style="position: relative;"&gt;Our Expertise&lt;/h3&gt;\r\n				&lt;div class="skill"&gt;\r\n					&lt;h6 style="position: relative;" class="name"&gt;HTML5&lt;/h6&gt;\r\n					&lt;div class="progress progress-info progress-striped progress-mini"&gt;\r\n						&lt;div style="width: 20%;" class="bar"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div class="skill"&gt;\r\n					&lt;h6 style="position: relative;" class="name"&gt;JavaScript&lt;/h6&gt;\r\n					&lt;div class="progress progress-info progress-striped progress-mini"&gt;\r\n						&lt;div style="width: 40%;" class="bar"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div class="skill"&gt;\r\n					&lt;h6 style="position: relative;" class="name"&gt;CSS3&lt;/h6&gt;\r\n					&lt;div class="progress progress-info progress-striped progress-mini"&gt;\r\n						&lt;div style="width: 60%;" class="bar"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div class="skill"&gt;\r\n					&lt;h6 style="position: relative;" class="name"&gt;Wordpress Development&lt;/h6&gt;\r\n					&lt;div class="progress progress-info progress-striped progress-mini"&gt;\r\n						&lt;div style="width: 80%;" class="bar"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n		&lt;!--\r\n		End About Text\r\n		--&gt;\r\n		&lt;/div&gt;&lt;/section&gt;', '2013-06-04 19:43:37', 4, 71, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(127, 'Footer', '&lt;div id="BottCred"&gt; &lt;div class="Context"&gt;&lt;span class="Legal"&gt; H-1, Inc. dba Digiapolis Â©2013 | 4330 North Shore Drive, Minneapolis, Minnesota 55364 | &lt;a href="tel:612-860-1025"&gt;612-860-1025&lt;/a&gt;&lt;/span&gt;&lt;span class="BottomMenu"&gt;&lt;a href="?p=/Home"&gt;home&lt;/a&gt;&lt;a href="/About Us"&gt;about&lt;/a&gt;&lt;a href="/Contact"&gt;contact&lt;/a&gt;&lt;a href="http://ChiefSocialStrategist.com"&gt;blog&lt;/a&gt;&lt;/span&gt;&lt;/div&gt; &lt;div class="SocialFunctions"&gt; &lt;div class="addthis_toolbox addthis_default_style "&gt;&lt;a class="addthis_button_facebook_like at300b" fb:like:layout="button_count"&gt; &lt;iframe src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.digiapolis.com%2F&amp;amp;layout=button_count&amp;amp;show_faces=false&amp;amp;width=100&amp;amp;action=like&amp;amp;font=arial&amp;amp;layout=button_count" style="overflow: hidden; border: 0px none; width: 90px; height: 25px;"&gt;&lt;/iframe&gt;&lt;/a&gt;&lt;a class="addthis_button_tweet at300b"&gt; &lt;iframe data-twttr-rendered="true" title="Twitter Tweet Button" style="width: 109px; height: 20px;" class="twitter-share-button twitter-count-horizontal" src="http://platform.twitter.com/widgets/tweet_button.1368146021.html#_=1369589804748&amp;amp;count=horizontal&amp;amp;counturl=http%3A%2F%2Fwww.digiapolis.com%2F&amp;amp;id=twitter-widget-0&amp;amp;lang=en&amp;amp;original_referer=http%3A%2F%2Fwww.digiapolis.com%2F&amp;amp;size=m&amp;amp;text=Digiapolis.com%20-%20Interactive%20Web%20Marketing%20and%20Development%3A&amp;amp;url=http%3A%2F%2Fwww.digiapolis.com%2F%23.UaJIKjr0ICM.twitter" allowtransparency="true" frameborder="0" scrolling="no"&gt;&lt;/iframe&gt;&lt;/a&gt;&lt;a href="#" style="display: block;" class="addthis_counter addthis_pill_style addthis_nonzero"&gt;&lt;/a&gt;&lt;a class="atc_s addthis_button_compact"&gt;&lt;/a&gt;&lt;a href="#" title="View more services" target="_blank" class="addthis_button_expanded"&gt;5&lt;/a&gt; &lt;div class="atclear"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '2013-06-04 17:56:38', 3, 62, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(82, 'Home', '82_1XPN}82_1XPN}82_1XPN}82_1XPN}82_1XPN} \r\n&lt;div class="fullscreen-table"&gt;\r\n	&lt;div class="fullscreen-row header"&gt;\r\n		&lt;header id="zw-header" class="main-header affix-top"&gt;\r\n			&lt;div class="main-header-wrap clearfix"&gt;\r\n				&lt;div align="center"&gt;&lt;img width="275" height="76" alt="" title="" src="/Editor/assets/IDoCampaigns_2013_4_26_FINL_Logo_Color.jpg" /&gt;&lt;/div&gt;&lt;a aria-hidden="true" id="nav-toggle" href="#"&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#"&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#"&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#"&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#"&gt;&lt;/a&gt;\r\n				&lt;nav aria-hidden="false" style="-webkit-transition-property: max-height; -webkit-transition-duration: 400ms; -webkit-transition-timing-function: initial; -webkit-transition-delay: initial; position: relative; " id="zw-nav" class="nav closed closed closed closed closed"&gt;\r\n					&lt;ul&gt;\r\n						&lt;li class="active"&gt;&lt;a href="#about"&gt;About&lt;/a&gt;&lt;/li&gt;\r\n						&lt;li&gt;&lt;a href="#services"&gt;Services&lt;/a&gt;&lt;/li&gt;\r\n						&lt;li&gt;&lt;a href="#work"&gt;Work&lt;/a&gt;&lt;/li&gt;\r\n						&lt;li&gt;&lt;a href="#contact"&gt;Contact&lt;/a&gt;&lt;/li&gt;\r\n						&lt;li&gt;&lt;a href="blog.html"&gt;Blog&lt;/a&gt;&lt;/li&gt;\r\n						&lt;li&gt;&lt;a href="shortcodes.html"&gt;Shortcodes&lt;/a&gt;&lt;/li&gt;\r\n					&lt;/ul&gt;&lt;/nav&gt;&lt;/div&gt;&lt;/header&gt;&lt;/div&gt;\r\n	&lt;div id="zw-slider" class="fullscreen-row slider"&gt;\r\n		&lt;div class="slider-block"&gt;\r\n			&lt;div style="overflow-x: hidden; overflow-y: hidden; " class="cycle-slider"&gt;\r\n				&lt;div style="top: 0px; left: 0px; opacity: 1; z-index: 100; position: static; visibility: hidden; display: block; " class="slide-wrap cycle-slide cycle-sentinel"&gt;\r\n					&lt;div style="visibility: hidden; " class="slide"&gt;&lt;img style="visibility: hidden; " src="/demo/slider/louvre.jpg" alt="" /&gt;&lt;/div&gt;\r\n					&lt;div style="visibility: hidden; " class="caption-box"&gt;\r\n						&lt;div style="visibility: hidden; " class="caption"&gt;&lt;span style="visibility: hidden; " class="slide-text"&gt;We''re Leviate.&lt;br style="visibility: hidden; " /&gt;\r\n								Awesome and Creative.&lt;/span&gt;&lt;span style="visibility: hidden; " class="slide-link"&gt;&lt;a style="visibility: hidden; " href="#about"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div style="visibility: hidden; position: absolute; top: 0px; opacity: 1; left: 0px; z-index: 96; display: none; " class="slide-wrap cycle-slide cycle-sentinel"&gt;\r\n					&lt;div style="visibility: hidden; " class="slide"&gt;&lt;img style="visibility: hidden; " src="/demo/slider/louvre.jpg" alt="" /&gt;&lt;/div&gt;\r\n					&lt;div style="visibility: hidden; " class="caption-box"&gt;\r\n						&lt;div style="visibility: hidden; " class="caption"&gt;&lt;span style="visibility: hidden; " class="slide-text"&gt;We''re Leviate.&lt;br style="visibility: hidden; " /&gt;\r\n								Awesome and Creative.&lt;/span&gt;&lt;span style="visibility: hidden; " class="slide-link"&gt;&lt;a style="visibility: hidden; " href="#about"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div style="visibility: hidden; position: absolute; top: 0px; opacity: 1; left: 0px; z-index: 95; display: none; " class="slide-wrap cycle-slide cycle-sentinel"&gt;\r\n					&lt;div style="visibility: hidden; " class="slide"&gt;&lt;img style="visibility: hidden; " src="/demo/slider/louvre.jpg" alt="" /&gt;&lt;/div&gt;\r\n					&lt;div style="visibility: hidden; " class="caption-box"&gt;\r\n						&lt;div style="visibility: hidden; " class="caption"&gt;&lt;span style="visibility: hidden; " class="slide-text"&gt;We''re Leviate.&lt;br style="visibility: hidden; " /&gt;\r\n								Awesome and Creative.&lt;/span&gt;&lt;span style="visibility: hidden; " class="slide-link"&gt;&lt;a style="visibility: hidden; " href="#about"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div style="visibility: hidden; position: absolute; top: 0px; opacity: 1; left: 0px; z-index: 94; display: none; " class="slide-wrap cycle-slide cycle-sentinel"&gt;\r\n					&lt;div style="visibility: hidden;" class="slide"&gt;&lt;img style="visibility: hidden;" src="/demo/slider/louvre.jpg" alt="" /&gt;&lt;/div&gt;\r\n					&lt;div style="visibility: hidden; " class="caption-box"&gt;\r\n						&lt;div style="visibility: hidden;" class="caption"&gt;&lt;span style="visibility: hidden;" class="slide-text"&gt;We''re Leviate.&lt;br style="visibility: hidden;" /&gt;\r\n								Awesome and Creative.&lt;/span&gt;&lt;span style="visibility: hidden;" class="slide-link"&gt;&lt;a style="visibility: hidden;" href="#about"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div style="visibility: hidden; position: absolute; top: 0px; opacity: 1; left: 0px; z-index: 93; display: none; " class="slide-wrap cycle-slide cycle-sentinel"&gt;\r\n					&lt;div style="visibility: hidden;" class="slide"&gt;&lt;img style="visibility: hidden;" src="/demo/slider/louvre.jpg" alt="" /&gt;&lt;/div&gt;\r\n					&lt;div style="visibility: hidden; " class="caption-box"&gt;\r\n						&lt;div style="visibility: hidden;" class="caption"&gt;&lt;span style="visibility: hidden;" class="slide-text"&gt;We''re Leviate.&lt;br style="visibility: hidden;" /&gt;\r\n								Awesome and Creative.&lt;/span&gt;&lt;span style="visibility: hidden;" class="slide-link"&gt;&lt;a style="visibility: hidden;" href="#about"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div style="position: absolute; top: 0px; opacity: 1; z-index: 93; left: 0px; display: none; " class="slide-wrap cycle-slide"&gt;\r\n					&lt;div class="slide"&gt;&lt;img src="/demo/slider/louvre.jpg" alt="" /&gt;&lt;/div&gt;\r\n					&lt;div style="" class="caption-box"&gt;\r\n						&lt;div class="caption"&gt;&lt;span class="slide-text"&gt;We''re Leviate.&lt;br /&gt;\r\n								Awesome and Creative.&lt;/span&gt;&lt;span class="slide-link"&gt;&lt;a href="#about"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div style="position: absolute; z-index: 99; top: 0px; opacity: 1; display: block; left: 0px; " class="slide-wrap cycle-slide cycle-slide-active"&gt;\r\n					&lt;div class="slide"&gt;&lt;img src="/demo/slider/london.jpg" alt="" /&gt;&lt;/div&gt;\r\n					&lt;div style="" class="caption-box"&gt;\r\n						&lt;div class="caption"&gt;&lt;span class="slide-text"&gt;Curious About Our Work?&lt;br /&gt;\r\n								Find Out More&lt;/span&gt;&lt;span class="slide-link"&gt;&lt;a href="#work"&gt;View Our Work&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div style="opacity: 1; position: absolute; top: 0px; left: 0px; z-index: 97; display: none; " class="slide-wrap cycle-slide"&gt;\r\n					&lt;div class="slide"&gt;&lt;img src="/demo/slider/newyork.jpg" alt="" /&gt;&lt;/div&gt;\r\n					&lt;div style="margin-left: 3233.660839083933px;" class="caption-box"&gt;\r\n						&lt;div class="caption"&gt;&lt;span class="slide-text"&gt;We''re Friendly,&lt;br /&gt;\r\n								Let''s Meet&lt;/span&gt;&lt;span class="slide-link"&gt;&lt;a href="#contact"&gt;Contact Us&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n&lt;section id="about" class="section-block"&gt;\r\n	&lt;h1 style="position: relative;" class="section-title"&gt;Who We&amp;nbsp;Are. &lt;small&gt;Marketing Campaign Enthusiasts. Creative People&lt;/small&gt;&lt;/h1&gt;\r\n	&lt;div class="container"&gt;\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span12"&gt;\r\n				&lt;p style="position: relative;" class="lead"&gt;&amp;nbsp;&lt;/p&gt;\r\n				&lt;div&gt;&lt;span style="color: rgb(105, 105, 105);"&gt;Are you looking to reach out to your customers or prospects to communicate what you want them to know about your company?&lt;/span&gt;&lt;/div&gt;&lt;span style="color: rgb(105, 105, 105);"&gt;&lt;/span&gt;\r\n				&lt;p style="position: relative;"&gt;Are you looking to develop long-term loyal customers that look to your company for answers, services, and products?&lt;/p&gt;&lt;span style="color: rgb(105, 105, 105);"&gt;&lt;/span&gt;\r\n				&lt;p style="position: relative;"&gt;&lt;img width="248" height="281" align="right" src="http://www.digiapolis.com/Editor/assets/dreamstime_xl_18835347.jpg" title="" alt="" /&gt;I DO Campaigns provides a rock solid method that can help accomplish this task with ten years of successful campaign experience. We know how to connect, promote, and gather the information that will help build strong business relationships.&lt;/p&gt;&lt;span style="color: rgb(105, 105, 105);"&gt;&lt;/span&gt;\r\n				&lt;p style="position: relative;"&gt;No matter what kind of company you are it is very important to stay connected in as many ways possible without inundating then with too much information. Ask your customers, "How would you like to receive information from us?â€&lt;/p&gt;&lt;span style="color: rgb(105, 105, 105);"&gt;&lt;/span&gt;\r\n				&lt;p style="position: relative;"&gt;Something else to think about, donâ€™t forget to add the fun factor and allow your customers to inform you how they want to receive the information that is important to them.&lt;/p&gt;&lt;br /&gt;\r\n				&lt;/div&gt;&lt;/div&gt;\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span6"&gt;\r\n				&lt;h3 style="position: relative;"&gt;Facts About Us&lt;/h3&gt;\r\n				&lt;ul class="check-list"&gt;\r\n					&lt;li&gt;We do website development services&lt;/li&gt;\r\n					&lt;li&gt;We are awesome and creative&lt;/li&gt;\r\n					&lt;li&gt;We drink ten cups of coffee a day&lt;/li&gt;\r\n					&lt;li&gt;We are the best company in the world&lt;/li&gt;\r\n					&lt;li&gt;We love doing our job&lt;/li&gt;\r\n					&lt;li&gt;We always strive for customer satisfaction&lt;/li&gt;\r\n				&lt;/ul&gt;&lt;/div&gt;\r\n			&lt;div class="span6"&gt;\r\n				&lt;h3 style="position: relative;"&gt;Our Expertise&lt;/h3&gt;\r\n				&lt;div class="skill"&gt;\r\n					&lt;h6 style="position: relative;" class="name"&gt;HTML5&lt;/h6&gt;\r\n					&lt;div class="progress progress-info progress-striped progress-mini"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div class="skill"&gt;\r\n					&lt;h6 style="position: relative;" class="name"&gt;JavaScript&lt;/h6&gt;\r\n					&lt;div class="progress progress-info progress-striped progress-mini"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div class="skill"&gt;\r\n					&lt;h6 style="position: relative;" class="name"&gt;CSS3&lt;/h6&gt;\r\n					&lt;div class="progress progress-info progress-striped progress-mini"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div class="skill"&gt;\r\n					&lt;h6 style="position: relative;" class="name"&gt;Wordpress Development&lt;/h6&gt;\r\n					&lt;div class="progress progress-info progress-striped progress-mini"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;\r\n&lt;section id="about" class="section-block small"&gt;\r\n	&lt;h2 style="position: relative;" class="section-title"&gt;Meet The Team. &lt;small&gt;Without them, we''re nothing&lt;/small&gt;&lt;/h2&gt;\r\n	&lt;div class="container"&gt;\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span3"&gt;\r\n				&lt;div class="team"&gt;\r\n					&lt;div class="team-photo lazyloaded"&gt;&lt;img style="display: inline;" src="/demo/team/1.jpg" data-original="/demo/team/1.jpg" alt="" /&gt;&lt;/div&gt;\r\n					&lt;div class="team-info"&gt;&lt;span class="name"&gt;Marcus van Basten&lt;/span&gt;&lt;span class="role"&gt;CEO&lt;/span&gt;&lt;/div&gt;\r\n					&lt;div class="team-text"&gt;Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="span3"&gt;\r\n				&lt;div class="team"&gt;\r\n					&lt;div class="team-photo lazyloaded"&gt;&lt;img style="display: inline;" src="/demo/team/2.jpg" data-original="/demo/team/2.jpg" alt="" /&gt;&lt;/div&gt;\r\n					&lt;div class="team-info"&gt;&lt;span class="name"&gt;Lara McCarthy&lt;/span&gt;&lt;span class="role"&gt;Public Relation Officer&lt;/span&gt;&lt;/div&gt;\r\n					&lt;div class="team-text"&gt;Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="span3"&gt;\r\n				&lt;div class="team"&gt;\r\n					&lt;div class="team-photo lazyloaded"&gt;&lt;img style="display: inline;" src="/demo/team/3.jpg" data-original="/demo/team/3.jpg" alt="" /&gt;&lt;/div&gt;\r\n					&lt;div class="team-info"&gt;&lt;span class="name"&gt;Oliver Sanchez&lt;/span&gt;&lt;span class="role"&gt;Creative Director&lt;/span&gt;&lt;/div&gt;\r\n					&lt;div class="team-text"&gt;Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="span3"&gt;\r\n				&lt;div class="team"&gt;\r\n					&lt;div class="team-photo lazyloaded"&gt;&lt;img style="display: inline;" src="/demo/team/4.jpg" data-original="/demo/team/4.jpg" alt="" /&gt;&lt;/div&gt;\r\n					&lt;div class="team-info"&gt;&lt;span class="name"&gt;Jeanette Crow&lt;/span&gt;&lt;span class="role"&gt;Lead Designer&lt;/span&gt;&lt;/div&gt;\r\n					&lt;div class="team-text"&gt;Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span12"&gt;\r\n				&lt;div class="cta"&gt;\r\n					&lt;div class="cta-inner"&gt;\r\n						&lt;div class="col-text"&gt;\r\n							&lt;h3 style="position: relative;" class="headline"&gt;Need us to help you on your project?&lt;/h3&gt;\r\n							&lt;p style="position: relative;"&gt;Request a quote describing your project requirements now to get estimates&lt;/p&gt;&lt;/div&gt;\r\n						&lt;div class="col-btn"&gt;&lt;a href="#" class="btn btn-large btn-danger"&gt;Request a Quote&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/metro.jpg); background-position: 50% 236px; " class="aside-block" data-background="/demo/aside/metro.jpg" side=""&gt;\r\n	&lt;div class="aside-container"&gt;\r\n		&lt;div class="aside-content"&gt;\r\n			&lt;div class="container"&gt;\r\n				&lt;div class="row"&gt;\r\n					&lt;div class="span12"&gt;\r\n						&lt;blockquote&gt;\r\n							&lt;p style="position: relative;"&gt;There are no secrets to success. It is the result of preparation, hard work, and learning from failure.&lt;/p&gt;&lt;small&gt;Colin Powell&lt;/small&gt;&lt;/blockquote&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/a&gt;\r\n&lt;section id="services" class="section-block"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/metro.jpg); " class="aside-block" data-background="/demo/aside/metro.jpg" side=""&gt;\r\n		&lt;h1 style="position: relative;" class="section-title"&gt;Awesome Service. &lt;small&gt;See Below, You Might Be Interested!&lt;/small&gt;&lt;/h1&gt;&lt;/a&gt;\r\n	&lt;div class="container"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/metro.jpg); " class="aside-block" data-background="/demo/aside/metro.jpg" side=""&gt;\r\n			&lt;div class="row"&gt;\r\n				&lt;div class="span12"&gt;\r\n					&lt;p style="position: relative;" class="lead"&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/a&gt;\r\n		&lt;div class="row"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/metro.jpg); " class="aside-block" data-background="/demo/aside/metro.jpg" side=""&gt;&lt;/a&gt;\r\n			&lt;div class="span4"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/metro.jpg); " class="aside-block" data-background="/demo/aside/metro.jpg" side=""&gt;&lt;/a&gt;\r\n				&lt;div class="service"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/metro.jpg); " class="aside-block" data-background="/demo/aside/metro.jpg" side=""&gt;\r\n						&lt;div class="service-icon"&gt;&amp;nbsp;&lt;/div&gt;\r\n						&lt;h3 class="title"&gt;Web Development&lt;/h3&gt;\r\n						&lt;p style="position: relative;"&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&lt;/p&gt;&lt;/a&gt;&lt;a href="#" class="btn btn-danger"&gt;Learn More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="span4"&gt;\r\n				&lt;div class="service"&gt;\r\n					&lt;div class="service-icon"&gt;&amp;nbsp;&lt;/div&gt;\r\n					&lt;h3 class="title"&gt;Website SEO&lt;/h3&gt;\r\n					&lt;p style="position: relative;"&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&lt;/p&gt;&lt;a href="#" class="btn btn-danger"&gt;Learn More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="span4"&gt;\r\n				&lt;div class="service"&gt;\r\n					&lt;div class="service-icon"&gt;&amp;nbsp;&lt;/div&gt;\r\n					&lt;h3 class="title"&gt;Branding&lt;/h3&gt;\r\n					&lt;p style="position: relative;"&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&lt;/p&gt;&lt;a href="#" class="btn btn-danger"&gt;Learn More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span4"&gt;\r\n				&lt;div class="service"&gt;\r\n					&lt;div class="service-icon"&gt;&amp;nbsp;&lt;/div&gt;\r\n					&lt;h3 class="title"&gt;Wordpress Themes&lt;/h3&gt;\r\n					&lt;p style="position: relative;"&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&lt;/p&gt;&lt;a href="#" class="btn btn-danger"&gt;Learn More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="span4"&gt;\r\n				&lt;div class="service"&gt;\r\n					&lt;div class="service-icon"&gt;&amp;nbsp;&lt;/div&gt;\r\n					&lt;h3 class="title"&gt;Strategic Marketing&lt;/h3&gt;\r\n					&lt;p style="position: relative;"&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&lt;/p&gt;&lt;a href="#" class="btn btn-danger"&gt;Learn More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="span4"&gt;\r\n				&lt;div class="service"&gt;\r\n					&lt;div class="service-icon"&gt;&amp;nbsp;&lt;/div&gt;\r\n					&lt;h3 class="title"&gt;Web Hosting&lt;/h3&gt;\r\n					&lt;p style="position: relative;"&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&lt;/p&gt;&lt;a href="#" class="btn btn-danger"&gt;Learn More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/bigben.jpg); " class="aside-block" data-background="/demo/aside/bigben.jpg" side=""&gt;\r\n	&lt;div class="aside-container"&gt;\r\n		&lt;div class="aside-content"&gt;\r\n			&lt;div class="container"&gt;\r\n				&lt;div class="row"&gt;\r\n					&lt;div class="span12"&gt;\r\n						&lt;div class="aside-title"&gt;Featured Video&lt;/div&gt;\r\n						&lt;div class="media"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/a&gt;\r\n&lt;section id="work" class="section-block"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/bigben.jpg); " class="aside-block" data-background="/demo/aside/bigben.jpg" side=""&gt;\r\n		&lt;h1 style="position: relative;" class="section-title"&gt;We Are Proud. &lt;small&gt;See Below to See Why We''re Proud&lt;/small&gt;&lt;/h1&gt;&lt;/a&gt;\r\n	&lt;div class="portfolio clearfix"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/bigben.jpg); " class="aside-block" data-background="/demo/aside/bigben.jpg" side=""&gt;&lt;/a&gt;\r\n		&lt;div class="container"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/bigben.jpg); " class="aside-block" data-background="/demo/aside/bigben.jpg" side=""&gt;&lt;/a&gt;\r\n			&lt;div class="row"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/bigben.jpg); " class="aside-block" data-background="/demo/aside/bigben.jpg" side=""&gt;&lt;/a&gt;\r\n				&lt;div class="span12"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/bigben.jpg); " class="aside-block" data-background="/demo/aside/bigben.jpg" side=""&gt;&lt;/a&gt;\r\n					&lt;div class="filter" data-label="Show: "&gt;&lt;span data-label="Show: " data-toggle="dropdown" class="active-label"&gt;All&lt;/span&gt;&lt;span data-label="Show: " data-toggle="dropdown" class="active-label"&gt;All&lt;/span&gt;&lt;span data-label="Show: " data-toggle="dropdown" class="active-label"&gt;All&lt;/span&gt;&lt;span data-label="Show: " data-toggle="dropdown" class="active-label"&gt;All&lt;/span&gt;&lt;span data-label="Show: " data-toggle="dropdown" class="active-label"&gt;All&lt;/span&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/bigben.jpg); " class="aside-block" data-background="/demo/aside/bigben.jpg" side=""&gt;&lt;/a&gt;\r\n						&lt;ul&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/bigben.jpg); " class="aside-block" data-background="/demo/aside/bigben.jpg" side=""&gt;&lt;/a&gt;\r\n							&lt;li class="active"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/bigben.jpg); " class="aside-block active" data-background="/demo/aside/bigben.jpg" side=""&gt;&lt;/a&gt;&lt;a href="#" data-filter="*"&gt;All&lt;/a&gt;&lt;/li&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/bigben.jpg); " class="aside-block" data-background="/demo/aside/bigben.jpg" side=""&gt;&lt;/a&gt;\r\n							&lt;li&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/bigben.jpg); " class="aside-block" data-background="/demo/aside/bigben.jpg" side=""&gt;&lt;/a&gt;&lt;a href="#" data-filter=".illustration"&gt;Illustration&lt;/a&gt;&lt;/li&gt;\r\n							&lt;li&gt;&lt;a href="#" data-filter=".web-design"&gt;Web Design&lt;/a&gt;&lt;/li&gt;\r\n							&lt;li&gt;&lt;a href="#" data-filter=".graphic-design"&gt;Graphic Design&lt;/a&gt;&lt;/li&gt;\r\n							&lt;li&gt;&lt;a href="#" data-filter=".photography"&gt;Photography&lt;/a&gt;&lt;/li&gt;\r\n						&lt;/ul&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="row"&gt;\r\n				&lt;div class="span12"&gt;\r\n					&lt;div style="position: relative; overflow-x: hidden; overflow-y: hidden; height: 987px; " class="items-wrap clearfix isotope"&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; -webkit-transform: translate3d(0px, 0px, 0px); " class="item illustration isotope-item"&gt;&lt;a href="php/work/work.php?itemId=1" class="item-link"&gt;&lt;img src="/demo/work/a.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; -webkit-transform: translate3d(240px, 0px, 0px); " class="item illustration isotope-item"&gt;&lt;a href="php/work/work.php?itemId=2" class="item-link"&gt;&lt;img src="/demo/work/b.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; -webkit-transform: translate3d(480px, 0px, 0px); " class="item web-design isotope-item"&gt;&lt;a href="php/work/work.php?itemId=3" class="item-link"&gt;&lt;img src="/demo/work/c.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; -webkit-transform: translate3d(720px, 0px, 0px); " class="item graphic-design isotope-item"&gt;&lt;a href="php/work/work.php?itemId=4" class="item-link"&gt;&lt;img src="/demo/work/d.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; -webkit-transform: translate3d(480px, 179px, 0px); " class="item graphic-design isotope-item"&gt;&lt;a href="php/work/work.php?itemId=5" class="item-link"&gt;&lt;img src="/demo/work/e.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; -webkit-transform: translate3d(240px, 237px, 0px); " class="item web-design isotope-item"&gt;&lt;a href="php/work/work.php?itemId=6" class="item-link"&gt;&lt;img src="/demo/work/f.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; -webkit-transform: translate3d(0px, 326px, 0px); " class="item illustration isotope-item"&gt;&lt;a href="php/work/work.php?itemId=1" class="item-link"&gt;&lt;img src="/demo/work/g.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; -webkit-transform: translate3d(720px, 329px, 0px); " class="item photography isotope-item"&gt;&lt;a href="php/work/work.php?itemId=2" class="item-link"&gt;&lt;img src="/demo/work/h.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; -webkit-transform: translate3d(240px, 417px, 0px); " class="item web-design isotope-item"&gt;&lt;a href="php/work/work.php?itemId=3" class="item-link"&gt;&lt;img src="/demo/work/i.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; -webkit-transform: translate3d(480px, 524px, 0px); " class="item photography isotope-item"&gt;&lt;a href="php/work/work.php?itemId=4" class="item-link"&gt;&lt;img src="/demo/work/j.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; -webkit-transform: translate3d(0px, 636px, 0px); " class="item graphic-design isotope-item"&gt;&lt;a href="php/work/work.php?itemId=5" class="item-link"&gt;&lt;img src="/demo/work/k.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; -webkit-transform: translate3d(480px, 703px, 0px); " class="item illustration isotope-item"&gt;&lt;a href="php/work/work.php?itemId=6" class="item-link"&gt;&lt;img src="/demo/work/l.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; -webkit-transform: translate3d(720px, 782px, 0px); " class="item web-design isotope-item"&gt;&lt;a href="php/work/work.php?itemId=3" class="item-link"&gt;&lt;img src="/demo/work/m.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;\r\n&lt;section id="clients" class="section-block small"&gt;\r\n	&lt;h2 style="position: relative;" class="section-title"&gt;Our Beloved Clients.&lt;/h2&gt;\r\n	&lt;div class="container"&gt;\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span12"&gt;\r\n				&lt;div class="clients"&gt;\r\n					&lt;ul&gt;\r\n						&lt;li&gt;&lt;span class="client-wrap"&gt;&lt;span class="client-logo"&gt;&lt;a href="#"&gt;&lt;img src="assets/img/preload.gif" data-original="/demo/clients/3o.png" alt="" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n						&lt;li&gt;&lt;span class="client-wrap"&gt;&lt;span class="client-logo"&gt;&lt;a href="#"&gt;&lt;img src="assets/img/preload.gif" data-original="/demo/clients/ad.png" alt="" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n						&lt;li&gt;&lt;span class="client-wrap"&gt;&lt;span class="client-logo"&gt;&lt;a href="#"&gt;&lt;img src="assets/img/preload.gif" data-original="/demo/clients/aj.png" alt="" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n						&lt;li&gt;&lt;span class="client-wrap"&gt;&lt;span class="client-logo"&gt;&lt;a href="#"&gt;&lt;img src="assets/img/preload.gif" data-original="/demo/clients/cc.png" alt="" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n						&lt;li&gt;&lt;span class="client-wrap"&gt;&lt;span class="client-logo"&gt;&lt;a href="#"&gt;&lt;img src="assets/img/preload.gif" data-original="/demo/clients/gr.png" alt="" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n						&lt;li&gt;&lt;span class="client-wrap"&gt;&lt;span class="client-logo"&gt;&lt;a href="#"&gt;&lt;img src="assets/img/preload.gif" data-original="/demo/clients/pd.png" alt="" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n						&lt;li&gt;&lt;span class="client-wrap"&gt;&lt;span class="client-logo"&gt;&lt;a href="#"&gt;&lt;img src="assets/img/preload.gif" data-original="/demo/clients/tf.png" alt="" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n						&lt;li&gt;&lt;span class="client-wrap"&gt;&lt;span class="client-logo"&gt;&lt;a href="#"&gt;&lt;img src="assets/img/preload.gif" data-original="/demo/clients/vh.png" alt="" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n					&lt;/ul&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/copenhagen.jpg); " class="aside-block" data-background="/demo/aside/copenhagen.jpg" side=""&gt;&lt;/a&gt;\r\n&lt;div class="aside-container"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/copenhagen.jpg); " class="aside-block" data-background="/demo/aside/copenhagen.jpg" side=""&gt;&lt;/a&gt;\r\n	&lt;div class="aside-content"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/copenhagen.jpg); " class="aside-block" data-background="/demo/aside/copenhagen.jpg" side=""&gt;&lt;/a&gt;\r\n		&lt;div class="container"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/copenhagen.jpg); " class="aside-block" data-background="/demo/aside/copenhagen.jpg" side=""&gt;\r\n				&lt;div class="row"&gt;\r\n					&lt;div class="span12"&gt;\r\n						&lt;div class="aside-title"&gt;Latest Posts&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/a&gt;\r\n			&lt;div class="row"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/copenhagen.jpg); " class="aside-block" data-background="/demo/aside/copenhagen.jpg" side=""&gt;&lt;/a&gt;\r\n				&lt;div class="span4"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/copenhagen.jpg); " class="aside-block" data-background="/demo/aside/copenhagen.jpg" side=""&gt;&lt;/a&gt;\r\n					&lt;div class="recent-post"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/copenhagen.jpg); " class="aside-block" data-background="/demo/aside/copenhagen.jpg" side=""&gt;&lt;/a&gt;\r\n						&lt;figure class="media recent-post-image"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/copenhagen.jpg); " class="aside-block" data-background="/demo/aside/copenhagen.jpg" side=""&gt;&lt;img src="assets/img/transparent.gif" data-original="/demo/blog/tokyo.jpg" alt="" /&gt;&lt;/a&gt;&lt;a class="overlay" href="blog.html"&gt;\r\n								&lt;div class="post-icon"&gt;&amp;nbsp;&lt;/div&gt;&lt;/a&gt;&lt;/figure&gt;\r\n						&lt;div class="recent-post-text"&gt;\r\n							&lt;h3 style="position: relative;" class="title"&gt;Blog Title&lt;/h3&gt;\r\n							&lt;p style="position: relative;"&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.&lt;/p&gt;&lt;a href="blog.html" class="btn btn-danger"&gt;Read More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div class="span4"&gt;\r\n					&lt;div class="recent-post"&gt;\r\n						&lt;figure class="media recent-post-image"&gt;&lt;img src="assets/img/transparent.gif" data-original="/demo/blog/london.jpg" alt="" /&gt;&lt;a class="overlay" href="blog.html"&gt;\r\n								&lt;div class="post-icon"&gt;&amp;nbsp;&lt;/div&gt;&lt;/a&gt;&lt;/figure&gt;\r\n						&lt;div class="recent-post-text"&gt;\r\n							&lt;h3 style="position: relative;" class="title"&gt;Blog Title&lt;/h3&gt;\r\n							&lt;p style="position: relative;"&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.&lt;/p&gt;&lt;a href="blog.html" class="btn btn-danger"&gt;Read More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div class="span4"&gt;\r\n					&lt;div class="recent-post"&gt;\r\n						&lt;figure class="media recent-post-image"&gt;&lt;img src="assets/img/transparent.gif" data-original="/demo/blog/newyork.jpg" alt="" /&gt;&lt;a class="overlay" href="blog.html"&gt;\r\n								&lt;div class="post-icon"&gt;&amp;nbsp;&lt;/div&gt;&lt;/a&gt;&lt;/figure&gt;\r\n						&lt;div class="recent-post-text"&gt;\r\n							&lt;h3 style="position: relative;" class="title"&gt;Blog Title&lt;/h3&gt;\r\n							&lt;p style="position: relative;"&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.&lt;/p&gt;&lt;a href="blog.html" class="btn btn-danger"&gt;Read More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n&lt;section id="pricing" class="section-block"&gt;\r\n	&lt;h1 style="position: relative;" class="section-title"&gt;Our Pricing. &lt;small&gt;See it Yourself, We''re Affordable&lt;/small&gt;&lt;/h1&gt;\r\n	&lt;div class="container"&gt;\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span12"&gt;\r\n				&lt;div class="pricing-tables four-tables"&gt;\r\n					&lt;div class="pricing-table"&gt;\r\n						&lt;div class="table-header"&gt;\r\n							&lt;div class="name"&gt;Personal&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-price"&gt;\r\n							&lt;div class="price"&gt;$99&lt;/div&gt;\r\n							&lt;div class="price-description"&gt;per month&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-features"&gt;\r\n							&lt;ul&gt;\r\n								&lt;li&gt;Fully Responsive Layout&lt;/li&gt;\r\n								&lt;li&gt;Retina Display Ready&lt;/li&gt;\r\n								&lt;li&gt;Clean and Professional Design&lt;/li&gt;\r\n								&lt;li&gt;W3C Compliant HTML5 &amp;amp; CSS3&lt;/li&gt;\r\n								&lt;li&gt;Premium Plugins Included&lt;/li&gt;\r\n							&lt;/ul&gt;&lt;/div&gt;\r\n						&lt;div class="table-footer"&gt;&lt;a href="#" class="btn btn-danger"&gt;Sign Up&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n					&lt;div class="pricing-table featured"&gt;\r\n						&lt;div class="table-header"&gt;\r\n							&lt;div class="name"&gt;Small Business&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-price"&gt;\r\n							&lt;div class="price"&gt;$299&lt;/div&gt;\r\n							&lt;div class="price-description"&gt;per month&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-features"&gt;\r\n							&lt;ul&gt;\r\n								&lt;li&gt;Fully Responsive Layout&lt;/li&gt;\r\n								&lt;li&gt;Retina Display Ready&lt;/li&gt;\r\n								&lt;li&gt;Clean and Professional Design&lt;/li&gt;\r\n								&lt;li&gt;W3C Compliant HTML5 &amp;amp; CSS3&lt;/li&gt;\r\n								&lt;li&gt;Premium Plugins Included&lt;/li&gt;\r\n							&lt;/ul&gt;&lt;/div&gt;\r\n						&lt;div class="table-footer"&gt;&lt;a href="#" class="btn btn-danger"&gt;Sign Up&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n					&lt;div class="pricing-table"&gt;\r\n						&lt;div class="table-header"&gt;\r\n							&lt;div class="name"&gt;Professional&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-price"&gt;\r\n							&lt;div class="price"&gt;$699&lt;/div&gt;\r\n							&lt;div class="price-description"&gt;per month&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-features"&gt;\r\n							&lt;ul&gt;\r\n								&lt;li&gt;Fully Responsive Layout&lt;/li&gt;\r\n								&lt;li&gt;Retina Display Ready&lt;/li&gt;\r\n								&lt;li&gt;Clean and Professional Design&lt;/li&gt;\r\n								&lt;li&gt;W3C Compliant HTML5 &amp;amp; CSS3&lt;/li&gt;\r\n								&lt;li&gt;Premium Plugins Included&lt;/li&gt;\r\n							&lt;/ul&gt;&lt;/div&gt;\r\n						&lt;div class="table-footer"&gt;&lt;a href="#" class="btn btn-danger"&gt;Sign Up&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n					&lt;div class="pricing-table"&gt;\r\n						&lt;div class="table-header"&gt;\r\n							&lt;div class="name"&gt;Enterprise&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-price"&gt;\r\n							&lt;div class="price"&gt;$1199&lt;/div&gt;\r\n							&lt;div class="price-description"&gt;per month&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-features"&gt;\r\n							&lt;ul&gt;\r\n								&lt;li&gt;Fully Responsive Layout&lt;/li&gt;\r\n								&lt;li&gt;Retina Display Ready&lt;/li&gt;\r\n								&lt;li&gt;Clean and Professional Design&lt;/li&gt;\r\n								&lt;li&gt;W3C Compliant HTML5 &amp;amp; CSS3&lt;/li&gt;\r\n								&lt;li&gt;Premium Plugins Included&lt;/li&gt;\r\n							&lt;/ul&gt;&lt;/div&gt;\r\n						&lt;div class="table-footer"&gt;&lt;a href="#" class="btn btn-danger"&gt;Sign Up&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div class="pricing-tables three-tables"&gt;\r\n					&lt;div class="pricing-table"&gt;\r\n						&lt;div class="table-header"&gt;\r\n							&lt;div class="name"&gt;Personal&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-price"&gt;\r\n							&lt;div class="price"&gt;$99&lt;/div&gt;\r\n							&lt;div class="price-description"&gt;per month&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-features"&gt;\r\n							&lt;ul&gt;\r\n								&lt;li&gt;Fully Responsive Layout&lt;/li&gt;\r\n								&lt;li&gt;Retina Display Ready&lt;/li&gt;\r\n								&lt;li&gt;Clean and Professional Design&lt;/li&gt;\r\n								&lt;li&gt;W3C Compliant HTML5 &amp;amp; CSS3&lt;/li&gt;\r\n								&lt;li&gt;Premium Plugins Included&lt;/li&gt;\r\n							&lt;/ul&gt;&lt;/div&gt;\r\n						&lt;div class="table-footer"&gt;&lt;a href="#" class="btn btn-danger"&gt;Sign Up&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n					&lt;div class="pricing-table featured"&gt;\r\n						&lt;div class="table-header"&gt;\r\n							&lt;div class="name"&gt;Professional&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-price"&gt;\r\n							&lt;div class="price"&gt;$699&lt;/div&gt;\r\n							&lt;div class="price-description"&gt;per month&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-features"&gt;\r\n							&lt;ul&gt;\r\n								&lt;li&gt;Fully Responsive Layout&lt;/li&gt;\r\n								&lt;li&gt;Retina Display Ready&lt;/li&gt;\r\n								&lt;li&gt;Clean and Professional Design&lt;/li&gt;\r\n								&lt;li&gt;W3C Compliant HTML5 &amp;amp; CSS3&lt;/li&gt;\r\n								&lt;li&gt;Premium Plugins Included&lt;/li&gt;\r\n							&lt;/ul&gt;&lt;/div&gt;\r\n						&lt;div class="table-footer"&gt;&lt;a href="#" class="btn btn-danger"&gt;Sign Up&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n					&lt;div class="pricing-table"&gt;\r\n						&lt;div class="table-header"&gt;\r\n							&lt;div class="name"&gt;Enterprise&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-price"&gt;\r\n							&lt;div class="price"&gt;$1199&lt;/div&gt;\r\n							&lt;div class="price-description"&gt;per month&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-features"&gt;\r\n							&lt;ul&gt;\r\n								&lt;li&gt;Fully Responsive Layout&lt;/li&gt;\r\n								&lt;li&gt;Retina Display Ready&lt;/li&gt;\r\n								&lt;li&gt;Clean and Professional Design&lt;/li&gt;\r\n								&lt;li&gt;W3C Compliant HTML5 &amp;amp; CSS3&lt;/li&gt;\r\n								&lt;li&gt;Premium Plugins Included&lt;/li&gt;\r\n							&lt;/ul&gt;&lt;/div&gt;\r\n						&lt;div class="table-footer"&gt;&lt;a href="#" class="btn btn-danger"&gt;Sign Up&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/manhattan.jpg); " class="aside-block" data-background="/demo/aside/manhattan.jpg" side=""&gt;\r\n	&lt;div class="aside-container"&gt;\r\n		&lt;div class="aside-content"&gt;\r\n			&lt;div class="container"&gt;\r\n				&lt;div class="row"&gt;\r\n					&lt;div class="span12"&gt;\r\n						&lt;div class="tweet-box"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/a&gt;\r\n&lt;section id="contact" class="section-block"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/manhattan.jpg); " class="aside-block" data-background="/demo/aside/manhattan.jpg" side=""&gt;\r\n		&lt;h1 style="position: relative;" class="section-title"&gt;Get in Touch. &lt;small&gt;Feel Free to Contact Us, We Don''t Bite&lt;/small&gt;&lt;/h1&gt;&lt;/a&gt;\r\n	&lt;div class="container"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/manhattan.jpg); " class="aside-block" data-background="/demo/aside/manhattan.jpg" side=""&gt;\r\n			&lt;div class="row"&gt;\r\n				&lt;div class="span12"&gt;\r\n					&lt;form novalidate="novalidate" id="contact-form" method="post" action=""&gt;\r\n						&lt;div class="controls controls-row row"&gt;\r\n							&lt;div class="span6"&gt;\r\n								&lt;input type="text" placeholder="Name" name="ContactForm[name]" class="input-block-level required" /&gt;&lt;/div&gt;\r\n							&lt;div class="span6"&gt;\r\n								&lt;input type="text" placeholder="Email" name="ContactForm[email]" class="input-block-level required email" /&gt;&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="controls controls-row row"&gt;\r\n							&lt;div class="span6"&gt;\r\n								&lt;input type="text" placeholder="URL" name="ContactForm[url]" class="input-block-level url" /&gt;&lt;/div&gt;\r\n							&lt;div class="span6"&gt;\r\n								&lt;input type="text" placeholder="Subject" name="ContactForm[subject]" class="input-block-level required" /&gt;&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="controls"&gt;\r\n							&lt;textarea placeholder="Message" name="ContactForm[message]" class="required span12" rows="4"&gt;&lt;/textarea&gt;&lt;/div&gt;\r\n						&lt;div class="form-actions"&gt;\r\n							&lt;button class="btn btn-primary" type="submit"&gt;Submit&lt;/button&gt;&lt;/div&gt;\r\n					&lt;/form&gt;&lt;/div&gt;&lt;/div&gt;&lt;/a&gt;\r\n		&lt;div class="row"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/manhattan.jpg); " class="aside-block" data-background="/demo/aside/manhattan.jpg" side=""&gt;&lt;/a&gt;\r\n			&lt;div class="span3"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/manhattan.jpg); " class="aside-block" data-background="/demo/aside/manhattan.jpg" side=""&gt;&lt;/a&gt;\r\n				&lt;div class="sidebar"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/manhattan.jpg); " class="aside-block" data-background="/demo/aside/manhattan.jpg" side=""&gt;\r\n						&lt;div class="sidebar-block"&gt;\r\n							&lt;h3 style="position: relative;"&gt;Let''s Meet Face to Face&lt;/h3&gt;Feel free to meet us if you have anything to discuss. We always welcome you to come to our office.&lt;/div&gt;&lt;/a&gt;\r\n					&lt;div class="sidebar-block"&gt;&lt;a style="background-image: url(http://www.digiapolis.com/demo/aside/manhattan.jpg); " class="aside-block" data-background="/demo/aside/manhattan.jpg" side=""&gt;\r\n							&lt;h3 style="position: relative;"&gt;Our Location&lt;/h3&gt;Avenue des Champs-&amp;Eacute;lys&amp;eacute;es&lt;br /&gt;\r\n							Paris, France&lt;br /&gt;\r\n							&lt;/a&gt;&lt;a href="#"&gt;sales@leviate.fr&lt;/a&gt;&lt;/div&gt;\r\n					&lt;div class="sidebar-block"&gt;\r\n						&lt;h3 style="position: relative;"&gt;We''re Social&lt;/h3&gt;\r\n						&lt;ul class="inline-list"&gt;\r\n							&lt;li&gt;&lt;br /&gt;\r\n								&lt;/li&gt;\r\n							&lt;li&gt;&lt;br /&gt;\r\n								&lt;/li&gt;\r\n							&lt;li&gt;&lt;br /&gt;\r\n								&lt;/li&gt;\r\n							&lt;li&gt;&lt;br /&gt;\r\n								&lt;/li&gt;\r\n							&lt;li&gt;&lt;br /&gt;\r\n								&lt;/li&gt;\r\n						&lt;/ul&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="span9"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;\r\n&lt;footer class="footer"&gt;\r\n	&lt;div class="footer-top"&gt;\r\n		&lt;div class="container"&gt;\r\n			&lt;div class="row"&gt;\r\n				&lt;div class="span4"&gt;\r\n					&lt;h4 ontenteditable="true"&gt;About Leviate&lt;/h4&gt;\r\n					&lt;p style="position: relative;"&gt;&lt;span style="font-weight: bold;"&gt;Leviate&lt;/span&gt; is a responsive HTML5 template featuring clean and retina ready design suitable for any studio, creative or personal use.&lt;/p&gt;\r\n					&lt;p style="position: relative;"&gt;Vestibulum luctus ipsum id quam euismod a malesuada sapien euismot. Vesti bulum ultricies elementum interdum.&lt;/p&gt;&lt;/div&gt;\r\n				&lt;div class="span4"&gt;\r\n					&lt;h4 ontenteditable="true"&gt;Photo Stream&lt;/h4&gt;&lt;/div&gt;\r\n				&lt;div class="span4"&gt;\r\n					&lt;h4 ontenteditable="true"&gt;Recent Tweets&lt;/h4&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n	&lt;div class="footer-bottom"&gt;\r\n		&lt;div class="container"&gt;\r\n			&lt;div class="row"&gt;\r\n				&lt;div class="span12"&gt;Copyright 2013. Leviate. All Rights Reserved.&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/footer&gt; ', '2013-05-06 11:58:16', 69, 69, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(98, 'Who We Are', '&lt;section id="about" class="section-block"&gt; &lt;h1 style="position: relative;" class="section-title cke_focus" contenteditable="true"&gt;Who Loring Is. &lt;small&gt;Digital Enthusiasts. Creative People&lt;/small&gt;&lt;/h1&gt; &lt;div class="container"&gt; &lt;!-- About Text --&gt; &lt;div class="row"&gt; &lt;div class="span12"&gt; &lt;p style="position: relative;" class="lead" contenteditable="true"&gt;Award winning digital agency based in the famous Avenue des Champs-Ã‰lysÃ©es in Paris, France. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="row"&gt; &lt;div class="span6"&gt; &lt;h3 style="position: relative;" contenteditable="true"&gt;Facts About Us&lt;/h3&gt; &lt;ul class="check-list"&gt; &lt;li contenteditable="true"&gt;We do website development services&lt;/li&gt; &lt;li contenteditable="true"&gt;We are awesome and creative&lt;/li&gt; &lt;li contenteditable="true"&gt;We drink ten cups of coffee a day&lt;/li&gt; &lt;li contenteditable="true"&gt;We are the best company in the world&lt;/li&gt; &lt;li contenteditable="true"&gt;We love doing our job&lt;/li&gt; &lt;li contenteditable="true"&gt;We always strive for customer satisfaction&lt;/li&gt; &lt;/ul&gt;&lt;/div&gt; &lt;div class="span6"&gt; &lt;h3 style="position: relative;" contenteditable="true"&gt;Our Expertise&lt;/h3&gt; &lt;div class="skill"&gt; &lt;h6 style="position: relative;" class="name" contenteditable="true"&gt;HTML5&lt;/h6&gt; &lt;div class="progress progress-info progress-striped progress-mini"&gt; &lt;div class="bar" style="width: 20%"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="skill"&gt; &lt;h6 style="position: relative;" class="name" contenteditable="true"&gt;JavaScript&lt;/h6&gt; &lt;div class="progress progress-info progress-striped progress-mini"&gt; &lt;div class="bar" style="width: 40%"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="skill"&gt; &lt;h6 style="position: relative;" class="name" contenteditable="true"&gt;CSS3&lt;/h6&gt; &lt;div class="progress progress-info progress-striped progress-mini"&gt; &lt;div class="bar" style="width: 60%"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="skill"&gt; &lt;h6 style="position: relative;" class="name" contenteditable="true"&gt;Wordpress Development&lt;/h6&gt; &lt;div class="progress progress-info progress-striped progress-mini"&gt; &lt;div class="bar" style="width: 80%"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;!-- End About Text --&gt; &lt;/div&gt;&lt;/section&gt;', '2013-05-06 07:38:05', 73, 73, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(115, 'Header', '&lt;div class="fullscreen-row header"&gt; &lt;header id="zw-header" class="main-header affix-top"&gt; &lt;div class="main-header-wrap clearfix"&gt; &lt;div class="brand"&gt;&lt;a href="#" contenteditable="true"&gt;&lt;img src="/Editor/assets/IDoCampaigns_2013_4_26_FINL_Logo_Color.jpg" alt="I Do Campaigns" height="76" width="275"&gt;&lt;/a&gt;&lt;/div&gt;&lt;a aria-hidden="true" id="nav-toggle" href="#" contenteditable="true"&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" contenteditable="true"&gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" contenteditable="true"&gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" contenteditable="true"&gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" contenteditable="true"&gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" contenteditable="true"&gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" contenteditable="true"&gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" contenteditable="true"&gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" contenteditable="true"&gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" contenteditable="true"&gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" contenteditable="true"&gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" contenteditable="true"&gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" contenteditable="true"&gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" contenteditable="true"&gt;&lt;/a&gt; &lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;span contenteditable="true"&gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;span contenteditable="true"&gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;span contenteditable="true"&gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;span contenteditable="true"&gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;span contenteditable="true"&gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;span contenteditable="true"&gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;span contenteditable="true"&gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;span contenteditable="true"&gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" contenteditable="true"&gt;&lt;span contenteditable="true"&gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#"&gt;&lt;span&gt;&lt;/span&gt;&lt;/a&gt;&lt;nav aria-hidden="false" style="transition: max-height 400ms ease 0s; position: relative;" id="zw-nav" class="nav closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed"&gt; &lt;ul&gt; &lt;li class="active" contenteditable="true"&gt;&lt;a href="#about" contenteditable="true"&gt;About&lt;/a&gt;&lt;/li&gt; &lt;li contenteditable="true"&gt;&lt;a href="#services" contenteditable="true"&gt;Services&lt;/a&gt;&lt;/li&gt; &lt;li class="" contenteditable="true"&gt;&lt;a href="#contact" contenteditable="true"&gt;Contact&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt;&lt;/nav&gt;&lt;/div&gt;&lt;/header&gt;&lt;/div&gt;', '2013-05-06 07:38:05', 73, 73, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(102, '2', '', '2013-05-05 14:59:07', 73, 73, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(100, '3', 'lt;p style="position: relative;" &amp;gt;&lt;em&gt;Dr. Watson - Come Here!!!!&lt;/em&gt;&lt;p style="position: relative;" contenteditable="true"&gt;&lt;/p&gt;&lt;p style="position: relative;" contenteditable="true"&gt;&lt;/p&gt;', '2013-05-06 05:03:09', 73, 73, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(105, 'Meet the team', '\r\n&lt;section id="about" class="section-block small"&gt;\r\n	&lt;h2 class="section-title"&gt;Meet The Team. &lt;small&gt;Without them, we''re nothing&lt;/small&gt;&lt;/h2&gt;\r\n	&lt;div class="container"&gt;\r\n		&lt;!--\r\n		Team\r\n		--&gt;\r\n		\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span3"&gt;\r\n				&lt;div class="team"&gt;\r\n					&lt;div class="team-photo lazyloaded"&gt;&lt;img style="display: inline;" src="demo/team/1.jpg" data-original="demo/team/1.jpg" alt="" /&gt;&lt;/div&gt;\r\n					&lt;div class="team-info"&gt;&lt;span class="name"&gt;Marcus van Basten&lt;/span&gt;&lt;span class="role"&gt;CEO&lt;/span&gt;&lt;/div&gt;\r\n					&lt;div class="team-text"&gt; Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. &lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="span3"&gt;\r\n				&lt;div class="team"&gt;\r\n					&lt;div class="team-photo lazyloaded"&gt;&lt;img style="display: inline;" src="demo/team/2.jpg" data-original="demo/team/2.jpg" alt="" /&gt;&lt;/div&gt;\r\n					&lt;div class="team-info"&gt;&lt;span class="name"&gt;Lara McCarthy&lt;/span&gt;&lt;span class="role"&gt;Public Relation Officer&lt;/span&gt;&lt;/div&gt;\r\n					&lt;div class="team-text"&gt; Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. &lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="span3"&gt;\r\n				&lt;div class="team"&gt;\r\n					&lt;div class="team-photo lazyloaded"&gt;&lt;img style="display: inline;" src="demo/team/3.jpg" data-original="demo/team/3.jpg" alt="" /&gt;&lt;/div&gt;\r\n					&lt;div class="team-info"&gt;&lt;span class="name"&gt;Oliver Sanchez&lt;/span&gt;&lt;span class="role"&gt;Creative Director&lt;/span&gt;&lt;/div&gt;\r\n					&lt;div class="team-text"&gt; Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. &lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="span3"&gt;\r\n				&lt;div class="team"&gt;\r\n					&lt;div class="team-photo lazyloaded"&gt;&lt;img style="display: inline;" src="demo/team/4.jpg" data-original="demo/team/4.jpg" alt="" /&gt;&lt;/div&gt;\r\n					&lt;div class="team-info"&gt;&lt;span class="name"&gt;Jeanette Crow&lt;/span&gt;&lt;span class="role"&gt;Lead Designer&lt;/span&gt;&lt;/div&gt;\r\n					&lt;div class="team-text"&gt; Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. &lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n		&lt;!--\r\n		End Team\r\n		--&gt;\r\n		\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span12"&gt;\r\n				&lt;div class="cta"&gt;\r\n					&lt;div class="cta-inner"&gt;\r\n						&lt;div class="col-text"&gt;\r\n							&lt;h3 class="headline"&gt;Need us to help you on your project?&lt;/h3&gt;\r\n							&lt;p&gt;Request a quote describing your project requirements now to get estimates&lt;/p&gt;&lt;/div&gt;\r\n						&lt;div class="col-btn"&gt;&lt;a href="#" class="btn btn-large btn-danger"&gt;Request a Quote&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;', '2013-06-04 18:59:49', 333, 71, '\0', 0, '', 86, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(106, 'Aside-No Secrets to success', '\r\n&lt;aside style="background-image: url(''demo/aside/bigben.jpg'');" class="aside-block" data-background="demo/aside/bigben.jpg"&gt;\r\n	&lt;div class="aside-overlay"&gt;&amp;nbsp;&lt;/div&gt;\r\n	&lt;div class="aside-container"&gt;\r\n		&lt;div class="aside-content"&gt;\r\n			&lt;div class="container"&gt;\r\n				&lt;div class="row"&gt;\r\n					&lt;div class="span12"&gt;\r\n						&lt;div class="aside-title"&gt;Featured Video&lt;/div&gt;\r\n						&lt;div class="media"&gt;\r\n							&lt;div style="padding-top: 50%;" class="fluid-width-video-wrapper"&gt;\r\n								&lt;iframe frameborder="0" id="fitvid302756" src="http://player.vimeo.com/video/62959319?title=0&amp;amp;byline=0&amp;amp;portrait=0&amp;amp;badge=0&amp;amp;color=bb2323" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""&gt;&lt;/iframe&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/aside&gt;', '2013-06-04 18:59:49', 333, 71, '\0', 0, '', 87, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(107, 'Services', '\r\n&lt;section id="services" class="section-block"&gt;\r\n	&lt;h1 class="section-title"&gt;Awesome Service. &lt;small&gt;See Below, You Might Be Interested!&lt;/small&gt;&lt;/h1&gt;\r\n	&lt;div class="container"&gt;\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span12"&gt;\r\n				&lt;p class="lead"&gt;&lt;span class="dropcap"&gt;L&lt;/span&gt;orem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span4"&gt;\r\n				&lt;div class="service"&gt;\r\n					&lt;div class="service-icon"&gt;&lt;span style="font-style: italic;"&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;h3 class="title"&gt;Web Development&lt;/h3&gt;\r\n					&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&lt;/p&gt;&lt;a href="#" class="btn btn-danger"&gt;Learn More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="span4"&gt;\r\n				&lt;div class="service"&gt;\r\n					&lt;div class="service-icon"&gt;&lt;span style="font-style: italic;"&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;h3 class="title"&gt;Website SEO&lt;/h3&gt;\r\n					&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&lt;/p&gt;&lt;a href="#" class="btn btn-danger"&gt;Learn More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="span4"&gt;\r\n				&lt;div class="service"&gt;\r\n					&lt;div class="service-icon"&gt;&lt;span style="font-style: italic;"&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;h3 class="title"&gt;Branding&lt;/h3&gt;\r\n					&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&lt;/p&gt;&lt;a href="#" class="btn btn-danger"&gt;Learn More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span4"&gt;\r\n				&lt;div class="service"&gt;\r\n					&lt;div class="service-icon"&gt;&lt;span style="font-style: italic;"&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;h3 class="title"&gt;Wordpress Themes&lt;/h3&gt;\r\n					&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&lt;/p&gt;&lt;a href="#" class="btn btn-danger"&gt;Learn More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="span4"&gt;\r\n				&lt;div class="service"&gt;\r\n					&lt;div class="service-icon"&gt;&lt;span style="font-style: italic;"&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;h3 class="title"&gt;Strategic Marketing&lt;/h3&gt;\r\n					&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&lt;/p&gt;&lt;a href="#" class="btn btn-danger"&gt;Learn More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="span4"&gt;\r\n				&lt;div class="service"&gt;\r\n					&lt;div class="service-icon"&gt;&lt;span style="font-style: italic;"&gt;&lt;/span&gt;&lt;/div&gt;\r\n					&lt;h3 class="title"&gt;Web Hosting&lt;/h3&gt;\r\n					&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.&lt;/p&gt;&lt;a href="#" class="btn btn-danger"&gt;Learn More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;', '2013-06-04 18:59:49', 333, 71, '\0', 0, '', 88, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(108, 'Our Work', '\r\n&lt;section id="work" class="section-block"&gt;\r\n	&lt;h1 class="section-title"&gt;We Are Proud. &lt;small&gt;See Below to See Why We''re Proud&lt;/small&gt;&lt;/h1&gt;\r\n	&lt;!--\r\n	Portfolio\r\n	--&gt;\r\n	\r\n	&lt;div class="portfolio clearfix"&gt;\r\n		&lt;div class="container"&gt;\r\n			&lt;!--\r\n			Filter\r\n			--&gt;\r\n			\r\n			&lt;div class="row"&gt;\r\n				&lt;div class="span12"&gt;\r\n					&lt;div class="filter" data-label="Show: "&gt;&lt;span data-label="Show: " class="active-label" data-toggle="dropdown"&gt;All&lt;/span&gt;\r\n						&lt;ul&gt;\r\n							&lt;li class="active"&gt;&lt;a href="#" data-filter="*"&gt;All&lt;/a&gt;&lt;/li&gt;\r\n							&lt;li&gt;&lt;a href="#" data-filter=".illustration"&gt;Illustration&lt;/a&gt;&lt;/li&gt;\r\n							&lt;li&gt;&lt;a href="#" data-filter=".web-design"&gt;Web Design&lt;/a&gt;&lt;/li&gt;\r\n							&lt;li&gt;&lt;a href="#" data-filter=".graphic-design"&gt;Graphic Design&lt;/a&gt;&lt;/li&gt;\r\n							&lt;li&gt;&lt;a href="#" data-filter=".photography"&gt;Photography&lt;/a&gt;&lt;/li&gt;\r\n						&lt;/ul&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;!--\r\n			End Filter\r\n			--&gt;\r\n			\r\n			&lt;!--\r\n			Items\r\n			--&gt;\r\n			\r\n			&lt;div class="row"&gt;\r\n				&lt;div class="span12"&gt;\r\n					&lt;div style="position: relative; overflow: hidden; height: 1368px;" class="items-wrap clearfix isotope"&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; transform: translate(0px, 0px);" class="item illustration isotope-item"&gt;&lt;a href="php/work/work.php?itemId=1" class="item-link"&gt;\r\n								&lt;div class="overlay"&gt;&amp;nbsp;&lt;/div&gt;&lt;img src="demo/work/a.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; transform: translate(248px, 0px);" class="item illustration isotope-item"&gt;&lt;a href="php/work/work.php?itemId=2" class="item-link"&gt;\r\n								&lt;div class="overlay"&gt;&amp;nbsp;&lt;/div&gt;&lt;img src="demo/work/b.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; transform: translate(496px, 0px);" class="item web-design isotope-item"&gt;&lt;a href="php/work/work.php?itemId=3" class="item-link"&gt;\r\n								&lt;div class="overlay"&gt;&amp;nbsp;&lt;/div&gt;&lt;img src="demo/work/c.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; transform: translate(496px, 186px);" class="item graphic-design isotope-item"&gt;&lt;a href="php/work/work.php?itemId=4" class="item-link"&gt;\r\n								&lt;div class="overlay"&gt;&amp;nbsp;&lt;/div&gt;&lt;img src="demo/work/d.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; transform: translate(248px, 247px);" class="item graphic-design isotope-item"&gt;&lt;a href="php/work/work.php?itemId=5" class="item-link"&gt;\r\n								&lt;div class="overlay"&gt;&amp;nbsp;&lt;/div&gt;&lt;img src="demo/work/e.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; transform: translate(0px, 341px);" class="item web-design isotope-item"&gt;&lt;a href="php/work/work.php?itemId=6" class="item-link"&gt;\r\n								&lt;div class="overlay"&gt;&amp;nbsp;&lt;/div&gt;&lt;img src="demo/work/f.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; transform: translate(0px, 529px);" class="item illustration isotope-item"&gt;&lt;a href="php/work/work.php?itemId=1" class="item-link"&gt;\r\n								&lt;div class="overlay"&gt;&amp;nbsp;&lt;/div&gt;&lt;img src="demo/work/g.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; transform: translate(496px, 530px);" class="item photography isotope-item"&gt;&lt;a href="php/work/work.php?itemId=2" class="item-link"&gt;\r\n								&lt;div class="overlay"&gt;&amp;nbsp;&lt;/div&gt;&lt;img src="demo/work/h.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; transform: translate(248px, 608px);" class="item web-design isotope-item"&gt;&lt;a href="php/work/work.php?itemId=3" class="item-link"&gt;\r\n								&lt;div class="overlay"&gt;&amp;nbsp;&lt;/div&gt;&lt;img src="demo/work/i.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; transform: translate(0px, 853px);" class="item photography isotope-item"&gt;&lt;a href="php/work/work.php?itemId=4" class="item-link"&gt;\r\n								&lt;div class="overlay"&gt;&amp;nbsp;&lt;/div&gt;&lt;img src="demo/work/j.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; transform: translate(496px, 1004px);" class="item graphic-design isotope-item"&gt;&lt;a href="php/work/work.php?itemId=5" class="item-link"&gt;\r\n								&lt;div class="overlay"&gt;&amp;nbsp;&lt;/div&gt;&lt;img src="demo/work/k.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; transform: translate(0px, 1040px);" class="item illustration isotope-item"&gt;&lt;a href="php/work/work.php?itemId=6" class="item-link"&gt;\r\n								&lt;div class="overlay"&gt;&amp;nbsp;&lt;/div&gt;&lt;img src="demo/work/l.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;\r\n						&lt;div style="position: absolute; left: 0px; top: 0px; transform: translate(248px, 1082px);" class="item web-design isotope-item"&gt;&lt;a href="php/work/work.php?itemId=3" class="item-link"&gt;\r\n								&lt;div class="overlay"&gt;&amp;nbsp;&lt;/div&gt;&lt;img src="demo/work/m.jpg" alt="" /&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n			&lt;!--\r\n			End Items\r\n			--&gt;\r\n			&lt;/div&gt;&lt;/div&gt;\r\n	&lt;!--\r\n	End Portfolio\r\n	--&gt;\r\n	&lt;/section&gt;', '2013-06-04 18:59:49', 333, 71, '\0', 0, '', 89, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(109, 'Our Beloved Client', '\r\n&lt;section id="clients" class="section-block small"&gt;\r\n	&lt;h2 class="section-title"&gt;Our Beloved Clients.&lt;/h2&gt;\r\n	&lt;div class="container"&gt;\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span12"&gt;\r\n				&lt;!--\r\n				Client\r\n				--&gt;\r\n				\r\n				&lt;div class="clients"&gt;\r\n					&lt;ul&gt;\r\n						&lt;li&gt;&lt;span class="client-wrap"&gt;&lt;span class="client-logo"&gt;&lt;a href="#"&gt;&lt;img src="assets/img/lazy_client.png" data-original="demo/clients/3o.png" alt="" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n						&lt;li&gt;&lt;span class="client-wrap"&gt;&lt;span class="client-logo"&gt;&lt;a href="#"&gt;&lt;img src="assets/img/lazy_client.png" data-original="demo/clients/ad.png" alt="" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n						&lt;li&gt;&lt;span class="client-wrap"&gt;&lt;span class="client-logo"&gt;&lt;a href="#"&gt;&lt;img src="assets/img/lazy_client.png" data-original="demo/clients/aj.png" alt="" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n						&lt;li&gt;&lt;span class="client-wrap"&gt;&lt;span class="client-logo"&gt;&lt;a href="#"&gt;&lt;img src="assets/img/lazy_client.png" data-original="demo/clients/cc.png" alt="" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n						&lt;li&gt;&lt;span class="client-wrap"&gt;&lt;span class="client-logo"&gt;&lt;a href="#"&gt;&lt;img src="assets/img/lazy_client.png" data-original="demo/clients/gr.png" alt="" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n						&lt;li&gt;&lt;span class="client-wrap"&gt;&lt;span class="client-logo"&gt;&lt;a href="#"&gt;&lt;img src="assets/img/lazy_client.png" data-original="demo/clients/pd.png" alt="" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n						&lt;li&gt;&lt;span class="client-wrap"&gt;&lt;span class="client-logo"&gt;&lt;a href="#"&gt;&lt;img src="assets/img/lazy_client.png" data-original="demo/clients/tf.png" alt="" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n						&lt;li&gt;&lt;span class="client-wrap"&gt;&lt;span class="client-logo"&gt;&lt;a href="#"&gt;&lt;img src="assets/img/lazy_client.png" data-original="demo/clients/vh.png" alt="" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;\r\n					&lt;/ul&gt;&lt;/div&gt;\r\n				&lt;!--\r\n				End Client\r\n				--&gt;\r\n				&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;', '2013-06-04 18:59:49', 333, 71, '\0', 0, '', 90, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(110, 'Our Pricing', '\r\n&lt;section id="pricing" class="section-block"&gt;\r\n	&lt;h1 class="section-title"&gt;Our Pricing. &lt;small&gt;See it Yourself, We''re Affordable&lt;/small&gt;&lt;/h1&gt;\r\n	&lt;div class="container"&gt;\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span12"&gt;\r\n				&lt;div class="pricing-tables four-tables"&gt;\r\n					&lt;!--\r\n					Pricing Table 1-4\r\n					--&gt;\r\n					\r\n					&lt;div class="pricing-table"&gt;\r\n						&lt;div class="table-header"&gt;\r\n							&lt;div class="name"&gt;Personal&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-price"&gt;\r\n							&lt;div class="price"&gt;$99 &lt;/div&gt;\r\n							&lt;div class="price-description"&gt; per month &lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-features"&gt;\r\n							&lt;ul&gt;\r\n								&lt;li&gt;Fully Responsive Layout&lt;/li&gt;\r\n								&lt;li&gt;Retina Display Ready&lt;/li&gt;\r\n								&lt;li&gt;Clean and Professional Design&lt;/li&gt;\r\n								&lt;li&gt;W3C Compliant HTML5 &amp;amp; CSS3&lt;/li&gt;\r\n								&lt;li&gt;Premium Plugins Included&lt;/li&gt;\r\n							&lt;/ul&gt;&lt;/div&gt;\r\n						&lt;div class="table-footer"&gt;&lt;a href="#" class="btn btn-danger"&gt;Sign Up&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n					&lt;!--\r\n					End Pricing Table 1-4\r\n					--&gt;\r\n					\r\n					&lt;!--\r\n					Pricing Table 1-4\r\n					--&gt;\r\n					\r\n					&lt;div class="pricing-table featured"&gt;\r\n						&lt;div class="table-header"&gt;\r\n							&lt;div class="name"&gt;Small Business&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-price"&gt;\r\n							&lt;div class="price"&gt;$299 &lt;/div&gt;\r\n							&lt;div class="price-description"&gt; per month &lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-features"&gt;\r\n							&lt;ul&gt;\r\n								&lt;li&gt;Fully Responsive Layout&lt;/li&gt;\r\n								&lt;li&gt;Retina Display Ready&lt;/li&gt;\r\n								&lt;li&gt;Clean and Professional Design&lt;/li&gt;\r\n								&lt;li&gt;W3C Compliant HTML5 &amp;amp; CSS3&lt;/li&gt;\r\n								&lt;li&gt;Premium Plugins Included&lt;/li&gt;\r\n							&lt;/ul&gt;&lt;/div&gt;\r\n						&lt;div class="table-footer"&gt;&lt;a href="#" class="btn btn-danger"&gt;Sign Up&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n					&lt;!--\r\n					End Pricing Table 1-4\r\n					--&gt;\r\n					\r\n					&lt;!--\r\n					Pricing Table 1-4\r\n					--&gt;\r\n					\r\n					&lt;div class="pricing-table"&gt;\r\n						&lt;div class="table-header"&gt;\r\n							&lt;div class="name"&gt;Professional&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-price"&gt;\r\n							&lt;div class="price"&gt;$699 &lt;/div&gt;\r\n							&lt;div class="price-description"&gt; per month &lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-features"&gt;\r\n							&lt;ul&gt;\r\n								&lt;li&gt;Fully Responsive Layout&lt;/li&gt;\r\n								&lt;li&gt;Retina Display Ready&lt;/li&gt;\r\n								&lt;li&gt;Clean and Professional Design&lt;/li&gt;\r\n								&lt;li&gt;W3C Compliant HTML5 &amp;amp; CSS3&lt;/li&gt;\r\n								&lt;li&gt;Premium Plugins Included&lt;/li&gt;\r\n							&lt;/ul&gt;&lt;/div&gt;\r\n						&lt;div class="table-footer"&gt;&lt;a href="#" class="btn btn-danger"&gt;Sign Up&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n					&lt;!--\r\n					End Pricing Table 1-4\r\n					--&gt;\r\n					\r\n					&lt;!--\r\n					Pricing Table 1-4\r\n					--&gt;\r\n					\r\n					&lt;div class="pricing-table"&gt;\r\n						&lt;div class="table-header"&gt;\r\n							&lt;div class="name"&gt;Enterprise&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-price"&gt;\r\n							&lt;div class="price"&gt;$1199 &lt;/div&gt;\r\n							&lt;div class="price-description"&gt; per month &lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-features"&gt;\r\n							&lt;ul&gt;\r\n								&lt;li&gt;Fully Responsive Layout&lt;/li&gt;\r\n								&lt;li&gt;Retina Display Ready&lt;/li&gt;\r\n								&lt;li&gt;Clean and Professional Design&lt;/li&gt;\r\n								&lt;li&gt;W3C Compliant HTML5 &amp;amp; CSS3&lt;/li&gt;\r\n								&lt;li&gt;Premium Plugins Included&lt;/li&gt;\r\n							&lt;/ul&gt;&lt;/div&gt;\r\n						&lt;div class="table-footer"&gt;&lt;a href="#" class="btn btn-danger"&gt;Sign Up&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n					&lt;!--\r\n					End Pricing Table 1-4\r\n					--&gt;\r\n					&lt;/div&gt;\r\n				&lt;div class="separator"&gt;&amp;nbsp;&lt;/div&gt;\r\n				&lt;div class="pricing-tables three-tables"&gt;\r\n					&lt;!--\r\n					Pricing Table 1-3\r\n					--&gt;\r\n					\r\n					&lt;div class="pricing-table"&gt;\r\n						&lt;div class="table-header"&gt;\r\n							&lt;div class="name"&gt;Personal&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-price"&gt;\r\n							&lt;div class="price"&gt;$99 &lt;/div&gt;\r\n							&lt;div class="price-description"&gt; per month &lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-features"&gt;\r\n							&lt;ul&gt;\r\n								&lt;li&gt;Fully Responsive Layout&lt;/li&gt;\r\n								&lt;li&gt;Retina Display Ready&lt;/li&gt;\r\n								&lt;li&gt;Clean and Professional Design&lt;/li&gt;\r\n								&lt;li&gt;W3C Compliant HTML5 &amp;amp; CSS3&lt;/li&gt;\r\n								&lt;li&gt;Premium Plugins Included&lt;/li&gt;\r\n							&lt;/ul&gt;&lt;/div&gt;\r\n						&lt;div class="table-footer"&gt;&lt;a href="#" class="btn btn-danger"&gt;Sign Up&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n					&lt;!--\r\n					End Pricing Table 1-3\r\n					--&gt;\r\n					\r\n					&lt;!--\r\n					Pricing Table 1-3\r\n					--&gt;\r\n					\r\n					&lt;div class="pricing-table featured"&gt;\r\n						&lt;div class="table-header"&gt;\r\n							&lt;div class="name"&gt;Professional&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-price"&gt;\r\n							&lt;div class="price"&gt;$699 &lt;/div&gt;\r\n							&lt;div class="price-description"&gt; per month &lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-features"&gt;\r\n							&lt;ul&gt;\r\n								&lt;li&gt;Fully Responsive Layout&lt;/li&gt;\r\n								&lt;li&gt;Retina Display Ready&lt;/li&gt;\r\n								&lt;li&gt;Clean and Professional Design&lt;/li&gt;\r\n								&lt;li&gt;W3C Compliant HTML5 &amp;amp; CSS3&lt;/li&gt;\r\n								&lt;li&gt;Premium Plugins Included&lt;/li&gt;\r\n							&lt;/ul&gt;&lt;/div&gt;\r\n						&lt;div class="table-footer"&gt;&lt;a href="#" class="btn btn-danger"&gt;Sign Up&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n					&lt;!--\r\n					End Pricing Table 1-3\r\n					--&gt;\r\n					\r\n					&lt;!--\r\n					Pricing Table 1-3\r\n					--&gt;\r\n					\r\n					&lt;div class="pricing-table"&gt;\r\n						&lt;div class="table-header"&gt;\r\n							&lt;div class="name"&gt;Enterprise&lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-price"&gt;\r\n							&lt;div class="price"&gt;$1199 &lt;/div&gt;\r\n							&lt;div class="price-description"&gt; per month &lt;/div&gt;&lt;/div&gt;\r\n						&lt;div class="table-features"&gt;\r\n							&lt;ul&gt;\r\n								&lt;li&gt;Fully Responsive Layout&lt;/li&gt;\r\n								&lt;li&gt;Retina Display Ready&lt;/li&gt;\r\n								&lt;li&gt;Clean and Professional Design&lt;/li&gt;\r\n								&lt;li&gt;W3C Compliant HTML5 &amp;amp; CSS3&lt;/li&gt;\r\n								&lt;li&gt;Premium Plugins Included&lt;/li&gt;\r\n							&lt;/ul&gt;&lt;/div&gt;\r\n						&lt;div class="table-footer"&gt;&lt;a href="#" class="btn btn-danger"&gt;Sign Up&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;\r\n					&lt;!--\r\n					End Pricing Table 1-3\r\n					--&gt;\r\n					&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;', '2013-06-04 18:59:49', 333, 71, '\0', 0, '', 91, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(111, 'Get in Touch', '&lt;section class="section-block" id="contact"&gt; &lt;h1 style="position: relative;" class="section-title cke_focus" &gt;Get in Touch. &lt;small&gt;Feel Free to Contact Us, We Don''t Bite&lt;/small&gt;&lt;/h1&gt; &lt;div class="container"&gt; &lt;div class="row"&gt; &lt;div class="span12"&gt; &lt;form novalidate="novalidate" action="php/contact/contact.php" method="post" id="contact-form"&gt; &lt;div class="controls controls-row row"&gt; &lt;div class="span6"&gt; &lt;input class="input-block-level required" name="ContactForm[name]" placeholder="Name" type="text"&gt;&lt;/div&gt; &lt;div class="span6"&gt; &lt;input class="input-block-level required email" name="ContactForm[email]" placeholder="Email" type="text"&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="controls controls-row row"&gt; &lt;div class="span6"&gt; &lt;input class="input-block-level url" name="ContactForm[url]" placeholder="URL" type="text"&gt;&lt;/div&gt; &lt;div class="span6"&gt; &lt;input class="input-block-level required" name="ContactForm[subject]" placeholder="Subject" type="text"&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="controls"&gt; &lt;textarea rows="4" class="required span12" name="ContactForm[message]" placeholder="Message"&gt;&lt;/textarea&gt;&lt;/div&gt; &lt;div class="form-actions"&gt; &lt;button type="submit" class="btn btn-primary"&gt;Submit&lt;/button&gt;&lt;/div&gt; &lt;/form&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="row"&gt; &lt;div class="span3"&gt; &lt;div class="sidebar"&gt; &lt;div class="sidebar-block"&gt; &lt;h3 style="position: relative;" &gt;Let''s Meet Face to Face&lt;/h3&gt;Feel free to meet us if you have anything to discuss. We always welcome you to come to our office.&lt;/div&gt; &lt;div class="sidebar-block"&gt; &lt;h3 style="position: relative;" &gt;Our Location&lt;/h3&gt;Avenue des Champs-ï¿½lysï¿½es&lt;br&gt; Paris, France&lt;br&gt; &lt;a href="#" &gt;sales@leviate.fr&lt;/a&gt;&lt;/div&gt; &lt;div class="sidebar-block"&gt; &lt;h3 style="position: relative;" &gt;We''re Social&lt;/h3&gt; &lt;ul class="inline-list"&gt; &lt;li &gt;&lt;br&gt; &lt;/li&gt; &lt;li &gt;&lt;br&gt; &lt;/li&gt; &lt;li &gt;&lt;br&gt; &lt;/li&gt; &lt;li &gt;&lt;br&gt; &lt;/li&gt; &lt;li &gt;&lt;br&gt; &lt;/li&gt; &lt;/ul&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="span9"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;', '2013-06-04 18:59:49', 333, 71, '\0', 0, '', 93, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(112, 'Who we are', '\r\n&lt;section id="about" class="section-block"&gt;\r\n	&lt;h1 class="section-title"&gt;Who We Are. &lt;small&gt;Digital Enthusiasts. Creative People&lt;/small&gt;&lt;/h1&gt;\r\n	&lt;div class="container"&gt;\r\n		&lt;!--\r\n		About Text\r\n		--&gt;\r\n		\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span12"&gt;\r\n				&lt;p class="lead"&gt;&lt;span class="dropcap"&gt;A&lt;/span&gt;ward winning digital agency based in the famous Avenue des Champs-&amp;Eacute;lys&amp;eacute;es in Paris, France. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;\r\n		&lt;div class="row"&gt;\r\n			&lt;div class="span6"&gt;\r\n				&lt;h3&gt;Facts About Us&lt;/h3&gt;\r\n				&lt;ul class="check-list"&gt;\r\n					&lt;li&gt;We do website development services&lt;/li&gt;\r\n					&lt;li&gt;We are awesome and creative&lt;/li&gt;\r\n					&lt;li&gt;We drink ten cups of coffee a day&lt;/li&gt;\r\n					&lt;li&gt;We are the best company in the world&lt;/li&gt;\r\n					&lt;li&gt;We love doing our job&lt;/li&gt;\r\n					&lt;li&gt;We always strive for customer satisfaction&lt;/li&gt;\r\n				&lt;/ul&gt;&lt;/div&gt;\r\n			&lt;div class="span6"&gt;\r\n				&lt;h3&gt;Our Expertise&lt;/h3&gt;\r\n				&lt;div class="skill"&gt;\r\n					&lt;h6 class="name"&gt;HTML5&lt;/h6&gt;\r\n					&lt;div class="progress progress-info progress-striped progress-mini"&gt;\r\n						&lt;div class="bar" style="width: 20%"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div class="skill"&gt;\r\n					&lt;h6 class="name"&gt;JavaScript&lt;/h6&gt;\r\n					&lt;div class="progress progress-info progress-striped progress-mini"&gt;\r\n						&lt;div class="bar" style="width: 40%"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div class="skill"&gt;\r\n					&lt;h6 class="name"&gt;CSS3&lt;/h6&gt;\r\n					&lt;div class="progress progress-info progress-striped progress-mini"&gt;\r\n						&lt;div class="bar" style="width: 60%"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div class="skill"&gt;\r\n					&lt;h6 class="name"&gt;Wordpress Development&lt;/h6&gt;\r\n					&lt;div class="progress progress-info progress-striped progress-mini"&gt;\r\n						&lt;div class="bar" style="width: 80%"&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n		&lt;!--\r\n		End About Text\r\n		--&gt;\r\n		&lt;/div&gt;&lt;/section&gt;', '2013-06-04 18:59:49', 333, 71, '\0', 0, '', 84, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(113, 'Header', '&lt;div class="fullscreen-row header"&gt; &lt;header class="main-header affix-top" id="zw-header"&gt; &lt;div class="main-header-wrap clearfix"&gt; &lt;div class="brand"&gt;&lt;a href="#" &gt;&lt;img alt="I Do Campaigns" src="/Editor/assets/IDoCampaigns_2013_4_26_FINL_Logo_Color.jpg" height="76" width="275"&gt;&lt;/a&gt;&lt;/div&gt;&lt;a href="#" id="nav-toggle" aria-hidden="true" &gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" &gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" &gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" &gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" &gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" &gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" &gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" &gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" &gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" &gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" &gt;&lt;/a&gt;&lt;a href="#" id="nav-toggle" &gt;&lt;/a&gt; &lt;a id="nav-toggle" href="#" &gt;&lt;span &gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" &gt;&lt;span &gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" &gt;&lt;span &gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" &gt;&lt;span &gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" &gt;&lt;span &gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" &gt;&lt;span &gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" &gt;&lt;span &gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" &gt;&lt;span &gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" &gt;&lt;span &gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" &gt;&lt;span &gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#" &gt;&lt;span &gt;&lt;/span&gt;&lt;/a&gt;&lt;a id="nav-toggle" href="#"&gt;&lt;span&gt;&lt;/span&gt;&lt;/a&gt;&lt;nav class="nav closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed closed" id="zw-nav" style="transition: max-height 400ms ease 0s; position: relative;" aria-hidden="false"&gt; &lt;ul&gt; &lt;li class="active" &gt;&lt;a href="#about" &gt;About&lt;/a&gt;&lt;/li&gt; &lt;li &gt;&lt;a href="#services" &gt;Services&lt;/a&gt;&lt;/li&gt; &lt;li class="" &gt;&lt;a href="#contact" &gt;Contact&lt;/a&gt;&lt;/li&gt; &lt;/ul&gt;&lt;/nav&gt;&lt;/div&gt;&lt;/header&gt;&lt;/div&gt;', '2013-06-04 18:59:49', 333, 71, '\0', 0, '', 85, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(114, 'Featured Video', '\r\n&lt;aside style="background-image: url(''demo/aside/copenhagen.jpg'');" class="aside-block" data-background="demo/aside/copenhagen.jpg"&gt;\r\n	&lt;div class="aside-overlay"&gt;&amp;nbsp;&lt;/div&gt;\r\n	&lt;div class="aside-container"&gt;\r\n		&lt;div class="aside-content"&gt;\r\n			&lt;div class="container"&gt;\r\n				&lt;div class="row"&gt;\r\n					&lt;div class="span12"&gt;\r\n						&lt;div class="aside-title"&gt;Latest Posts&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n				&lt;div class="row"&gt;\r\n					&lt;div class="span4"&gt;\r\n						&lt;div class="recent-post"&gt;\r\n							&lt;figure class="media recent-post-image"&gt;&lt;img src="assets/img/lazy_blog_thumb.png" data-original="demo/blog/tokyo.jpg" alt="" /&gt;&lt;a class="overlay" href="blog.html"&gt;\r\n									&lt;div class="post-icon"&gt;&lt;span style="font-style: italic;"&gt;&lt;/span&gt;&lt;/div&gt;&lt;/a&gt;&lt;/figure&gt;\r\n							&lt;div class="recent-post-text"&gt;\r\n								&lt;h3 class="title"&gt;Blog Title&lt;/h3&gt;\r\n								&lt;ul class="meta"&gt;\r\n									&lt;li&gt;&lt;span style="font-style: italic;"&gt;&lt;/span&gt; April 26, 2013&lt;/li&gt;\r\n									&lt;li&gt;&lt;span style="font-style: italic;"&gt;&lt;/span&gt; 14 Comments&lt;/li&gt;\r\n								&lt;/ul&gt;\r\n								&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.&lt;/p&gt;&lt;a href="blog.html" class="btn btn-danger"&gt;Read More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n					&lt;div class="span4"&gt;\r\n						&lt;div class="recent-post"&gt;\r\n							&lt;figure class="media recent-post-image"&gt;&lt;img src="assets/img/lazy_blog_thumb.png" data-original="demo/blog/london.jpg" alt="" /&gt;&lt;a class="overlay" href="blog.html"&gt;\r\n									&lt;div class="post-icon"&gt;&lt;span style="font-style: italic;"&gt;&lt;/span&gt;&lt;/div&gt;&lt;/a&gt;&lt;/figure&gt;\r\n							&lt;div class="recent-post-text"&gt;\r\n								&lt;h3 class="title"&gt;Blog Title&lt;/h3&gt;\r\n								&lt;ul class="meta"&gt;\r\n									&lt;li&gt;&lt;span style="font-style: italic;"&gt;&lt;/span&gt; April 20, 2013&lt;/li&gt;\r\n									&lt;li&gt;&lt;span style="font-style: italic;"&gt;&lt;/span&gt; 10 Comments&lt;/li&gt;\r\n								&lt;/ul&gt;\r\n								&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.&lt;/p&gt;&lt;a href="blog.html" class="btn btn-danger"&gt;Read More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n					&lt;div class="span4"&gt;\r\n						&lt;div class="recent-post"&gt;\r\n							&lt;figure class="media recent-post-image"&gt;&lt;img src="assets/img/lazy_blog_thumb.png" data-original="demo/blog/newyork.jpg" alt="" /&gt;&lt;a class="overlay" href="blog.html"&gt;\r\n									&lt;div class="post-icon"&gt;&lt;span style="font-style: italic;"&gt;&lt;/span&gt;&lt;/div&gt;&lt;/a&gt;&lt;/figure&gt;\r\n							&lt;div class="recent-post-text"&gt;\r\n								&lt;h3 class="title"&gt;Blog Title&lt;/h3&gt;\r\n								&lt;ul class="meta"&gt;\r\n									&lt;li&gt;&lt;span style="font-style: italic;"&gt;&lt;/span&gt; March 26, 2013&lt;/li&gt;\r\n									&lt;li&gt;&lt;span style="font-style: italic;"&gt;&lt;/span&gt; 3 Comments&lt;/li&gt;\r\n								&lt;/ul&gt;\r\n								&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.&lt;/p&gt;&lt;a href="blog.html" class="btn btn-danger"&gt;Read More&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/aside&gt;', '2013-06-04 18:59:49', 333, 71, '\0', 0, '', 104, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(176, 'Home', '\r\n&lt;section id="home"&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;div class="twelve columns"&gt;\r\n			&lt;div style="&amp;lt;div" class="fade-it "&gt;\r\n				&lt;div class="roles"&gt;\r\n					&lt;div style="margin-top: 0px;"&gt; Effective &lt;/div&gt;\r\n					&lt;div&gt; Efficient &lt;/div&gt;\r\n					&lt;div&gt; Practical Solutions &lt;/div&gt;\r\n					&lt;div&gt;&amp;nbsp;&lt;/div&gt;\r\n					&lt;div&gt;\r\n						&lt;div&gt;&amp;nbsp;&lt;/div&gt;\r\n						&lt;div&gt;&amp;nbsp;&lt;/div&gt;\r\n						&lt;div&gt;\r\n							&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;\r\n		&lt;!--\r\n		LITTLE LOGO SEE WHAT WE DO\r\n		--&gt;\r\n		\r\n		&lt;div class="fade-it" id="down_button"&gt;&lt;a href="#whatwedo"&gt;&lt;/a&gt;&lt;/div&gt;\r\n		&lt;!--\r\n		END LITTLE LOGO SEE WHAT WE DO\r\n		--&gt;\r\n		&lt;/div&gt;&lt;/section&gt;', '2013-06-24 13:14:50', 27, 78, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(116, 'Slider', '&lt;div class="fullscreen-row slider" id="zw-slider"&gt; &lt;div class="slider-block"&gt; &lt;div class="cycle-slider" style="overflow: hidden;"&gt; &lt;div class="slide-wrap cycle-slide cycle-sentinel" style="left: 0px; top: 0px; display: block; visibility: hidden; position: static; z-index: 100; opacity: 1;"&gt; &lt;div class="slide" style="visibility: hidden;"&gt;&lt;img style="visibility: hidden;" alt="" src="/Editor/assets/Clouds.jpg"&gt;&lt;/div&gt; &lt;div class="caption-box" style="visibility: hidden;"&gt; &lt;div class="caption" style="visibility: hidden;"&gt;&lt;span class="slide-text" style="visibility: hidden;" contenteditable="true"&gt;We Are "I Do Campaigns".&lt;br style="visibility: hidden;"&gt; Awesome and Creative.&lt;/span&gt;&lt;span class="slide-link" style="visibility: hidden;" contenteditable="true"&gt;&lt;a style="visibility: hidden;" href="#about" contenteditable="true"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="cycle-next"&gt;&amp;nbsp;&lt;/div&gt; &lt;div class="cycle-prev"&gt;&amp;nbsp;&lt;/div&gt; &lt;div class="slide-wrap cycle-slide cycle-sentinel" style="left: 0px; top: 0px; display: none; visibility: hidden; position: absolute; z-index: 93; opacity: 1;"&gt; &lt;div class="slide" style="visibility: hidden;"&gt;&lt;img style="visibility: hidden;" alt="" src="/Editor/assets/Clouds.jpg"&gt;&lt;/div&gt; &lt;div class="caption-box" style="visibility: hidden;"&gt; &lt;div class="caption" style="visibility: hidden;"&gt;&lt;span class="slide-text" style="visibility: hidden;" contenteditable="true"&gt;We Are "I Do Campaigns".&lt;br style="visibility: hidden;"&gt; Awesome and Creative.&lt;/span&gt;&lt;span class="slide-link" style="visibility: hidden;" contenteditable="true"&gt;&lt;a style="visibility: hidden;" href="#about" contenteditable="true"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="slide-wrap cycle-slide cycle-sentinel" style="left: 0px; top: 0px; display: none; visibility: hidden; position: absolute; z-index: 92; opacity: 1;"&gt; &lt;div class="slide" style="visibility: hidden;"&gt;&lt;img style="visibility: hidden;" alt="" src="/Editor/assets/Clouds.jpg"&gt;&lt;/div&gt; &lt;div class="caption-box" style="visibility: hidden;"&gt; &lt;div class="caption" style="visibility: hidden;"&gt;&lt;span class="slide-text" style="visibility: hidden;" contenteditable="true"&gt;We Are "I Do Campaigns".&lt;br style="visibility: hidden;"&gt; Awesome and Creative.&lt;/span&gt;&lt;span class="slide-link" style="visibility: hidden;" contenteditable="true"&gt;&lt;a style="visibility: hidden;" href="#about" contenteditable="true"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="slide-wrap cycle-slide cycle-sentinel" style="left: 0px; top: 0px; display: none; visibility: hidden; position: absolute; z-index: 91; opacity: 1;"&gt; &lt;div class="slide" style="visibility: hidden;"&gt;&lt;img style="visibility: hidden;" alt="" src="/Editor/assets/Clouds.jpg"&gt;&lt;/div&gt; &lt;div class="caption-box" style="visibility: hidden;"&gt; &lt;div class="caption" style="visibility: hidden;"&gt;&lt;span class="slide-text" style="visibility: hidden;" contenteditable="true"&gt;We Are "I Do Campaigns".&lt;br style="visibility: hidden;"&gt; Awesome and Creative.&lt;/span&gt;&lt;span class="slide-link" style="visibility: hidden;" contenteditable="true"&gt;&lt;a style="visibility: hidden;" href="#about" contenteditable="true"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="slide-wrap cycle-slide cycle-sentinel" style="left: 0px; top: 0px; display: none; visibility: hidden; position: absolute; z-index: 90; opacity: 1;"&gt; &lt;div class="slide" style="visibility: hidden;"&gt;&lt;img style="visibility: hidden;" alt="" src="/Editor/assets/Clouds.jpg"&gt;&lt;/div&gt; &lt;div class="caption-box" style="visibility: hidden;"&gt; &lt;div class="caption" style="visibility: hidden;"&gt;&lt;span class="slide-text" style="visibility: hidden;" contenteditable="true"&gt;We Are "I Do Campaigns".&lt;br style="visibility: hidden;"&gt; Awesome and Creative.&lt;/span&gt;&lt;span class="slide-link" style="visibility: hidden;" contenteditable="true"&gt;&lt;a style="visibility: hidden;" href="#about" contenteditable="true"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="slide-wrap cycle-slide cycle-sentinel" style="left: 0px; top: 0px; display: none; visibility: hidden; position: absolute; z-index: 89; opacity: 1;"&gt; &lt;div class="slide" style="visibility: hidden;"&gt;&lt;img style="visibility: hidden;" alt="" src="/Editor/assets/Clouds.jpg"&gt;&lt;/div&gt; &lt;div class="caption-box" style="visibility: hidden;"&gt; &lt;div class="caption" style="visibility: hidden;"&gt;&lt;span class="slide-text" style="visibility: hidden;" contenteditable="true"&gt;We Are "I Do Campaigns".&lt;br style="visibility: hidden;"&gt; Awesome and Creative.&lt;/span&gt;&lt;span class="slide-link" style="visibility: hidden;" contenteditable="true"&gt;&lt;a style="visibility: hidden;" href="#about" contenteditable="true"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="slide-wrap cycle-slide cycle-sentinel" style="left: 0px; top: 0px; display: none; visibility: hidden; position: absolute; z-index: 88; opacity: 1;"&gt; &lt;div class="slide" style="visibility: hidden;"&gt;&lt;img style="visibility: hidden;" alt="" src="/Editor/assets/Clouds.jpg"&gt;&lt;/div&gt; &lt;div class="caption-box" style="visibility: hidden;"&gt; &lt;div class="caption" style="visibility: hidden;"&gt;&lt;span class="slide-text" style="visibility: hidden;" contenteditable="true"&gt;We Are "I Do Campaigns".&lt;br style="visibility: hidden;"&gt; Awesome and Creative.&lt;/span&gt;&lt;span class="slide-link" style="visibility: hidden;" contenteditable="true"&gt;&lt;a style="visibility: hidden;" href="#about" contenteditable="true"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="slide-wrap cycle-slide cycle-sentinel" style="left: 0px; top: 0px; display: none; visibility: hidden; position: absolute; z-index: 87; opacity: 1;"&gt; &lt;div class="slide" style="visibility: hidden;"&gt;&lt;img style="visibility: hidden;" alt="" src="/Editor/assets/Clouds.jpg"&gt;&lt;/div&gt; &lt;div class="caption-box" style="visibility: hidden;"&gt; &lt;div class="caption" style="visibility: hidden;"&gt;&lt;span class="slide-text" style="visibility: hidden;" contenteditable="true"&gt;We Are "I Do Campaigns".&lt;br style="visibility: hidden;"&gt; Awesome and Creative.&lt;/span&gt;&lt;span class="slide-link" style="visibility: hidden;" contenteditable="true"&gt;&lt;a style="visibility: hidden;" href="#about" contenteditable="true"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="slide-wrap cycle-slide cycle-sentinel" style="left: 0px; top: 0px; display: none; visibility: hidden; position: absolute; z-index: 86; opacity: 1;"&gt; &lt;div class="slide" style="visibility: hidden;"&gt;&lt;img style="visibility: hidden;" alt="" src="/Editor/assets/Clouds.jpg"&gt;&lt;/div&gt; &lt;div class="caption-box" style="visibility: hidden;"&gt; &lt;div class="caption" style="visibility: hidden;"&gt;&lt;span class="slide-text" style="visibility: hidden;" contenteditable="true"&gt;We Are "I Do Campaigns".&lt;br style="visibility: hidden;"&gt; Awesome and Creative.&lt;/span&gt;&lt;span class="slide-link" style="visibility: hidden;" contenteditable="true"&gt;&lt;a style="visibility: hidden;" href="#about" contenteditable="true"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="slide-wrap cycle-slide cycle-sentinel" style="left: 0px; top: 0px; display: none; visibility: hidden; position: absolute; z-index: 85; opacity: 1;"&gt; &lt;div class="slide" style="visibility: hidden;"&gt;&lt;img style="visibility: hidden;" alt="" src="/Editor/assets/Clouds.jpg"&gt;&lt;/div&gt; &lt;div class="caption-box" style="visibility: hidden;"&gt; &lt;div class="caption" style="visibility: hidden;"&gt;&lt;span class="slide-text" style="visibility: hidden;" contenteditable="true"&gt;We Are "I Do Campaigns".&lt;br style="visibility: hidden;"&gt; Awesome and Creative.&lt;/span&gt;&lt;span class="slide-link" style="visibility: hidden;" contenteditable="true"&gt;&lt;a style="visibility: hidden;" href="#about" contenteditable="true"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="slide-wrap cycle-slide cycle-sentinel" style="left: 0px; top: 0px; display: none; visibility: hidden; position: absolute; z-index: 84; opacity: 1;"&gt; &lt;div class="slide" style="visibility: hidden;"&gt;&lt;img style="visibility: hidden;" alt="" src="/Editor/assets/Clouds.jpg"&gt;&lt;/div&gt; &lt;div class="caption-box" style="visibility: hidden;"&gt; &lt;div class="caption" style="visibility: hidden;"&gt;&lt;span class="slide-text" style="visibility: hidden;" contenteditable="true"&gt;We Are "I Do Campaigns".&lt;br style="visibility: hidden;"&gt; Awesome and Creative.&lt;/span&gt;&lt;span class="slide-link" style="visibility: hidden;" contenteditable="true"&gt;&lt;a style="visibility: hidden;" href="#about" contenteditable="true"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="slide-wrap cycle-slide cycle-sentinel" style="left: 0px; top: 0px; display: none; visibility: hidden; position: absolute; z-index: 87; opacity: 1;"&gt; &lt;div class="slide" style="visibility: hidden;"&gt;&lt;img style="visibility: hidden;" alt="" src="/Editor/assets/Clouds.jpg"&gt;&lt;/div&gt; &lt;div class="caption-box" style="visibility: hidden;"&gt; &lt;div class="caption" style="visibility: hidden;"&gt;&lt;span class="slide-text" style="visibility: hidden;" contenteditable="true"&gt;We Are "I Do Campaigns".&lt;br style="visibility: hidden;"&gt; Awesome and Creative.&lt;/span&gt;&lt;span class="slide-link" style="visibility: hidden;" contenteditable="true"&gt;&lt;a style="visibility: hidden;" href="#about" contenteditable="true"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="slide-wrap cycle-slide cycle-sentinel cycle-slide-active" style="left: 0px; top: 0px; display: block; visibility: hidden; position: absolute; z-index: 99; opacity: 1;"&gt; &lt;div class="slide" style="visibility: hidden;"&gt;&lt;img style="visibility: hidden;" alt="" src="/Editor/assets/Clouds.jpg"&gt;&lt;/div&gt; &lt;div class="caption-box" style="visibility: hidden;"&gt; &lt;div class="caption" style="visibility: hidden;"&gt;&lt;span class="slide-text" style="visibility: hidden;" contenteditable="true"&gt;We Are "I Do Campaigns".&lt;br style="visibility: hidden;"&gt; Awesome and Creative.&lt;/span&gt;&lt;span class="slide-link" style="visibility: hidden;" contenteditable="true"&gt;&lt;a style="visibility: hidden;" href="#about" contenteditable="true"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="slide-wrap cycle-slide cycle-sentinel" style="left: 0px; top: 0px; display: none; visibility: hidden; position: absolute; z-index: 97; opacity: 1;"&gt; &lt;div class="slide" style="visibility: hidden;"&gt;&lt;img style="visibility: hidden;" alt="" src="/Editor/assets/Clouds.jpg"&gt;&lt;/div&gt; &lt;div class="caption-box" style="visibility: hidden;"&gt; &lt;div class="caption" style="visibility: hidden;"&gt;&lt;span class="slide-text" style="visibility: hidden;" contenteditable="true"&gt;We''re "I Do Campaigns.&lt;br style="visibility: hidden;"&gt; Awesome and Creative.&lt;/span&gt;&lt;span class="slide-link" style="visibility: hidden;" contenteditable="true"&gt;&lt;a style="visibility: hidden;" href="#about" contenteditable="true"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="slide-wrap cycle-slide" style="left: 0px; top: 0px; display: none; position: absolute; z-index: 96; opacity: 1;"&gt; &lt;div class="slide"&gt;&lt;img alt="" src="/Editor/assets/Clouds.jpg"&gt;&lt;/div&gt; &lt;div class="caption-box"&gt; &lt;div class="caption"&gt;&lt;span class="slide-text" contenteditable="true"&gt;We''re "I Do Campaigns.&lt;br&gt; Awesome and Creative.&lt;/span&gt;&lt;span class="slide-link" contenteditable="true"&gt;&lt;a href="#about" contenteditable="true"&gt;Learn More&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="slide-wrap cycle-slide" style="left: 0px; top: 0px; display: none; position: absolute; z-index: 95; opacity: 1;"&gt; &lt;div class="slide"&gt;&lt;img alt="" src="/Editor/assets/Growth.jpg"&gt;&lt;/div&gt; &lt;div class="caption-box"&gt; &lt;div class="caption"&gt;&lt;span class="slide-text" contenteditable="true"&gt;We Grow Business&lt;br&gt; Find Out More&lt;/span&gt;&lt;span class="slide-link" contenteditable="true"&gt;&lt;a href="#service" contenteditable="true"&gt;Learn How&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; &lt;div class="slide-wrap cycle-slide" style="left: 0px; top: 0px; display: none; position: absolute; z-index: 94; opacity: 1;"&gt; &lt;div class="slide"&gt;&lt;img alt="" src="/Editor/assets/iStock_000014314309_Large.jpg"&gt;&lt;/div&gt; &lt;div class="caption-box"&gt; &lt;div class="caption"&gt;&lt;span class="slide-text" contenteditable="true"&gt;Great Ideas!&lt;br&gt; Let''s Meet&lt;/span&gt;&lt;span class="slide-link" contenteditable="true"&gt;&lt;a href="#contact" contenteditable="true"&gt;Contact Us&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '2013-06-04 19:43:37', 4, 71, '\0', 0, '', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(186, 'about us', '\r\n&lt;div&gt;\r\n	&lt;h2&gt;About Us&lt;/h2&gt;&lt;/div&gt;\r\n&lt;div&gt;We are a group of individuals that strive to live every day to the fullest, and want&amp;nbsp; you to do the same. We are all like minded people that want to have a brand that has a higher set of standards for are customers.This site is NOT&amp;nbsp; for "HIPSTER''S"!&lt;/div&gt;\r\n&lt;div&gt;&amp;nbsp;&lt;/div&gt;', '2013-06-21 17:41:59', 5, 72, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(187, 'contact', '\r\n&lt;h2&gt;Contact&lt;/h2&gt;\r\n&lt;div&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;T:(612-850-8804&lt;/p&gt;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;E:mrlo2pez@yahoo.com&lt;/p&gt;4330 North Shore Dr.&lt;/div&gt;&lt;/div&gt;\r\n&lt;div&gt;Orono,MN 55364&lt;/div&gt;\r\n&lt;!--\r\nAddThis Button BEGIN\r\n--&gt;\r\n\r\n&lt;div class="addthis_toolbox addthis_default_style "&gt;&lt;a class="addthis_button_facebook_like" fb:like:layout="button_count"&gt;&lt;/a&gt;&lt;a class="addthis_button_tweet"&gt;&lt;/a&gt;&lt;a class="addthis_button_pinterest_pinit"&gt;&lt;/a&gt;&lt;a class="addthis_counter addthis_pill_style"&gt;&lt;/a&gt;&lt;/div&gt;\r\n&lt;script type="text/javascript"&gt;\r\nvar addthis_config = {"data_track_addressbar":true};\r\n&lt;/script&gt;\r\n&lt;script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-51ad241a1f0d3ff5"&gt;\r\n\r\n&lt;/script&gt;\r\n&lt;!--\r\nAddThis Button END\r\n--&gt;\r\n', '2013-06-21 17:48:40', 5, 72, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(184, 'Disclaimer', '\r\n&lt;div&gt;\r\n	&lt;h1&gt;NextWaveConnect.com&lt;/h1&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;p&gt;This site is currently under construction. You must have been invited in to sign in. Please sign in with your credentials to see our work in progress. &lt;/p&gt;\r\n	&lt;p&gt;To learn more about what we are doing... please visit us at: &lt;a href="http://www.nextwavehealth.com"&gt;http://www.nextwavehealth.com &lt;/a&gt;&lt;/p&gt;\r\n	&lt;div&gt;&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;\r\n	&lt;div&gt;&amp;nbsp;&lt;/div&gt;\r\n	&lt;div&gt;\r\n		&lt;div align="center" class="NWCLogo"&gt;&lt;img alt="" title="" src="/DZ/26/w/Next-Wave-Connect-Logo.png" /&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '2013-06-14 02:47:31', 26, 62, '\0', 0, '\0', 0, 2);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(191, 'a', '&lt;br /&gt;\r\n', '0000-00-00 00:00:00', 34, 72, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(192, 'b', '&lt;br /&gt;\r\n', '0000-00-00 00:00:00', 34, 72, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(193, 'c', '&lt;br /&gt;\r\n', '0000-00-00 00:00:00', 34, 72, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(194, 'd', '&lt;br /&gt;\r\n', '0000-00-00 00:00:00', 34, 72, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(195, 'About Us', '\r\n&lt;section id="aboutus"&gt;&lt;span style="font-size: 36pt;"&gt;&lt;span style="font-size: 36pt; color: rgb(105, 105, 105);"&gt;&lt;/span&gt;&lt;/span&gt;\r\n	&lt;div class="row"&gt;&lt;span style="font-size: 36pt;"&gt;&lt;span style="font-size: 36pt; color: rgb(105, 105, 105);"&gt;&lt;/span&gt;&lt;/span&gt;\r\n		&lt;div class="twelve columns centered"&gt;&lt;span style="font-size: 36pt; color: rgb(105, 105, 105); font-family: sans-serif;"&gt;&lt;span style="font-size: 36pt; font-family: sans-serif;"&gt;About Us&lt;/span&gt;&lt;/span&gt;\r\n			&lt;h2&gt;&lt;/h2&gt;\r\n			&lt;h2&gt;&lt;span style="color: rgb(169, 169, 169);"&gt;&lt;span style="color: rgb(0, 0, 0);"&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;\r\n			&lt;div&gt;\r\n				&lt;p&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;Complete Repair is a "jack of all trades" home repair company out of Minneapolis, MN started in 2000. Owner Pete Wolff started Complete Repair shortly after completing a comprehensive restoration of an 1882 Victorian mansion located in Edina, MN. During the restoration, Pete realized that his specialized skills were very much in need especially on older homes particularly in the South Minneapolis and Edina area. Complete Repair is certified to handle lead based paint found on some older homes. Prior to the start of Complete Repair, Pete had 45+ years of woodworking that includes cabinet making, mass birdhouse manufacturing and collaboration in the construction of a fully functional two person airplane built in 1974 which is still in use today. &lt;/span&gt;&lt;/p&gt;\r\n				&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;span style="color: rgb(169, 169, 169);"&gt;&lt;/span&gt;\r\n	&lt;div class="row"&gt;\r\n		&lt;!--\r\n		WORKS GRID\r\n		--&gt;\r\n		\r\n		&lt;ul id="og-grid" class="og-grid"&gt;\r\n			&lt;li&gt;&lt;a href="http://www.google.be" data-largesrc="img/2big.png" data-title="Name Of Project" data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot."&gt;&lt;img src="img/thumbs/1.jpg" alt="img01" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a href="#" data-largesrc="img/1big.png" data-title="Name Of Project" data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot."&gt;&lt;img src="img/thumbs/2.jpg" alt="img01" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a href="#" data-largesrc="img/3big.png" data-title="Name Of Project" data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot."&gt;&lt;img src="img/thumbs/3.jpg" alt="img01" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a href="#" data-largesrc="img/4big.png" data-title="Name Of Project" data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot."&gt;&lt;img src="img/thumbs/4.jpg" alt="img01" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a href="#" data-largesrc="img/6big.png" data-title="Name Of Project" data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot."&gt;&lt;img src="img/thumbs/5.jpg" alt="img01" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a href="#" data-largesrc="img/7big.png" data-title="Name Of Project" data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot."&gt;&lt;img src="img/thumbs/6.jpg" alt="img01" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a href="#" data-largesrc="img/7big.png" data-title="Name Of Project" data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot."&gt;&lt;img src="img/thumbs/7.jpg" alt="img01" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a href="#" data-largesrc="img/8big.png" data-title="Name Of Project" data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot."&gt;&lt;img src="img/thumbs/8.jpg" alt="img01" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a href="#" data-largesrc="img/9big.png" data-title="Name Of Project" data-description="Swiss chard pumpkin bunya nuts maize plantain aubergine napa cabbage soko coriander sweet pepper water spinach winter purslane shallot tigernut lentil beetroot."&gt;&lt;img src="img/thumbs/9.jpg" alt="img01" /&gt;&lt;/a&gt;&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n		&lt;!--\r\n		END WORKS GRID\r\n		--&gt;\r\n		&lt;/div&gt;&lt;/section&gt;', '2013-06-24 10:08:14', 0, 78, '\0', 0, '\0', 0, 0);
INSERT INTO `DA_Pages` (`PageId`, `Title`, `PageHTML`, `UpdateDate`, `TennantId`, `UserId`, `Active`, `Type`, `InlineEdit`, `OrigPageId`, `DisplayMode`) VALUES(196, 'About Usx', '\r\n&lt;section id="aboutus"&gt;&lt;span style="font-size: 36pt;"&gt;&lt;span style="font-size: 36pt; color: rgb(105, 105, 105);"&gt;&lt;/span&gt;&lt;/span&gt;\r\n	&lt;div class="row"&gt;&lt;span style="font-size: 36pt;"&gt;&lt;span style="font-size: 36pt; color: rgb(105, 105, 105);"&gt;&lt;/span&gt;&lt;/span&gt;\r\n		&lt;div class="twelve columns centered"&gt;&lt;span style="font-size: 36pt; color: rgb(105, 105, 105); font-family: sans-serif;"&gt;&lt;span style="font-size: 36pt; font-family: sans-serif;"&gt;About Us&lt;/span&gt;&lt;/span&gt;\r\n			&lt;h2&gt;&lt;/h2&gt;\r\n			&lt;h2&gt;&lt;span style="color: rgb(169, 169, 169);"&gt;&lt;span style="color: rgb(0, 0, 0);"&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;\r\n			&lt;div&gt;\r\n				&lt;p&gt;&lt;span style="color: rgb(169, 169, 169); font-size: 14pt;"&gt;Complete Repair is a "jack of all trades" home repair company out of Minneapolis, MN started in 2000. Owner Pete Wolff started Complete Repair shortly after completing a comprehensive restoration of an 1882 Victorian mansion located in Edina, MN. During the restoration, Pete realized that his specialized skills were very much in need especially on older homes particularly in the South Minneapolis and Edina area. Complete Repair is certified to handle lead based paint found on some older homes. Prior to the start of Complete Repair, Pete had 45+ years of woodworking that includes cabinet making, mass birdhouse manufacturing and collaboration in the construction of a fully functional two person airplane built in 1974 which is still in use today. &lt;/span&gt;&lt;/p&gt;\r\n				&lt;div&gt;\r\n					&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;span style="color: rgb(169, 169, 169);"&gt;&lt;/span&gt;&lt;/section&gt;', '2013-06-24 10:59:28', 27, 78, '\0', 0, '\0', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `DA_Phone`
--

DROP TABLE IF EXISTS `DA_Phone`;
CREATE TABLE `DA_Phone` (
  `PhoneId` int(11) NOT NULL auto_increment,
  `EntityId` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  `PrimeUse` varchar(1) default '0',
  `PhoneType` int(11) NOT NULL,
  `AreaCode` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Ext` varchar(255) NOT NULL,
  `ShortDesc` varchar(500) NOT NULL,
  `SMS` int(11) NOT NULL,
  PRIMARY KEY  (`PhoneId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `DA_Phone`
--


-- --------------------------------------------------------

--
-- Table structure for table `DA_Pwd`
--

DROP TABLE IF EXISTS `DA_Pwd`;
CREATE TABLE `DA_Pwd` (
  `PwdId` int(11) NOT NULL auto_increment,
  `UserId` int(11) NOT NULL,
  `PwdHash` varchar(255) NOT NULL,
  `ResetDate` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  `Reset` bit(1) default b'0',
  PRIMARY KEY  (`PwdId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `DA_Pwd`
--

INSERT INTO `DA_Pwd` (`PwdId`, `UserId`, `PwdHash`, `ResetDate`, `Reset`) VALUES(11, 66, '3b61f6320cc928b81bd248257e7483291bca529b', '0000-00-00 00:00:00', '\0');
INSERT INTO `DA_Pwd` (`PwdId`, `UserId`, `PwdHash`, `ResetDate`, `Reset`) VALUES(8, 62, '5da04a00e96b014dd257ac3f3b143f4993af354c', '0000-00-00 00:00:00', '\0');
INSERT INTO `DA_Pwd` (`PwdId`, `UserId`, `PwdHash`, `ResetDate`, `Reset`) VALUES(12, 68, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '0000-00-00 00:00:00', '\0');
INSERT INTO `DA_Pwd` (`PwdId`, `UserId`, `PwdHash`, `ResetDate`, `Reset`) VALUES(13, 69, '0d2a57de6a2fab92473e7d1455483cf15aba9e89', '0000-00-00 00:00:00', '\0');
INSERT INTO `DA_Pwd` (`PwdId`, `UserId`, `PwdHash`, `ResetDate`, `Reset`) VALUES(16, 72, '6b3241ffd0ad850e474f1cf4428557e999ad758b', '0000-00-00 00:00:00', '\0');
INSERT INTO `DA_Pwd` (`PwdId`, `UserId`, `PwdHash`, `ResetDate`, `Reset`) VALUES(15, 71, 'cf66bd7ccf65f08dda674a71c3a59c4af84db254', '0000-00-00 00:00:00', '\0');
INSERT INTO `DA_Pwd` (`PwdId`, `UserId`, `PwdHash`, `ResetDate`, `Reset`) VALUES(17, 73, '4b46a850b429f189a3b3ed5fa57220adc9f34eff', '0000-00-00 00:00:00', '\0');
INSERT INTO `DA_Pwd` (`PwdId`, `UserId`, `PwdHash`, `ResetDate`, `Reset`) VALUES(18, 74, 'b35f94de6383830a5b13b3faba11b3fd254c57c9', '0000-00-00 00:00:00', '\0');
INSERT INTO `DA_Pwd` (`PwdId`, `UserId`, `PwdHash`, `ResetDate`, `Reset`) VALUES(19, 75, '2b9d224b3be3e1e20336c8f6c5741c4a5f321c06', '0000-00-00 00:00:00', '\0');
INSERT INTO `DA_Pwd` (`PwdId`, `UserId`, `PwdHash`, `ResetDate`, `Reset`) VALUES(20, 78, '8668878cda4d35762513f0ea8ca76a14db0c84a4', '0000-00-00 00:00:00', '\0');
INSERT INTO `DA_Pwd` (`PwdId`, `UserId`, `PwdHash`, `ResetDate`, `Reset`) VALUES(30, 89, '2ce6bf3ae4c046b505bc28970a66b683c7db401d', '0000-00-00 00:00:00', '\0');
INSERT INTO `DA_Pwd` (`PwdId`, `UserId`, `PwdHash`, `ResetDate`, `Reset`) VALUES(29, 88, '825e83bd776a477c462f2cb777bc2f7b3e1eb57b', '0000-00-00 00:00:00', '\0');

-- --------------------------------------------------------

--
-- Table structure for table `DA_RSS`
--

DROP TABLE IF EXISTS `DA_RSS`;
CREATE TABLE `DA_RSS` (
  `TennantID` int(11) NOT NULL,
  `RSSID` int(11) NOT NULL auto_increment,
  `Title` varchar(255) NOT NULL,
  `FeedURL` varchar(255) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `PubDate` datetime NOT NULL,
  `AttrAuthor` varchar(255) NOT NULL,
  `AttrURL` varchar(255) NOT NULL,
  PRIMARY KEY  (`RSSID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `DA_RSS`
--

INSERT INTO `DA_RSS` (`TennantID`, `RSSID`, `Title`, `FeedURL`, `Description`, `PubDate`, `AttrAuthor`, `AttrURL`) VALUES(3, 4, 'Digiapolis Twitter', 'http://feeds.feedburner.com/twitter/digiapolis', 'Various tweets related to Enterprise Social functionality', '0000-00-00 00:00:00', 'Eric Lopez, CEO, Digiapolis', 'http://www.digiapolis.com');
INSERT INTO `DA_RSS` (`TennantID`, `RSSID`, `Title`, `FeedURL`, `Description`, `PubDate`, `AttrAuthor`, `AttrURL`) VALUES(62, 9, 'Healthcare 2.0', 'http://healthcare20.blogspot.com/feeds/posts/default', 'Innovative business models in healthcare services\r\n', '0000-00-00 00:00:00', '', '');
INSERT INTO `DA_RSS` (`TennantID`, `RSSID`, `Title`, `FeedURL`, `Description`, `PubDate`, `AttrAuthor`, `AttrURL`) VALUES(62, 7, 'Healthcare Informatics Magazine', 'xx', 'Health care information technology & IT strategy news for CIOs, CMIOs & clinical informaticists. Learn about EMR EHR, ARRA HITECH, wireless technologies & meaningful use policy. Articles on patient safety, point-of-care tech & HIE analysis. Electronic medical records, health information exchange networks & hospital administration â€“ financial â€“ imaging news. Ambulatory care and business management info. Free Webinars and industry conferences.', '0000-00-00 00:00:00', 'Healthcare Informatics Magazine | Health IT | Information Technology', 'Healthcare Informatics Magazine | Health IT | Information Technology');
INSERT INTO `DA_RSS` (`TennantID`, `RSSID`, `Title`, `FeedURL`, `Description`, `PubDate`, `AttrAuthor`, `AttrURL`) VALUES(62, 10, 'The Healhcare Blog', 'http://thehealthcareblog.com/feed/', '', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `DA_SiteDetails`
--

DROP TABLE IF EXISTS `DA_SiteDetails`;
CREATE TABLE `DA_SiteDetails` (
  `TennantId` int(11) NOT NULL,
  `SiteTitle` varchar(500) NOT NULL,
  `XURL` varchar(255) NOT NULL,
  `ShortDesc` varchar(500) NOT NULL,
  `TrackingCode` text NOT NULL,
  `Favicon` varchar(255) default NULL,
  `PublicSite` varchar(1) NOT NULL default '0',
  `PageImageURL` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DA_SiteDetails`
--

INSERT INTO `DA_SiteDetails` (`TennantId`, `SiteTitle`, `XURL`, `ShortDesc`, `TrackingCode`, `Favicon`, `PublicSite`, `PageImageURL`) VALUES(3, 'Digiapolis - Interactive Web Development, Sales, and Marketing', 'Digiapolis2', 'Digiapolis is an interactive marketing and web development company focused on delivering opportunities to your business bringing bold marketing ideas, an effective use of technology, and a passion for execution.', '&lt;script type="text/javascript"&gt; var _gaq = _gaq || []; _gaq.push([''_setAccount'', ''UA-36926763-1'']); _gaq.push([''_trackPageview'']); (function() { var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true; ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js''; var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s); })(); &lt;/script&gt;', '/DZ/3/f/favicon.ico', '1', '/DZ/3/f/DigiPic.gif');
INSERT INTO `DA_SiteDetails` (`TennantId`, `SiteTitle`, `XURL`, `ShortDesc`, `TrackingCode`, `Favicon`, `PublicSite`, `PageImageURL`) VALUES(66, 'Sue Page Design', 'SuePageDesign', 'Sue Page Design will help you with any creative challenges you may have decorating your home or business outside, inside, and on the table for special occasions.', '', 'SPDesign', '1', '');
INSERT INTO `DA_SiteDetails` (`TennantId`, `SiteTitle`, `XURL`, `ShortDesc`, `TrackingCode`, `Favicon`, `PublicSite`, `PageImageURL`) VALUES(5, 'Alex lopez', 'www.1xpg.com/AlexLopez', 'This website is being built at the moment,but its going to have pretty much everything you could want or desire as far as your skate & snowboard needs,without that retail store price.', '', '/DZ/72/f/bl favicon.ico', '1', '/DZ/5/f/bakalakaPage.gif');
INSERT INTO `DA_SiteDetails` (`TennantId`, `SiteTitle`, `XURL`, `ShortDesc`, `TrackingCode`, `Favicon`, `PublicSite`, `PageImageURL`) VALUES(69, 'I DO Campaigns', 'I_DO_Campaigns', '', '', '', '1', '');
INSERT INTO `DA_SiteDetails` (`TennantId`, `SiteTitle`, `XURL`, `ShortDesc`, `TrackingCode`, `Favicon`, `PublicSite`, `PageImageURL`) VALUES(4, 'I Do Campaigns', 'LLK', 'I Do Campaigns is a company focused on helping organizations with their marketing campaigns.', '&lt;script&gt; (function(i,s,o,g,r,a,m){i[''GoogleAnalyticsObject'']=r;i[r]=i[r]||function(){ (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o), m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m) })(window,document,''script'',''//www.google-analytics.com/analytics.js'',''ga''); ga(''create'', ''UA-40962215-1'', ''idocampaigns.com''); ga(''send'', ''pageview''); &lt;/script&gt; ', '/favicon(2).ico', '1', '/DZ/4/f/PagePic.gif');
INSERT INTO `DA_SiteDetails` (`TennantId`, `SiteTitle`, `XURL`, `ShortDesc`, `TrackingCode`, `Favicon`, `PublicSite`, `PageImageURL`) VALUES(14, 'ChiefSocialStrategist.com', 'ChiefSocialStrategist', 'ChiefSocialStrategist.com Blog', '', '', '1', '/DZ/14/f/BetterWay.gif');
INSERT INTO `DA_SiteDetails` (`TennantId`, `SiteTitle`, `XURL`, `ShortDesc`, `TrackingCode`, `Favicon`, `PublicSite`, `PageImageURL`) VALUES(16, 'Debs', 'deb', 'This is an example for Deb', '', '', '1', '/DZ/16/f/IMG_0057.JPG');
INSERT INTO `DA_SiteDetails` (`TennantId`, `SiteTitle`, `XURL`, `ShortDesc`, `TrackingCode`, `Favicon`, `PublicSite`, `PageImageURL`) VALUES(26, 'Next Wave Connect', 'NWC', 'NextWaveConnect.com prototype', '', '/DZ/26/f/favicon.ico', '1', '/DZ/26/f/stock-photo-21318443-doctor-looking-at-digital-tablet.jpg');
INSERT INTO `DA_SiteDetails` (`TennantId`, `SiteTitle`, `XURL`, `ShortDesc`, `TrackingCode`, `Favicon`, `PublicSite`, `PageImageURL`) VALUES(27, 'Complete Repair', '', 'Effective, efficient and practical solutions to any home repair or remodeling need that you might have.', '', '', '1', '');
INSERT INTO `DA_SiteDetails` (`TennantId`, `SiteTitle`, `XURL`, `ShortDesc`, `TrackingCode`, `Favicon`, `PublicSite`, `PageImageURL`) VALUES(34, 'Danger Ron and the Spins', '', 'Band and Music', '', '', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `DA_Tennant`
--

DROP TABLE IF EXISTS `DA_Tennant`;
CREATE TABLE `DA_Tennant` (
  `TennantId` int(11) NOT NULL auto_increment,
  `UserId` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  `Active` bit(1) default b'1',
  PRIMARY KEY  (`TennantId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `DA_Tennant`
--

INSERT INTO `DA_Tennant` (`TennantId`, `UserId`, `Type`, `Active`) VALUES(5, 72, 0, '');
INSERT INTO `DA_Tennant` (`TennantId`, `UserId`, `Type`, `Active`) VALUES(4, 62, 0, '');
INSERT INTO `DA_Tennant` (`TennantId`, `UserId`, `Type`, `Active`) VALUES(3, 62, 0, '');
INSERT INTO `DA_Tennant` (`TennantId`, `UserId`, `Type`, `Active`) VALUES(6, 68, 0, '');
INSERT INTO `DA_Tennant` (`TennantId`, `UserId`, `Type`, `Active`) VALUES(7, 69, 0, '');
INSERT INTO `DA_Tennant` (`TennantId`, `UserId`, `Type`, `Active`) VALUES(8, 66, 0, '');
INSERT INTO `DA_Tennant` (`TennantId`, `UserId`, `Type`, `Active`) VALUES(9, 73, 0, '');
INSERT INTO `DA_Tennant` (`TennantId`, `UserId`, `Type`, `Active`) VALUES(10, 74, 0, '');
INSERT INTO `DA_Tennant` (`TennantId`, `UserId`, `Type`, `Active`) VALUES(11, 75, 0, '');
INSERT INTO `DA_Tennant` (`TennantId`, `UserId`, `Type`, `Active`) VALUES(12, 78, 0, '');
INSERT INTO `DA_Tennant` (`TennantId`, `UserId`, `Type`, `Active`) VALUES(14, 62, 2, '');
INSERT INTO `DA_Tennant` (`TennantId`, `UserId`, `Type`, `Active`) VALUES(16, 62, 0, '');
INSERT INTO `DA_Tennant` (`TennantId`, `UserId`, `Type`, `Active`) VALUES(26, 62, 1, '');
INSERT INTO `DA_Tennant` (`TennantId`, `UserId`, `Type`, `Active`) VALUES(27, 78, 0, '');
INSERT INTO `DA_Tennant` (`TennantId`, `UserId`, `Type`, `Active`) VALUES(34, 72, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `DA_User`
--

DROP TABLE IF EXISTS `DA_User`;
CREATE TABLE `DA_User` (
  `UserId` int(11) NOT NULL auto_increment,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `CompanyName` varchar(255) default NULL,
  `TimeZone` int(11) default NULL,
  `CreateDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `UpdateDate` datetime default NULL,
  `Permanent` bit(1) default b'0',
  `PhotoId` int(11) NOT NULL,
  PRIMARY KEY  (`UserId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=90 ;

--
-- Dumping data for table `DA_User`
--

INSERT INTO `DA_User` (`UserId`, `LastName`, `FirstName`, `CompanyName`, `TimeZone`, `CreateDate`, `UpdateDate`, `Permanent`, `PhotoId`) VALUES(71, 'test', 'eric', 'asdad', NULL, '2013-05-02 12:15:19', NULL, '', 0);
INSERT INTO `DA_User` (`UserId`, `LastName`, `FirstName`, `CompanyName`, `TimeZone`, `CreateDate`, `UpdateDate`, `Permanent`, `PhotoId`) VALUES(72, 'Lopez', 'Alex', '', NULL, '2013-05-02 12:31:41', NULL, '', 0);
INSERT INTO `DA_User` (`UserId`, `LastName`, `FirstName`, `CompanyName`, `TimeZone`, `CreateDate`, `UpdateDate`, `Permanent`, `PhotoId`) VALUES(67, 'Carey', 'Bill', '', NULL, '2013-04-27 10:17:43', NULL, '\0', 0);
INSERT INTO `DA_User` (`UserId`, `LastName`, `FirstName`, `CompanyName`, `TimeZone`, `CreateDate`, `UpdateDate`, `Permanent`, `PhotoId`) VALUES(68, '', '', '', NULL, '2013-04-30 10:05:03', NULL, '', 0);
INSERT INTO `DA_User` (`UserId`, `LastName`, `FirstName`, `CompanyName`, `TimeZone`, `CreateDate`, `UpdateDate`, `Permanent`, `PhotoId`) VALUES(69, 'Kaveney', 'Loring ', 'I DO Campaigns', NULL, '2013-05-02 11:14:42', NULL, '', 0);
INSERT INTO `DA_User` (`UserId`, `LastName`, `FirstName`, `CompanyName`, `TimeZone`, `CreateDate`, `UpdateDate`, `Permanent`, `PhotoId`) VALUES(66, 'Kaveney', 'Loring', 'OneXPage, LLC.', NULL, '2013-04-08 08:45:04', NULL, '', 0);
INSERT INTO `DA_User` (`UserId`, `LastName`, `FirstName`, `CompanyName`, `TimeZone`, `CreateDate`, `UpdateDate`, `Permanent`, `PhotoId`) VALUES(62, 'Lopez', 'Eric', 'Smart Social Media', NULL, '2013-06-20 15:17:03', NULL, '', 0);
INSERT INTO `DA_User` (`UserId`, `LastName`, `FirstName`, `CompanyName`, `TimeZone`, `CreateDate`, `UpdateDate`, `Permanent`, `PhotoId`) VALUES(73, 'test', 'eric2', '', NULL, '2013-05-04 03:56:03', NULL, '', 0);
INSERT INTO `DA_User` (`UserId`, `LastName`, `FirstName`, `CompanyName`, `TimeZone`, `CreateDate`, `UpdateDate`, `Permanent`, `PhotoId`) VALUES(74, 'lopez', 'andrew', 'Pezigns', NULL, '2013-05-05 18:46:56', NULL, '', 0);
INSERT INTO `DA_User` (`UserId`, `LastName`, `FirstName`, `CompanyName`, `TimeZone`, `CreateDate`, `UpdateDate`, `Permanent`, `PhotoId`) VALUES(75, 'Lopez', 'Andrew', 'Pezigns', NULL, '2013-05-05 18:49:46', NULL, '', 0);
INSERT INTO `DA_User` (`UserId`, `LastName`, `FirstName`, `CompanyName`, `TimeZone`, `CreateDate`, `UpdateDate`, `Permanent`, `PhotoId`) VALUES(76, 'Nelson', 'Ivo', 'Next Wave Health', NULL, '2013-05-10 18:17:21', NULL, '\0', 0);
INSERT INTO `DA_User` (`UserId`, `LastName`, `FirstName`, `CompanyName`, `TimeZone`, `CreateDate`, `UpdateDate`, `Permanent`, `PhotoId`) VALUES(77, 'Horn', 'Wendy', 'Liftoff llc', NULL, '2013-05-12 06:36:20', NULL, '\0', 0);
INSERT INTO `DA_User` (`UserId`, `LastName`, `FirstName`, `CompanyName`, `TimeZone`, `CreateDate`, `UpdateDate`, `Permanent`, `PhotoId`) VALUES(78, 'Wolff', 'Brady', '', NULL, '2013-05-29 09:48:04', NULL, '', 0);
INSERT INTO `DA_User` (`UserId`, `LastName`, `FirstName`, `CompanyName`, `TimeZone`, `CreateDate`, `UpdateDate`, `Permanent`, `PhotoId`) VALUES(89, 'Nelson', 'Ivo', '', NULL, '2013-06-13 15:40:11', NULL, '', 0);
INSERT INTO `DA_User` (`UserId`, `LastName`, `FirstName`, `CompanyName`, `TimeZone`, `CreateDate`, `UpdateDate`, `Permanent`, `PhotoId`) VALUES(88, 'Nelson', 'Ivo', 'Next Wave Healthcare, LLC.', NULL, '2013-06-13 15:35:49', NULL, '', 0);
INSERT INTO `DA_User` (`UserId`, `LastName`, `FirstName`, `CompanyName`, `TimeZone`, `CreateDate`, `UpdateDate`, `Permanent`, `PhotoId`) VALUES(87, 'G', 'Pat', '', NULL, '2013-06-12 08:19:18', NULL, '\0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `DA_WebURL`
--

DROP TABLE IF EXISTS `DA_WebURL`;
CREATE TABLE `DA_WebURL` (
  `URLId` int(11) NOT NULL auto_increment,
  `EntityId` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  `Primary` bit(1) default NULL,
  `WebType` int(11) NOT NULL,
  `ShortDesc` varchar(500) NOT NULL,
  `PhotoId` int(11) NOT NULL,
  `URL` varchar(255) NOT NULL,
  PRIMARY KEY  (`URLId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `DA_WebURL`
--


-- --------------------------------------------------------

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `test` text NOT NULL,
  `Type` varchar(50) NOT NULL,
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `test`
--


DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `DAGetUser`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `DAGetUser`(IN test varchar(20)
)
BEGIN  

        select lastname, firstname from DA_User;
    END$$

DROP PROCEDURE IF EXISTS `spDADeleteSite`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDADeleteSite`(
IN pSid INT(11),
IN pUserId INT(11)
)
BEGIN  

start transaction;

delete from DA_Nav where NavId in (select p.PageId from DA_Pages p where p.TennantId=pSid);
delete from DA_Order where EntityId in (select p.PageId from DA_Pages p where p.TennantId=pSid) and Type=0;
delete from DA_Order where EntityId in (select f.FileId from DA_Files f where f.TennantId=pSid);
delete from DA_Files where TennantId=pSid;
delete from DA_BasicStats where TennantId=pSid;
delete from DA_ElemStyles where TennantId=pSid;
delete from DA_Headlines where TennantId=pSid;
delete from DA_Pages where TennantId=pSid;
delete from DA_RSS where TennantId=pSid;
delete from DA_SiteDetails where TennantId=pSid;
delete from DA_Tennant where TennantId=pSid;

commit;

END$$

DROP PROCEDURE IF EXISTS `spDADelFile`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDADelFile`(
IN pTennantId int,
IN pUserId int, 
IN pFileId int,
IN pType int
)
BEGIN  

start transaction;

delete from DA_Files where FileId=pFileId;
delete from DA_Order where EntityId=pFileId and Type=pType;

commit;

END$$

DROP PROCEDURE IF EXISTS `spDADelFileByName`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDADelFileByName`(
IN pTennantId int,
IN pUserId int, 
IN pFileName varchar(255),
IN pType int
)
BEGIN

declare vFileId int;  

start transaction;

set vFileId=0;
select f.FileId into vFileId from DA_Files f where f.TennantId=pTennantId and f.FileName=pFileName and f.Type=pType;

if vFileId>0 then
    delete from DA_Files where FileId=vFileId;
    delete from DA_Order where EntityId=vFileId and Type=pType;
end if;

commit;

END$$

DROP PROCEDURE IF EXISTS `spDADelPageContent`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDADelPageContent`(IN pPageId INT(11),IN pUserId INT(11))
BEGIN  

start transaction;

delete from DA_Pages where PageId=pPageId;
delete from DA_Nav where PageId=pPageId;
delete from DA_Order where EntityId=pPageId;

commit;

END$$

DROP PROCEDURE IF EXISTS `spDADelRSS`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDADelRSS`(
IN pTennantID int,
IN pUserID int,
IN pRSSID int
)
BEGIN  

    delete from DA_RSS where RSSID=pRSSID;

END$$

DROP PROCEDURE IF EXISTS `spDADelUser`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDADelUser`(IN pUserId INT(11))
BEGIN  

start transaction;

delete from DA_User where UserId=pUserId;
delete from DA_EmailAccounts where UserId=pUserId;
delete from DA_Pwd where UserId=pUserId;
delete from DA_ContactNote where UserId=pUserId;

commit;

END$$

DROP PROCEDURE IF EXISTS `spDADupXSite`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDADupXSite`(
    IN pDupSiteId int,
    IN pUserId int,
    IN pType  int

)
BEGIN

declare vTennantId  int;

    start transaction;

    insert into DA_Tennant (
            UserId,
            Type
        )
        values (
            pUserId,
            pType
        );

    set vTennantId=LAST_INSERT_ID();
    
    insert into DA_Pages (
            Title,
            PageHTML,
            TennantId,
            UserId,
            Active,
            Type,
            InlineEdit,
            OrigPageId
        )
        select 
            Title,
            PageHTML,
            vTennantId,
            UserId,
            Active,
            Type,
            InlineEdit,
            PageId
        from DA_Pages 
        where TennantId=pDupSiteId;

    commit;
END$$

DROP PROCEDURE IF EXISTS `spDAInactivateSite`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDAInactivateSite`(
IN pTennantId int,
IN pUserId int,
IN pMode int
)
BEGIN

start transaction;

if pMode=0 then
    update DA_Tennant set Active=0 where TennantId=pTennantId;
else

    
    delete from DA_Order where EntityId in 
        (select p.PageId from DA_Pages p where p.TennantId=pTennantId) and Type in (0,1);

    
    delete from DA_Nav where PageId in 
        (select p.PageId from DA_Pages p where p.TennantId=pTennantId);

    
    delete from DA_Order where EntityId in 
        (select f.FileId from DA_Files f where f.TennantId=pTennantId) and Type in (10,11,13);

    delete from DA_Files where TennantId=pTennantId;
    delete from DA_Pages where TennantId=pTennantId;
    delete from DA_RSS where TennantId=pTennantId;
    delete from DA_SiteDetails where TennantId=pTennantId;
    delete from DA_Tennant where TennantId=pTennantId;

end if;


commit;

END$$

DROP PROCEDURE IF EXISTS `spDAInsUpdFile`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDAInsUpdFile`(
IN pTennantId int,
IN pUserId int, 
IN pFileName varchar(255), 
IN pRelativePath varchar(255), 
IN pDescription varchar(500),
IN pFileType int,
IN pFileId int,
IN pFileSize bigint
)
BEGIN  

declare vLastId bigInt;
declare vFileId bigInt;
declare vHighOrder int(11);

start transaction;

    if pFileId<>-1 then
        select FileId into pFileId from DA_Files where FileId=pFileId;
    end if;

    if pFileId<1 then
        select FileId into pFileId from DA_Files where TennantId=pTennantId and FileName=pFileName and RelativePath=pRelativePath;
    end if;

    if (pFileId>0) then
        update DA_Files
            set Description=pDescription
        where FileId=pFileId;
        set vLastId=pFileId;
    else
        insert into DA_Files (
            TennantId,
            FileName,
            RelativePath,
            Description,
            Type,
            FileSize
        )
        values (
            pTennantId,
            pFileName,
            pRelativePath,
            pDescription,
            pFileType,
            pFileSize
        );
        set vLastId=LAST_INSERT_ID();

        set vHighOrder=0;

        select Ord.OrderNum into vHighOrder from DA_Files f
        join DA_Order Ord on Ord.EntityId=f.FileId
        where f.TennantId=pTennantId and Ord.Type=pFileType order by Ord.OrderNum desc limit 1;

        set vHighOrder=vHighOrder+1;
        insert into DA_Order (
            EntityId,
            OrderNum,
            Type
            )
            values (
            vLastId,
            vHighOrder,
            pFileType);

    end if;

commit;

  

END$$

DROP PROCEDURE IF EXISTS `spDAInsUpdHeadlines`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDAInsUpdHeadlines`(
IN pTennantID int,
IN pUserID int,
IN pHeadlineId int,
IN pTitle varchar(500), 
IN pDescription varchar(500), 
IN pAuthor varchar(255),
IN pAuthorURL varchar(255), 
IN pAuthorImage varchar(255),
IN pHeadlineURL varchar(255), 
IN pHeadlineImage varchar(255),
IN pPriority int,
IN pStartDate datetime,
IN pEndDate datetime
)
BEGIN  

declare vHeadlineId int;

    set vHeadlineId=0;

    select HeadlineId into vHeadlineId from DA_Headlines where HeadlineId=pHeadlineId;
    if (vHeadlineId>0) then
        update DA_Headlines set
            Title=pTitle,
            Description=pDescription,
            HeadlineURL=pHeadlineURL,
            AuthorURL=pAuthorURL,
            Author=pAuthor,
            AuthorImage=pAuthorImage,
            HeadlineImage=pHeadlineImage,
            Priority=pPriority,
            StartDate=pStartDate,
            EndDate=pEndDate
        where HeadlineId=vHeadlineId;
    else
        insert into DA_Headlines 
            (
                TennantId,
                Title,
                Description,
                HeadlineURL,
                AuthorURL,
                Author,
                AuthorImage,
                HeadlineImage,
                Priority,
                StartDate,
                EndDate
            )
         values
            (
                pTennantId,
                pTitle,
                pDescription,
                pHeadlineURL,
                pAuthorURL,
                pAuthor,
                pAuthorImage,
                pHeadlineImage,
                pPriority,
                pStartDate,
                pEndDate
            );
    end if;

   

END$$

DROP PROCEDURE IF EXISTS `spDAInsUpdPageContent`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDAInsUpdPageContent`(
IN pTitle VARCHAR(255),
IN pPageHTML text, 
IN pPageId int, 
IN pTennantId int,
IN pUserId int,
IN pType int,
IN pInlineEdit bit,
IN pDisplayMode int
)
BEGIN  

declare vLastId bigInt;
declare vNavId bigInt;
declare vHighOrder int(11);

start transaction;

    select PageId into pPageId from DA_Pages where PageId=pPageId;

    if (pPageId>0) then
        update DA_Pages 
            set Title=pTitle,
            PageHTML=pPageHTML,
            TennantId=pTennantId,
            UserId=pUserId,
            InlineEdit=pInlineEdit,
            DisplayMode=pDisplayMode
        where PageId=pPageId;
        set vLastId=pPageId;
    else
        insert into DA_Pages (
            Title,
            PageHTML,
            TennantId,
            UserId,
            Active,
            InlineEdit,
            DisplayMode
        )
        values (
            pTitle,
            pPageHTML,
            pTennantId,
            pUserId,
            0,
            pInlineEdit,
            pDisplayMode
        );
        set vLastId=LAST_INSERT_ID();

        set vHighOrder=0;
        select Ord.OrderNum into vHighOrder from DA_Pages p
        join DA_Order Ord on Ord.EntityId=p.PageId
        where p.TennantId=pTennantId and Ord.Type=0 order by Ord.OrderNum desc limit 1;

        set vHighOrder=vHighOrder+1;
        insert into DA_Order (
            EntityId,
            OrderNum,
            Type
            )
            values (
            vLastId,
            vHighOrder,
            0);

    end if;

    set vNavId=0; 
    select NavId into vNavId from DA_Nav n where n.PageId=vLastId;
    if (vNavId<1) then
        insert into DA_Nav
            (
               PageId,
               Title,
               BaseFunction,
               Target,
               UserId
               )
         values 
            (
                vLastId,
                pTitle,
                0,
                0,
                pUserId
                );
    end if;

    select * from DA_Pages where PageId=vLastId;

commit;

END$$

DROP PROCEDURE IF EXISTS `spDAInsUpdRSS`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDAInsUpdRSS`(
IN pTennantID int,
IN pUserID int,
IN pRSSID int,
IN pTitle varchar(500), 
IN pDescription varchar(500), 
IN pFeedURL varchar(255), 
IN pAttrAuthor varchar(255),
IN pAttrURL varchar(255)
)
BEGIN  

declare vRSSID int;

    if (pRSSID>0) then
        set vRSSID=pRSSID;
    else 
        set vRSSID=0;
        select RSSID into vRSSID from DA_RSS where TennantId=pTennantId and FeedURL=pFeedURL;
    end if;

    if (vRSSID>0) then
        update DA_RSS set
            Title=pTitle,
            Description=pDescription,
            AttrAuthor=pAttrAuthor,
            AttrURL=pAttrURL
        where RSSID=vRSSID;
    else
        insert into DA_RSS 
            (
                TennantId,
                Title,
                Description,
                AttrAuthor,
                AttrURL,
                FeedURL
            )
         values
            (
                pTennantId,
                pTitle,
                pDescription,
                pAttrAuthor,
                pAttrURL,
                pFeedURL
            );
    end if;

    select * from DA_RSS where RSSID=vRSSID;

END$$

DROP PROCEDURE IF EXISTS `spDAInsUpdSiteDetails`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDAInsUpdSiteDetails`(
IN pTennantId int,
IN pUserId int,
IN pSiteTitle varchar(500), 
IN pShortDesc varchar(500), 
IN pFavicon varchar(255), 
IN pTrackingCode text,
IN pPublicSite bit,
IN pXURL varchar(255),
IN pPageImageURL varchar(255),
IN pSiteType int
)
BEGIN  

declare vCheckTennantId int;

set vCheckTennantId=0;
    
    select TennantId into vCheckTennantId from DA_SiteDetails where TennantId=pTennantId;
    if (vCheckTennantId>0) then
        update DA_SiteDetails set
            SiteTitle=pSiteTitle,
            Favicon=pFavicon,
            TrackingCode=pTrackingCode,
            PublicSite=pPublicSite,
            ShortDesc=pShortDesc,
            XURL=pXURL,
            PageImageURL=pPageImageURL
        where TennantId=pTennantId;
        update DA_Tennant set Type=pSiteType where TennantId=pTennantId;
    else
        insert into DA_Tennant 
            (
                UserId,
                Type
            )
        values 
            (
                pUserId,
                pSiteType 
            );

        set pTennantId=LAST_INSERT_ID();
                
        insert into DA_SiteDetails 
            (
                TennantId,
                SiteTitle,
                Favicon,
                TrackingCode,
                PublicSite,
                ShortDesc,
                XURL,
                PageImageURL    
            )
        values
            (
                pTennantId,
                pSiteTitle,
                pFavicon,
                pTrackingCode,
                pPublicSite,
                pShortDesc,
                pXURL,
                pPageImageURL
            );
    end if;

    select * from DA_SiteDetails where TennantId=pTennantId;

END$$

DROP PROCEDURE IF EXISTS `spDAInsUpdUser`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDAInsUpdUser`(
IN pUserId int,
IN pLastName VARCHAR(255),
IN pFirstName VARCHAR(255),
IN pCompanyName VARCHAR(255),
IN pAddr1 VARCHAR(255),
IN pAddr2 VARCHAR(255),
IN pAddr3 VARCHAR(255),
IN pCity VARCHAR(255),
IN pState VARCHAR(255),
IN pCountry VARCHAR(255),
IN pPostalCode VARCHAR(255),
IN pPhoneArea VARCHAR(255),
IN pPhone VARCHAR(255),
IN pExt VARCHAR(255)
)
BEGIN  
declare vAddrId int;
declare vPhoneId int;

    set vAddrId=-1;
    set vPhoneId=-1;

start transaction;

    update DA_User set
        FirstName=pFirstName,
        LastName=pLastName,
        CompanyName=pCompanyName
    where UserId=pUserId;

    select a.AddrId into vAddrId from DA_Address a where a.EntityId=pUserId and a.Type=0 and a.PrimeUse=1; 
    if (vAddrId=-1) then
        insert into DA_Address (
            EntityId,
            Addr1,
            Addr2,
            Addr3,
            City,
            State,
            PostalCode,
            Country,
            PrimeUse,
            Type
        )
        values (
            pUserId,
            pAddr1,
            pAddr2,
            pAddr3,
            pCity,
            pState,
            pPostalCode,
            pCountry,
            1,
            0
        );
    else
        update DA_Address set
            Addr1=pAddr1,
            Addr2=pAddr2,
            Addr3=pAddr3,
            City=pCity,
            State=pState,
            PostalCode=pPostalCode,
            Country=pCountry
        where EntityId=pUserId and Type=0 and PrimeUse=1;
    end if;

commit;

END$$

DROP PROCEDURE IF EXISTS `spDAInsUser`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDAInsUser`(IN pLastName VARCHAR(255),IN pFirstName VARCHAR(255),IN pEmail VARCHAR(255),IN pCompanyName VARCHAR(255),IN pSource VARCHAR(255),IN pContext varchar(800),IN pPermanent bit(1),IN pPWDHash varchar(255))
BEGIN  
declare vLastId bigInt;
declare vUserPermanent bit;

start transaction;

set vUserPermanent=pPermanent ;
set vLastId=0;

    select u.userid, u.permanent into vLastId, vUserPermanent from DA_EmailAccounts em
	join DA_User u on u.UserId=em.UserId
    where em.Email=pEmail and u.permanent=b'1'  limit 1;


    if (vUserPermanent=b'0' or (vUserPermanent=b'1' and vLastId=0)) then

        INSERT INTO DA_User
            (
            LastName,
            FirstName,
            CompanyName,
            Permanent
            )
            VALUES (
            pLastName,
            pFirstName,
            pCompanyName,
            pPermanent
            );
    
        set vLastId=LAST_INSERT_ID();

        Insert into DA_EmailAccounts 
            (
            UserId,
            Email
            )
            values (
            vLastId,
            pEmail
            );

    end if;

    if vUserPermanent=b'1' then
        if not exists (select * from DA_Pwd where userid=vLastId) then
            insert into DA_Pwd (Userid,PwdHash)
                values (vLastId, pPWDHash);
        end if;
    end if;

    if len(pContext)>0 then
        Insert into DA_ContactNote 
            (
                UserId,
                Source,
                Context
            )
        values (
                vLastId,
                pSource,
                pContext
        );

    end if;

    commit;

    select vLastId as LastId;

END$$

DROP PROCEDURE IF EXISTS `spDAOrderEntity`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDAOrderEntity`(
    IN pEntityId int,
    IN pType int,
    IN pOrderArray varchar(1000)
)
BEGIN

declare vSpot smallint;
declare vSpot2 smallint;
declare vStr varchar(2000);
declare vOrderNum int(11);
	
set vOrderNum=0;
set vSpot=0;
set vSpot2=0;

start transaction;

delete from DA_Order
    where EntityId in (select p.PageId from DA_Pages p where p.TennantId=pEntityId)
        and Type=pType;

if (pType=1) then
    update DA_Nav set active=1 
    where PageId in (select PageId from DA_Pages where TennantId=pEntityId);
end if;
	
while pOrderArray <> '' DO
    set vSpot=instr(pOrderArray, ',');
    if vSpot>0 then
        set vStr=left(pOrderArray, vSpot-1);
	set pOrderArray=right(pOrderArray, length(pOrderArray)-vSpot);
    else
	set vStr=pOrderArray;
	set pOrderArray='';
    end if;

    
    if (pType=1) then
        set vSpot2=0;
        set vSpot2=instr(vStr, '_');
        if vSpot2>0 then
            set vStr=left(vStr, vSpot2-1);
            update DA_Nav set active=0 where PageId=trim(vStr);
        end if;
    end if;

    insert into DA_Order (
        EntityId,
        OrderNum,
        Type
    )
    values (
        trim(vStr),
        vOrderNum,
        pType
    );
			
    set vOrderNum=vOrderNum+1;

end while;

commit;

END$$

DROP PROCEDURE IF EXISTS `spDAOrderFileEntity`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDAOrderFileEntity`(
    IN pEntityId int,
    IN pType int,
    IN pOrderArray varchar(1000)
)
BEGIN

declare vSpot smallint;
declare vSpot2 smallint;
declare vStr varchar(2000);
declare vOrderNum int(11);
	
set vOrderNum=0;
set vSpot=0;
set vSpot2=0;

start transaction;

delete from DA_Order
    where EntityId in (select f.FileId from DA_Files f where f.TennantId=pEntityId)
        and Type=pType;

while pOrderArray <> '' DO
    set vSpot=instr(pOrderArray, ',');
    if vSpot>0 then
        set vStr=left(pOrderArray, vSpot-1);
	set pOrderArray=right(pOrderArray, length(pOrderArray)-vSpot);
    else
	set vStr=pOrderArray;
	set pOrderArray='';
    end if;

    insert into DA_Order (
        EntityId,
        OrderNum,
        Type
    )
    values (
        trim(vStr),
        vOrderNum,
        pType
    );
			
    set vOrderNum=vOrderNum+1;

end while;

commit;

END$$

DROP PROCEDURE IF EXISTS `spDAReInstateSite`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDAReInstateSite`(
IN pSid INT(11),
IN pUserId INT(11)
)
BEGIN  

update DA_Tennant set Active=1 where TennantId=pSid;

END$$

DROP PROCEDURE IF EXISTS `spDAUpdInlinePageContent`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDAUpdInlinePageContent`(
    IN pTennantId int,
    IN pUserId int,
    IN pAllHTML LONGTEXT,
    IN pAllIds varchar(2000),
    IN vStr LONGTEXT

)
BEGIN

declare vSpot bigint;
declare vSpot2 bigint;
declare vId bigint;
	
set vSpot=0;
set vSpot2=0;


start transaction;

delete from test;

while pAllHTML <> '' DO
    set vSpot=instr(pAllHTML, '~1XP~');
    set vSpot2=instr(pAllIds, ',');
    set vStr='';
    set vId=0;
    if vSpot>0 then

        set vStr=left(pAllHTML, vSpot-1);
        set vId=left(pAllIds, vSpot2-1);

insert into test (test,Type) values (vStr,1);
insert into test (test,Type) values (left(pAllIds, vSpot2-1),2);
insert into test (test,Type) values (cast(vSpot as char(10)),3);

        set pAllHTML=right(pAllHTML, length(pAllHTML)-(vSpot+4));
        set pAllIds=right(pAllIds, length(pAllIds)-(vSpot2));
insert into test (test,Type) values (pAllIds,4);
    else

        set vStr=pAllHTML;
        set vId=pAllIds;

	set pAllHTML='';
    end if;

    if vId>0 then
        update DA_Pages set PageHTML=vStr where PageId=vId;
    end if;

end while;

commit;

END$$

DROP PROCEDURE IF EXISTS `spDAValidateCredentials`$$
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDAValidateCredentials`(
IN pPWDHash VARCHAR(255),
IN pTennantId int,
IN pType int,
IN pFunction varchar(255)
)
BEGIN  
declare vUserId int;

set vUserId=0;
select u.UserId into vUserId from DA_Pwd pwd
	join DA_User u on u.UserId=pwd.UserId
	where pwd.PwdHash=pPWDHash  limit 1;

if (vUserId>0) then
    insert into DA_BasicStats (
        TennantId,
        UserId,
        Type,
        Function
        )
    values (
        pTennantId,
        vUserId,
        pType,
        pFunction
    );
end if;

select u.FirstName, u.LastName, u.UserId from DA_Pwd pwd
	join DA_User u on u.UserId=pwd.UserId
	where pwd.PwdHash=pPWDHash  limit 1;

END$$

DELIMITER ;
