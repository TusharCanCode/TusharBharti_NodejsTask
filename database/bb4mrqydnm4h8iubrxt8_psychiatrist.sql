CREATE DATABASE  IF NOT EXISTS `bb4mrqydnm4h8iubrxt8` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bb4mrqydnm4h8iubrxt8`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: bb4mrqydnm4h8iubrxt8-mysql.services.clever-cloud.com    Database: bb4mrqydnm4h8iubrxt8
-- ------------------------------------------------------
-- Server version	8.0.22-13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'a05a675a-1414-11e9-9c82-cecd01b08c7e:1-491550428,
a38a16d0-767a-11eb-abe2-cecd029e558e:1-138685537';

--
-- Table structure for table `psychiatrist`
--

DROP TABLE IF EXISTS `psychiatrist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `psychiatrist` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `hospitalName` varchar(200) NOT NULL,
  `phoneNumber` varchar(50) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `email` varchar(1000) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psychiatrist`
--

LOCK TABLES `psychiatrist` WRITE;
/*!40000 ALTER TABLE `psychiatrist` DISABLE KEYS */;
INSERT INTO `psychiatrist` VALUES (1,'Doctor','A','Jawaharlal Nehru Medical College and Hospital','+919876543210',110020,'New Delhi','DoctorA@gmail.com','Test@2021'),(2,'Doctor','B','AIIMS - All India Institute Of Medical Science','+919876543211',110021,'New Delhi','DoctorB@gmail.com','Test@2021'),(3,'Doctor','C','Indira Gandhi Institute of Medical Sciences (IGIMS)','+919876543212',110022,'New Delhi','DoctorC@gmail.com','Test@2021'),(4,'Doctor','D','Apollo Hospitals','+919876543213',110023,'New Delhi','DoctorD@gmail.com','Test@2021'),(5,'Doctor','E','Jawaharlal Nehru Medical College and Hospital','+919876543214',110024,'New Delhi','DoctorE@gmail.com','Test@2021'),(6,'Doctor','F','Apollo Hospitals','+919876543215',110025,'New Delhi','DoctorF@gmail.com','Test@2021'),(7,'Doctor','G','Indira Gandhi Institute of Medical Sciences (IGIMS)','+919876543216',110026,'New Delhi','DoctorG@gmail.com','Test@2021'),(8,'Doctor','H','Indira Gandhi Institute of Medical Sciences (IGIMS)','+919876543217',110027,'New Delhi','DoctorH@gmail.com','Test@2021'),(10,'Doctor','I','Indira Gandhi Institute of Medical Sciences (IGIMS)','+919876543218',110028,'New Delhi','DoctorI@gmail.com','Test@2021'),(11,'Doctor','J','Apollo Hospitals','+919876543219',110029,'New Delhi','DoctorJ@gmail.com','Test@2021'),(12,'Doctor','K','Jawaharlal Nehru Medical College and Hospital','+919876543220',110030,'New Delhi','DoctorK@gmail.com','Test@2021'),(15,'Doctor','L','Jawaharlal Nehru Medical College and Hospital','+919876543221',110031,'New Delhi','DoctorL@gmail.com','Test@2021'),(16,'Doctor','M','Jawaharlal Nehru Medical College and Hospital','+919876543222',110032,'New Delhi','DoctorM@gmail.com','Test@2021'),(17,'Doctor','N','AIIMS - All India Institute Of Medical Science','+919876543223',110033,'New Delhi','DoctorN@gmail.com','Test@2021'),(19,'Doctor','O','Jawaharlal Nehru Medical College and Hospital','+919876543224',110034,'New Delhi','DoctorO@gmail.com','Test@2021'),(21,'Doctor','P','AIIMS - All India Institute Of Medical Science','+919876543225',110035,'New Delhi','DoctorP@gmail.com','Test@2021'),(22,'Doctor','Q','AIIMS - All India Institute Of Medical Science','+919876543226',110036,'New Delhi','DoctorQ@gmail.com','Test@2021'),(23,'Doctor','R','Indira Gandhi Institute of Medical Sciences (IGIMS)','+919876543227',110037,'New Delhi','DoctorR@gmail.com','Test@2021'),(24,'Doctor','S','AIIMS - All India Institute Of Medical Science','+919876543228',110038,'New Delhi','DoctorS@gmail.com','Test@2021'),(25,'Doctor','T','Apollo Hospitals','+919876543229',110039,'New Delhi','DoctorT@gmail.com','Test@2021'),(26,'Doctor','U','AIIMS - All India Institute Of Medical Science','+919876543230',110040,'New Delhi','DoctorU@gmail.com','Test@2021'),(27,'Doctor','V','Apollo Hospitals','+919876543231',110041,'New Delhi','DoctorV@gmail.com','Test@2021'),(28,'Doctor','W','Indira Gandhi Institute of Medical Sciences (IGIMS)','+919876543232',110042,'New Delhi','DoctorW@gmail.com','Test@2021'),(29,'Doctor','X','Jawaharlal Nehru Medical College and Hospital','+919876543233',110043,'New Delhi','DoctorX@gmail.com','Test@2021'),(30,'Doctor','Y','Apollo Hospitals','+919876543234',110044,'New Delhi','DoctorY@gmail.com','Test@2021'),(31,'Doctor','Z','Indira Gandhi Institute of Medical Sciences (IGIMS)','+919876543235',110045,'New Delhi','DoctorZ@gmail.com','Test@2021');
/*!40000 ALTER TABLE `psychiatrist` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-20 16:51:41
