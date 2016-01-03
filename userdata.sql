CREATE DATABASE  IF NOT EXISTS `userdata` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `userdata`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: userdata
-- ------------------------------------------------------
-- Server version	5.6.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `am_users`
--

DROP TABLE IF EXISTS `am_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_users` (
  `idam_users` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ngoemail` varchar(45) NOT NULL,
  `phonenumber` varchar(45) NOT NULL,
  `ngoname` varchar(45) NOT NULL,
  PRIMARY KEY (`idam_users`),
  KEY `id_idx` (`user_id`),
  CONSTRAINT `id` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_users`
--

LOCK TABLES `am_users` WRITE;
/*!40000 ALTER TABLE `am_users` DISABLE KEYS */;
INSERT INTO `am_users` VALUES (1,19,'12wdqw@23131','923121134567','qqweqw');
/*!40000 ALTER TABLE `am_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `an_users`
--

DROP TABLE IF EXISTS `an_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `an_users` (
  `idan_users` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_role` varchar(45) NOT NULL DEFAULT 'student',
  PRIMARY KEY (`idan_users`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `an_users`
--

LOCK TABLES `an_users` WRITE;
/*!40000 ALTER TABLE `an_users` DISABLE KEYS */;
INSERT INTO `an_users` VALUES (1,19,'student'),(2,20,'student'),(3,21,'student'),(4,22,'student');
/*!40000 ALTER TABLE `an_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cw_users`
--

DROP TABLE IF EXISTS `cw_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cw_users` (
  `id_cw_users` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `isdonor` tinyint(4) NOT NULL DEFAULT '1',
  `phonenumber` varchar(45) NOT NULL,
  PRIMARY KEY (`id_cw_users`),
  KEY `p_user_idx` (`user_id`),
  CONSTRAINT `p_user` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cw_users`
--

LOCK TABLES `cw_users` WRITE;
/*!40000 ALTER TABLE `cw_users` DISABLE KEYS */;
INSERT INTO `cw_users` VALUES (1,19,1,'923121234567');
/*!40000 ALTER TABLE `cw_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hw_users`
--

DROP TABLE IF EXISTS `hw_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hw_users` (
  `id_hw_users` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  PRIMARY KEY (`id_hw_users`),
  KEY `user_id_hw_users_idx` (`user_id`),
  CONSTRAINT `user_id_hw_users` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hw_users`
--

LOCK TABLES `hw_users` WRITE;
/*!40000 ALTER TABLE `hw_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `hw_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mh_user_data`
--

DROP TABLE IF EXISTS `mh_user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mh_user_data` (
  `user_first_name` varchar(15) NOT NULL,
  `user_last_name` varchar(15) NOT NULL,
  `user_email` varchar(40) NOT NULL,
  `user_donor` varchar(1) DEFAULT NULL,
  `user_password` varchar(40) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_contact_number` int(12) NOT NULL,
  PRIMARY KEY (`user_first_name`,`user_last_name`,`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mh_user_data`
--

LOCK TABLES `mh_user_data` WRITE;
/*!40000 ALTER TABLE `mh_user_data` DISABLE KEYS */;
INSERT INTO `mh_user_data` VALUES ('test','check','abc@kg.com','1','7c4a8d09ca3762af61e59520943dc26494f8941b','asasewe sdfsdfsd sdfsd f',2147483647);
/*!40000 ALTER TABLE `mh_user_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mh_users`
--

DROP TABLE IF EXISTS `mh_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mh_users` (
  `id_mh_users` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `contact_number` varchar(45) NOT NULL,
  `is_donor` tinyint(4) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id_mh_users`),
  KEY `userlnk_idx` (`user_id`),
  CONSTRAINT `userlnk` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mh_users`
--

LOCK TABLES `mh_users` WRITE;
/*!40000 ALTER TABLE `mh_users` DISABLE KEYS */;
INSERT INTO `mh_users` VALUES (1,19,'923121234567',0,'house 1 street 2 awqq'),(3,21,'923121234567',1,'asasewe sdfsdfsd sdfsd f');
/*!40000 ALTER TABLE `mh_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_users`
--

DROP TABLE IF EXISTS `mm_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mm_users` (
  `id_mm_users` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `bio` longtext NOT NULL,
  `more_info` text NOT NULL,
  `occupation` varchar(45) NOT NULL,
  PRIMARY KEY (`id_mm_users`),
  KEY `user_idx` (`user_id`),
  CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_users`
--

LOCK TABLES `mm_users` WRITE;
/*!40000 ALTER TABLE `mm_users` DISABLE KEYS */;
INSERT INTO `mm_users` VALUES (1,22,'923121345678','sdfhsdfsdnfjk fsdjk f','sdfsdfnsdfk sdfsdk fsdkfs','carpainter');
/*!40000 ALTER TABLE `mm_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mr_users`
--

DROP TABLE IF EXISTS `mr_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mr_users` (
  `idmr_users` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `role` int(11) NOT NULL,
  PRIMARY KEY (`idmr_users`),
  KEY `userid_idx` (`user_id`),
  CONSTRAINT `userid` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mr_users`
--

LOCK TABLES `mr_users` WRITE;
/*!40000 ALTER TABLE `mr_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mr_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registered_modules`
--

DROP TABLE IF EXISTS `registered_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registered_modules` (
  `id_registered_modules` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `module_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id_registered_modules`),
  KEY `users_idx` (`user_id`),
  CONSTRAINT `users` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registered_modules`
--

LOCK TABLES `registered_modules` WRITE;
/*!40000 ALTER TABLE `registered_modules` DISABLE KEYS */;
INSERT INTO `registered_modules` VALUES (1,19,'./school_management'),(2,19,'./drixel'),(3,19,'./academic_scholorships'),(4,19,'./donations'),(5,19,'./d2quiz'),(6,19,'./ngos'),(7,19,'./problem_sharing'),(8,21,'./d2quiz'),(10,21,'./donations'),(11,21,'./school_management'),(12,22,'./school_renovation');
/*!40000 ALTER TABLE `registered_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sr_users`
--

DROP TABLE IF EXISTS `sr_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sr_users` (
  `idsr_users` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_role` varchar(45) NOT NULL DEFAULT 'student',
  PRIMARY KEY (`idsr_users`),
  KEY `userid_idx` (`user_id`),
  CONSTRAINT `sr_userid` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sr_users`
--

LOCK TABLES `sr_users` WRITE;
/*!40000 ALTER TABLE `sr_users` DISABLE KEYS */;
INSERT INTO `sr_users` VALUES (1,19,'student'),(2,20,'student'),(3,21,'student'),(4,22,'student');
/*!40000 ALTER TABLE `sr_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (19,'admin11','Mickey','Mouse','13beseuhussain@seecs.edu.pk','7c4a8d09ca3762af61e59520943dc26494f8941b',1),(20,'77','Mickey','Mouse','ab@q','7c4a8d09ca3762af61e59520943dc26494f8941b',0),(21,'2345','test','check','abc@kg.com','7c4a8d09ca3762af61e59520943dc26494f8941b',0),(22,'13beseuhussain','1234','asd','sk@q','7c4a8d09ca3762af61e59520943dc26494f8941b',0);
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-01 20:28:50
