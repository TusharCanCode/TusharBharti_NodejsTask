-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: bb4mrqydnm4h8iubrxt8-mysql.services.clever-cloud.com:3306
-- Generation Time: May 20, 2022 at 11:08 AM
-- Server version: 8.0.22-13
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bb4mrqydnm4h8iubrxt8`
--
CREATE DATABASE IF NOT EXISTS `bb4mrqydnm4h8iubrxt8` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bb4mrqydnm4h8iubrxt8`;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `ID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `phoneNumber` varchar(500) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `patientPhoto` varchar(1000) NOT NULL,
  `psychiatristID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`ID`, `Name`, `Address`, `email`, `phoneNumber`, `password`, `patientPhoto`, `psychiatristID`) VALUES
(1, 'Patient 1', 'Address of patient 1', 'patient1@gmail.com', '+919876543250', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041442103PatientA.jpg?alt=media&token=bd970ab3-e0d3-404f-929f-fac5e51ac39d', 1),
(2, 'Patient 2', 'Address of patient 2', 'patient2@gmail.com', '+919876543251', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041591374PatientB.jpg?alt=media&token=d8990557-891c-4dd8-a057-10b7a0dbf250', 6),
(3, 'Patient 3', 'Address of patient 3', 'patient3@gmail.com', '+919876543252', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041638158PatientC.jpg?alt=media&token=0201c4a8-7815-405c-885c-2b98d218efcf', 6),
(4, 'Patient 4', 'Address of patient 4', 'patient4@gmail.com', '+919876543252', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041673113PatientD.jpg?alt=media&token=1b42e0cf-6265-4758-a46a-e6793de1fe50', 8),
(5, 'Patient 5', 'Address of patient 5', 'patient5@gmail.com', '+919876543253', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041591374PatientB.jpg?alt=media&token=d8990557-891c-4dd8-a057-10b7a0dbf250', 23),
(6, 'Patient 6', 'Address of patient 6', 'patient6@gmail.com', '+919876543254', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041638158PatientC.jpg?alt=media&token=0201c4a8-7815-405c-885c-2b98d218efcf', 27),
(7, 'Patient 7', 'Address of patient 7', 'patient7@gmail.com', '+919876543255', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041591374PatientB.jpg?alt=media&token=d8990557-891c-4dd8-a057-10b7a0dbf250', 8),
(8, 'Patient 8', 'Address of patient 8', 'patient8@gmail.com', '+919876543256', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041638158PatientC.jpg?alt=media&token=0201c4a8-7815-405c-885c-2b98d218efcf', 2),
(9, 'Patient 9', 'Address of patient 9', 'patient9@gmail.com', '+919876543257', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041638158PatientC.jpg?alt=media&token=0201c4a8-7815-405c-885c-2b98d218efcf', 6),
(10, 'Patient 10', 'Address of patient 10', 'patient10@gmail.com', '+919876543258', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041591374PatientB.jpg?alt=media&token=d8990557-891c-4dd8-a057-10b7a0dbf250', 29),
(11, 'Patient 11', 'Address of patient 11', 'patient11@gmail.com', '+919876543259', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041591374PatientB.jpg?alt=media&token=d8990557-891c-4dd8-a057-10b7a0dbf250', 26),
(12, 'Patient 12', 'Address of patient 12', 'patient12@gmail.com', '+919876543260', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041591374PatientB.jpg?alt=media&token=d8990557-891c-4dd8-a057-10b7a0dbf250', 27),
(13, 'Patient 13', 'Address of patient 13', 'patient13@gmail.com', '+919876543261', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041673113PatientD.jpg?alt=media&token=1b42e0cf-6265-4758-a46a-e6793de1fe50', 8),
(14, 'Patient 14', 'Address of patient 14', 'patient14@gmail.com', '+919876543262', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041673113PatientD.jpg?alt=media&token=1b42e0cf-6265-4758-a46a-e6793de1fe50', 12),
(15, 'Patient 15', 'Address of patient 15', 'patient15@gmail.com', '+919876543263', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041673113PatientD.jpg?alt=media&token=1b42e0cf-6265-4758-a46a-e6793de1fe50', 4),
(16, 'Patient 16', 'Address of patient 16', 'patient16@gmail.com', '+919876543264', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041638158PatientC.jpg?alt=media&token=0201c4a8-7815-405c-885c-2b98d218efcf', 30),
(17, 'Patient 17', 'Address of patient 17', 'patient17@gmail.com', '+919876543265', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041442103PatientA.jpg?alt=media&token=bd970ab3-e0d3-404f-929f-fac5e51ac39d', 31),
(18, 'Patient 18', 'Address of patient 18', 'patient18@gmail.com', '+919876543266', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041442103PatientA.jpg?alt=media&token=bd970ab3-e0d3-404f-929f-fac5e51ac39d', 3),
(19, 'Patient 19', 'Address of patient 19', 'patient19@gmail.com', '+919876543267', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041673113PatientD.jpg?alt=media&token=1b42e0cf-6265-4758-a46a-e6793de1fe50', 23),
(20, 'Patient 20', 'Address of patient 20', 'patient20@gmail.com', '+919876543268', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041638158PatientC.jpg?alt=media&token=0201c4a8-7815-405c-885c-2b98d218efcf', 16),
(21, 'Patient 21', 'Address of patient 21', 'patient21@gmail.com', '+919876543269', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041638158PatientC.jpg?alt=media&token=0201c4a8-7815-405c-885c-2b98d218efcf', 10),
(22, 'Patient 22', 'Address of patient 22', 'patient22@gmail.com', '+919876543270', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041442103PatientA.jpg?alt=media&token=bd970ab3-e0d3-404f-929f-fac5e51ac39d', 31),
(23, 'Patient 23', 'Address of patient 23', 'patient23@gmail.com', '+919876543271', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041673113PatientD.jpg?alt=media&token=1b42e0cf-6265-4758-a46a-e6793de1fe50', 17),
(24, 'Patient 24', 'Address of patient 24', 'patient24@gmail.com', '+919876543272', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041638158PatientC.jpg?alt=media&token=0201c4a8-7815-405c-885c-2b98d218efcf', 29),
(25, 'Patient 25', 'Address of patient 25', 'patient25@gmail.com', '+919876543273', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041673113PatientD.jpg?alt=media&token=1b42e0cf-6265-4758-a46a-e6793de1fe50', 16),
(26, 'Patient 26', 'Address of patient 26', 'patient26@gmail.com', '+919876543274', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041591374PatientB.jpg?alt=media&token=d8990557-891c-4dd8-a057-10b7a0dbf250', 15),
(27, 'Patient 27', 'Address of patient 27', 'patient27@gmail.com', '+919876543275', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041591374PatientB.jpg?alt=media&token=d8990557-891c-4dd8-a057-10b7a0dbf250', 24),
(28, 'Patient 28', 'Address of patient 28', 'patient28@gmail.com', '+919876543276', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041591374PatientB.jpg?alt=media&token=d8990557-891c-4dd8-a057-10b7a0dbf250', 4),
(29, 'Patient 29', 'Address of patient 29', 'patient29@gmail.com', '+919876543277', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041442103PatientA.jpg?alt=media&token=bd970ab3-e0d3-404f-929f-fac5e51ac39d', 22),
(30, 'Patient 30', 'Address of patient 30', 'patient30@gmail.com', '+919876543278', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041591374PatientB.jpg?alt=media&token=d8990557-891c-4dd8-a057-10b7a0dbf250', 26),
(31, 'Patient 31', 'Address of patient 31', 'patient31@gmail.com', '+919876543279', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041673113PatientD.jpg?alt=media&token=1b42e0cf-6265-4758-a46a-e6793de1fe50', 8),
(32, 'Patient 32', 'Address of patient 32', 'patient32@gmail.com', '+919876543280', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041591374PatientB.jpg?alt=media&token=d8990557-891c-4dd8-a057-10b7a0dbf250', 4),
(33, 'Patient 33', 'Address of patient 33', 'patient33@gmail.com', '+919876543281', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041442103PatientA.jpg?alt=media&token=bd970ab3-e0d3-404f-929f-fac5e51ac39d', 29),
(34, 'Patient 34', 'Address of patient 34', 'patient34@gmail.com', '+919876543282', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041638158PatientC.jpg?alt=media&token=0201c4a8-7815-405c-885c-2b98d218efcf', 10),
(35, 'Patient 35', 'Address of patient 35', 'patient35@gmail.com', '+919876543283', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041638158PatientC.jpg?alt=media&token=0201c4a8-7815-405c-885c-2b98d218efcf', 15),
(36, 'Patient 36', 'Address of patient 36', 'patient36@gmail.com', '+919876543284', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041442103PatientA.jpg?alt=media&token=bd970ab3-e0d3-404f-929f-fac5e51ac39d', 19),
(37, 'Patient 37', 'Address of patient 37', 'patient37@gmail.com', '+919876543285', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041638158PatientC.jpg?alt=media&token=0201c4a8-7815-405c-885c-2b98d218efcf', 29),
(38, 'Patient 38', 'Address of patient 38', 'patient38@gmail.com', '+919876543286', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041638158PatientC.jpg?alt=media&token=0201c4a8-7815-405c-885c-2b98d218efcf', 3),
(39, 'Patient 39', 'Address of patient 39', 'patient39@gmail.com', '+919876543287', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041638158PatientC.jpg?alt=media&token=0201c4a8-7815-405c-885c-2b98d218efcf', 6),
(40, 'Patient 40', 'Address of patient 40', 'patient40@gmail.com', '+919876543288', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041638158PatientC.jpg?alt=media&token=0201c4a8-7815-405c-885c-2b98d218efcf', 28),
(41, 'Patient 41', 'Address of patient 41', 'patient41@gmail.com', '+919876543289', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041442103PatientA.jpg?alt=media&token=bd970ab3-e0d3-404f-929f-fac5e51ac39d', 7),
(42, 'Patient 42', 'Address of patient 42', 'patient42@gmail.com', '+919876543290', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041673113PatientD.jpg?alt=media&token=1b42e0cf-6265-4758-a46a-e6793de1fe50', 29),
(43, 'Patient 43', 'Address of patient 43', 'patient43@gmail.com', '+919876543291', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041638158PatientC.jpg?alt=media&token=0201c4a8-7815-405c-885c-2b98d218efcf', 2),
(44, 'Patient 44', 'Address of patient 44', 'patient44@gmail.com', '+919876543292', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041442103PatientA.jpg?alt=media&token=bd970ab3-e0d3-404f-929f-fac5e51ac39d', 7),
(45, 'Patient 45', 'Address of patient 45', 'patient45@gmail.com', '+919876543293', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041442103PatientA.jpg?alt=media&token=bd970ab3-e0d3-404f-929f-fac5e51ac39d', 21),
(46, 'Patient 46', 'Address of patient 46', 'patient46@gmail.com', '+919876543294', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041442103PatientA.jpg?alt=media&token=bd970ab3-e0d3-404f-929f-fac5e51ac39d', 25),
(47, 'Patient 47', 'Address of patient 47', 'patient47@gmail.com', '+919876543295', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041638158PatientC.jpg?alt=media&token=0201c4a8-7815-405c-885c-2b98d218efcf', 6),
(48, 'Patient 48', 'Address of patient 48', 'patient48@gmail.com', '+919876543296', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041591374PatientB.jpg?alt=media&token=d8990557-891c-4dd8-a057-10b7a0dbf250', 19),
(49, 'Patient 49', 'Address of patient 49', 'patient49@gmail.com', '+919876543297', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041591374PatientB.jpg?alt=media&token=d8990557-891c-4dd8-a057-10b7a0dbf250', 23),
(50, 'Patient 50', 'Address of patient 50', 'patient50@gmail.com', '+919876543298', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041673113PatientD.jpg?alt=media&token=1b42e0cf-6265-4758-a46a-e6793de1fe50', 23),
(51, 'Patient 51', 'Address of patient 51', 'patient51@gmail.com', '+919876543299', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041442103PatientA.jpg?alt=media&token=bd970ab3-e0d3-404f-929f-fac5e51ac39d', 11),
(52, 'Patient 52', 'Address of patient 52', 'patient52@gmail.com', '+9198765432100', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041591374PatientB.jpg?alt=media&token=d8990557-891c-4dd8-a057-10b7a0dbf250', 23),
(53, 'Patient 53', 'Address of patient 53', 'patient53@gmail.com', '+9198765432101', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041638158PatientC.jpg?alt=media&token=0201c4a8-7815-405c-885c-2b98d218efcf', 31),
(54, 'Patient 54', 'Address of patient 54', 'patient54@gmail.com', '+9198765432102', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041591374PatientB.jpg?alt=media&token=d8990557-891c-4dd8-a057-10b7a0dbf250', 17),
(55, 'Patient 55', 'Address of patient 55', 'patient55@gmail.com', '+9198765432103', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041442103PatientA.jpg?alt=media&token=bd970ab3-e0d3-404f-929f-fac5e51ac39d', 2),
(56, 'Patient 56', 'Address of patient 56', 'patient56@gmail.com', '+9198765432104', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041591374PatientB.jpg?alt=media&token=d8990557-891c-4dd8-a057-10b7a0dbf250', 12),
(57, 'Patient 57', 'Address of patient 57', 'patient57@gmail.com', '+9198765432105', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041591374PatientB.jpg?alt=media&token=d8990557-891c-4dd8-a057-10b7a0dbf250', 21),
(58, 'Patient 58', 'Address of patient 58', 'patient58@gmail.com', '+9198765432106', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041638158PatientC.jpg?alt=media&token=0201c4a8-7815-405c-885c-2b98d218efcf', 23),
(59, 'Patient 59', 'Address of patient 59', 'patient59@gmail.com', '+9198765432107', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041591374PatientB.jpg?alt=media&token=d8990557-891c-4dd8-a057-10b7a0dbf250', 6),
(60, 'Patient 60', 'Address of patient 60', 'patient60@gmail.com', '+9198765432108', 'Test@2022', 'https://firebasestorage.googleapis.com/v0/b/lattice-assignment.appspot.com/o/patientImages%2F1653041673113PatientD.jpg?alt=media&token=1b42e0cf-6265-4758-a46a-e6793de1fe50', 30);

-- --------------------------------------------------------

--
-- Table structure for table `psychiatrist`
--

CREATE TABLE `psychiatrist` (
  `ID` int NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `hospitalName` varchar(200) NOT NULL,
  `phoneNumber` varchar(50) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `email` varchar(1000) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `psychiatrist`
--

INSERT INTO `psychiatrist` (`ID`, `FirstName`, `LastName`, `hospitalName`, `phoneNumber`, `pincode`, `State`, `email`, `password`) VALUES
(1, 'Doctor', 'A', 'Jawaharlal Nehru Medical College and Hospital', '+919876543210', 110020, 'New Delhi', 'DoctorA@gmail.com', 'Test@2021'),
(2, 'Doctor', 'B', 'AIIMS - All India Institute Of Medical Science', '+919876543211', 110021, 'New Delhi', 'DoctorB@gmail.com', 'Test@2021'),
(3, 'Doctor', 'C', 'Indira Gandhi Institute of Medical Sciences (IGIMS)', '+919876543212', 110022, 'New Delhi', 'DoctorC@gmail.com', 'Test@2021'),
(4, 'Doctor', 'D', 'Apollo Hospitals', '+919876543213', 110023, 'New Delhi', 'DoctorD@gmail.com', 'Test@2021'),
(5, 'Doctor', 'E', 'Jawaharlal Nehru Medical College and Hospital', '+919876543214', 110024, 'New Delhi', 'DoctorE@gmail.com', 'Test@2021'),
(6, 'Doctor', 'F', 'Apollo Hospitals', '+919876543215', 110025, 'New Delhi', 'DoctorF@gmail.com', 'Test@2021'),
(7, 'Doctor', 'G', 'Indira Gandhi Institute of Medical Sciences (IGIMS)', '+919876543216', 110026, 'New Delhi', 'DoctorG@gmail.com', 'Test@2021'),
(8, 'Doctor', 'H', 'Indira Gandhi Institute of Medical Sciences (IGIMS)', '+919876543217', 110027, 'New Delhi', 'DoctorH@gmail.com', 'Test@2021'),
(10, 'Doctor', 'I', 'Indira Gandhi Institute of Medical Sciences (IGIMS)', '+919876543218', 110028, 'New Delhi', 'DoctorI@gmail.com', 'Test@2021'),
(11, 'Doctor', 'J', 'Apollo Hospitals', '+919876543219', 110029, 'New Delhi', 'DoctorJ@gmail.com', 'Test@2021'),
(12, 'Doctor', 'K', 'Jawaharlal Nehru Medical College and Hospital', '+919876543220', 110030, 'New Delhi', 'DoctorK@gmail.com', 'Test@2021'),
(15, 'Doctor', 'L', 'Jawaharlal Nehru Medical College and Hospital', '+919876543221', 110031, 'New Delhi', 'DoctorL@gmail.com', 'Test@2021'),
(16, 'Doctor', 'M', 'Jawaharlal Nehru Medical College and Hospital', '+919876543222', 110032, 'New Delhi', 'DoctorM@gmail.com', 'Test@2021'),
(17, 'Doctor', 'N', 'AIIMS - All India Institute Of Medical Science', '+919876543223', 110033, 'New Delhi', 'DoctorN@gmail.com', 'Test@2021'),
(19, 'Doctor', 'O', 'Jawaharlal Nehru Medical College and Hospital', '+919876543224', 110034, 'New Delhi', 'DoctorO@gmail.com', 'Test@2021'),
(21, 'Doctor', 'P', 'AIIMS - All India Institute Of Medical Science', '+919876543225', 110035, 'New Delhi', 'DoctorP@gmail.com', 'Test@2021'),
(22, 'Doctor', 'Q', 'AIIMS - All India Institute Of Medical Science', '+919876543226', 110036, 'New Delhi', 'DoctorQ@gmail.com', 'Test@2021'),
(23, 'Doctor', 'R', 'Indira Gandhi Institute of Medical Sciences (IGIMS)', '+919876543227', 110037, 'New Delhi', 'DoctorR@gmail.com', 'Test@2021'),
(24, 'Doctor', 'S', 'AIIMS - All India Institute Of Medical Science', '+919876543228', 110038, 'New Delhi', 'DoctorS@gmail.com', 'Test@2021'),
(25, 'Doctor', 'T', 'Apollo Hospitals', '+919876543229', 110039, 'New Delhi', 'DoctorT@gmail.com', 'Test@2021'),
(26, 'Doctor', 'U', 'AIIMS - All India Institute Of Medical Science', '+919876543230', 110040, 'New Delhi', 'DoctorU@gmail.com', 'Test@2021'),
(27, 'Doctor', 'V', 'Apollo Hospitals', '+919876543231', 110041, 'New Delhi', 'DoctorV@gmail.com', 'Test@2021'),
(28, 'Doctor', 'W', 'Indira Gandhi Institute of Medical Sciences (IGIMS)', '+919876543232', 110042, 'New Delhi', 'DoctorW@gmail.com', 'Test@2021'),
(29, 'Doctor', 'X', 'Jawaharlal Nehru Medical College and Hospital', '+919876543233', 110043, 'New Delhi', 'DoctorX@gmail.com', 'Test@2021'),
(30, 'Doctor', 'Y', 'Apollo Hospitals', '+919876543234', 110044, 'New Delhi', 'DoctorY@gmail.com', 'Test@2021'),
(31, 'Doctor', 'Z', 'Indira Gandhi Institute of Medical Sciences (IGIMS)', '+919876543235', 110045, 'New Delhi', 'DoctorZ@gmail.com', 'Test@2021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_psychiatrist` (`psychiatristID`);

--
-- Indexes for table `psychiatrist`
--
ALTER TABLE `psychiatrist`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `psychiatrist`
--
ALTER TABLE `psychiatrist`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `fk_psychiatrist` FOREIGN KEY (`psychiatristID`) REFERENCES `psychiatrist` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
