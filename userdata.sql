-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2016 at 06:57 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `userdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `am_users`
--

CREATE TABLE IF NOT EXISTS `am_users` (
  `idam_users` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ngoemail` varchar(45) NOT NULL,
  `phonenumber` varchar(45) NOT NULL,
  `ngoname` varchar(45) NOT NULL,
  PRIMARY KEY (`idam_users`),
  KEY `id_idx` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `am_users`
--

INSERT INTO `am_users` (`idam_users`, `user_id`, `ngoemail`, `phonenumber`, `ngoname`) VALUES
(1, 19, '12wdqw@23131', '923121134567', 'qqweqw');

-- --------------------------------------------------------

--
-- Table structure for table `an_users`
--

CREATE TABLE IF NOT EXISTS `an_users` (
  `idan_users` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_role` varchar(45) NOT NULL DEFAULT 'student',
  PRIMARY KEY (`idan_users`),
  KEY `user_id_idx` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `an_users`
--

INSERT INTO `an_users` (`idan_users`, `user_id`, `user_role`) VALUES
(1, 19, 'student'),
(2, 20, 'student'),
(3, 21, 'student'),
(4, 22, 'student'),
(5, 23, 'student');

-- --------------------------------------------------------

--
-- Table structure for table `cw_users`
--

CREATE TABLE IF NOT EXISTS `cw_users` (
  `id_cw_users` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `isdonor` tinyint(4) NOT NULL DEFAULT '1',
  `phonenumber` varchar(45) NOT NULL,
  PRIMARY KEY (`id_cw_users`),
  KEY `p_user_idx` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cw_users`
--

INSERT INTO `cw_users` (`id_cw_users`, `user_id`, `isdonor`, `phonenumber`) VALUES
(1, 19, 1, '923121234567');

-- --------------------------------------------------------

--
-- Table structure for table `hw_users`
--

CREATE TABLE IF NOT EXISTS `hw_users` (
  `id_hw_users` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  PRIMARY KEY (`id_hw_users`),
  KEY `user_id_hw_users_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `metirial_donation`
--

CREATE TABLE IF NOT EXISTS `metirial_donation` (
  `metirial_id` int(11) NOT NULL AUTO_INCREMENT,
  `metirial_name` varchar(60) NOT NULL,
  `category` varchar(30) NOT NULL,
  `picture` varchar(60) DEFAULT NULL,
  `sent` int(1) NOT NULL,
  `reserved` int(1) NOT NULL,
  `recieved` int(1) NOT NULL,
  PRIMARY KEY (`metirial_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `metirial_donation`
--

INSERT INTO `metirial_donation` (`metirial_id`, `metirial_name`, `category`, `picture`, `sent`, `reserved`, `recieved`) VALUES
(40, 'ma', 'Clothes', 'pics/donate_toys.jpg', 0, 0, 1),
(42, 'ert', 'Clothes', 'pics/gifts-donations.jpg', 0, 0, 1),
(43, 'asd', 'Bags', 'pics/gifts-donations.jpg', 0, 0, 1),
(44, 'rr', 'Electrical Equipment', 'pics/Donate-Toys.jpg', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `metirial_donation_acceptor`
--

CREATE TABLE IF NOT EXISTS `metirial_donation_acceptor` (
  `metirial_id` int(11) NOT NULL DEFAULT '0',
  `user_first_name` varchar(15) NOT NULL,
  `user_last_name` varchar(15) NOT NULL,
  `user_email` varchar(40) NOT NULL,
  PRIMARY KEY (`metirial_id`),
  KEY `user_first_name` (`user_first_name`,`user_last_name`,`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `metirial_donation_acceptor`
--

INSERT INTO `metirial_donation_acceptor` (`metirial_id`, `user_first_name`, `user_last_name`, `user_email`) VALUES
(41, 'sumera', 'ali', 'sumera@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `metirial_donation_user`
--

CREATE TABLE IF NOT EXISTS `metirial_donation_user` (
  `metirial_id` int(11) NOT NULL DEFAULT '0',
  `user_first_name` varchar(15) NOT NULL,
  `user_last_name` varchar(15) NOT NULL,
  `user_email` varchar(40) NOT NULL,
  PRIMARY KEY (`metirial_id`),
  KEY `user_first_name` (`user_first_name`,`user_last_name`,`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `metirial_donation_user`
--

INSERT INTO `metirial_donation_user` (`metirial_id`, `user_first_name`, `user_last_name`, `user_email`) VALUES
(43, 'b', 'b', 'bb@gmail.com'),
(44, 'b', 'b', 'bb@gmail.com'),
(40, 'maria', 'hameed', 'maria@yahoo.com'),
(41, 'maria', 'hameed', 'maria@yahoo.com'),
(42, 'maria', 'hameed', 'maria@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `mh_users`
--

CREATE TABLE IF NOT EXISTS `mh_users` (
  `id_mh_users` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `contact_number` varchar(45) NOT NULL,
  `is_donor` tinyint(4) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id_mh_users`),
  KEY `userlnk_idx` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mh_users`
--

INSERT INTO `mh_users` (`id_mh_users`, `user_id`, `contact_number`, `is_donor`, `address`) VALUES
(1, 19, '923121234567', 0, 'house 1 street 2 awqq'),
(3, 21, '923121234567', 1, 'asasewe sdfsdfsd sdfsd f'),
(4, 23, '923456789879', 1, 'hfgshdfghdsgfh sdjfhs');

-- --------------------------------------------------------

--
-- Table structure for table `mh_user_data`
--

CREATE TABLE IF NOT EXISTS `mh_user_data` (
  `user_first_name` varchar(15) NOT NULL,
  `user_last_name` varchar(15) NOT NULL,
  `user_email` varchar(40) NOT NULL,
  `user_donor` varchar(1) DEFAULT NULL,
  `user_password` varchar(40) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_contact_number` int(12) NOT NULL,
  PRIMARY KEY (`user_first_name`,`user_last_name`,`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mh_user_data`
--

INSERT INTO `mh_user_data` (`user_first_name`, `user_last_name`, `user_email`, `user_donor`, `user_password`, `user_address`, `user_contact_number`) VALUES
('aaa', 'bbb', 'a@gmail.com', '1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'hfgshdfghdsgfh sdjfhs', 2147483647),
('asd', 'qwe', 'aaa@yahoo.com', '0', 'aaa', 'aaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaa', 0),
('b', 'b', 'bb@gmail.com', '1', '12', 'vxcvx', 987654321),
('maria', 'hameed', 'maria@yahoo.com', '1', '123456', 'dkfjfhgjkhkjhkj', 7),
('nimra', 'sabir', 'nimra@gmail.com', '2', '222', 'sadfjasfjdsjfj', 339876543),
('sumera', 'ali', 'sumera@gmail.com', '0', '111', 'shagf asdg aystu', 26),
('test', 'check', 'abc@kg.com', '1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'asasewe sdfsdfsd sdfsd f', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `mm_users`
--

CREATE TABLE IF NOT EXISTS `mm_users` (
  `id_mm_users` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `bio` longtext NOT NULL,
  `more_info` text NOT NULL,
  `occupation` varchar(45) NOT NULL,
  PRIMARY KEY (`id_mm_users`),
  KEY `user_idx` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mm_users`
--

INSERT INTO `mm_users` (`id_mm_users`, `user_id`, `phone_number`, `bio`, `more_info`, `occupation`) VALUES
(1, 22, '923121345678', 'sdfhsdfsdnfjk fsdjk f', 'sdfsdfnsdfk sdfsdk fsdkfs', 'carpainter');

-- --------------------------------------------------------

--
-- Table structure for table `monetary_donation`
--

CREATE TABLE IF NOT EXISTS `monetary_donation` (
  `problem_id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_name` varchar(30) NOT NULL,
  `problem_description` varchar(500) NOT NULL,
  `money_required` int(11) DEFAULT NULL,
  `money_recieved` int(11) DEFAULT '0',
  `picture` varchar(30) DEFAULT NULL,
  `acceptor_contact` varchar(12) NOT NULL,
  PRIMARY KEY (`problem_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `monetary_donation`
--

INSERT INTO `monetary_donation` (`problem_id`, `problem_name`, `problem_description`, `money_required`, `money_recieved`, `picture`, `acceptor_contact`) VALUES
(12, 'treatment', 'jdfhsjfh sdjfhj sdjfh sdjfhsj', 20000, 12000, '1.jpg', '0321-0987654'),
(13, 'adgshdgahg', 'jdsfhjhsdfjshdsjf', 23400, 12000, '2.jpg', '0321-0987654'),
(14, 'treatment_2', 'sdfksdjfksdjfk', 23000, 0, '4.jpg', '0321-0987654'),
(15, 'help earthquake affectee', 'need money to help people affected by earthquake', 50000, 2200, '12.jpg', '0321-0987654'),
(16, 'transplant', 'abc need money jgdjfhg dgfgh gidf gdgfd ', 2300, 0, '6.jpg', '0333-9786541'),
(17, 'qqqqqqqq', 'nnnnnnnnnnn czx zxc fe ret ret ert', 90000, 0, '15.jpg', '0333-9786541'),
(18, 'qwert', 'dfgkdj dfgjhd dfjghd dfjghd dfjghd dfgjh', 7000, 0, '7.jpg', '0333-9786541'),
(19, 'qwerty', 'dshfjshd sdjghfdj dfjghd idgfhjg fdkhjgfn kdfhj ', 4500, 0, '11.jpg', '0333-9786541'),
(20, 'asfsf', 'sdhf sdfh sdjf fs fs fds af fhgf hgjgh', 734, 0, '3.jpg', '0333-9786541'),
(26, 'm34', '', 345, 120, '19.jpg', '0344-4561234'),
(28, 'h4', 'djfhj sdhfj shfj shfj ', 90, 0, 'images.jpg', '0344-4561234'),
(29, 'h4', 'djfhj sdhfj shfj shfj ', 90, 0, 'images.jpg', '0344-4561234'),
(30, 'jhj', 'dfkgj fkdgj kfjgk fghjd					', 234, 0, '17.JPG', '0344-4561234');

-- --------------------------------------------------------

--
-- Table structure for table `mr_users`
--

CREATE TABLE IF NOT EXISTS `mr_users` (
  `idmr_users` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `role` int(11) NOT NULL,
  PRIMARY KEY (`idmr_users`),
  KEY `userid_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `registered_modules`
--

CREATE TABLE IF NOT EXISTS `registered_modules` (
  `id_registered_modules` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `module_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id_registered_modules`),
  KEY `users_idx` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `registered_modules`
--

INSERT INTO `registered_modules` (`id_registered_modules`, `user_id`, `module_id`) VALUES
(1, 19, './school_management'),
(2, 19, './drixel'),
(3, 19, './academic_scholorships'),
(4, 19, './donations'),
(5, 19, './d2quiz'),
(6, 19, './ngos'),
(7, 19, './problem_sharing'),
(8, 21, './d2quiz'),
(10, 21, './donations'),
(11, 21, './school_management'),
(12, 22, './school_renovation'),
(13, 23, './donations');

-- --------------------------------------------------------

--
-- Table structure for table `sr_users`
--

CREATE TABLE IF NOT EXISTS `sr_users` (
  `idsr_users` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_role` varchar(45) NOT NULL DEFAULT 'student',
  PRIMARY KEY (`idsr_users`),
  KEY `userid_idx` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `sr_users`
--

INSERT INTO `sr_users` (`idsr_users`, `user_id`, `user_role`) VALUES
(1, 19, 'student'),
(2, 20, 'student'),
(3, 21, 'student'),
(4, 22, 'student'),
(5, 23, 'student');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `username`, `firstname`, `lastname`, `email`, `password`, `role`) VALUES
(19, 'admin11', 'Mickey', 'Mouse', '13beseuhussain@seecs.edu.pk', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1),
(20, '77', 'Mickey', 'Mouse', 'ab@q', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(21, '2345', 'test', 'check', 'abc@kg.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(22, '13beseuhussain', '1234', 'asd', 'sk@q', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(23, 'aaabbb', 'aaa', 'bbb', 'a@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0);

-- --------------------------------------------------------

--
-- Table structure for table `visitor_comment`
--

CREATE TABLE IF NOT EXISTS `visitor_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `visitor_name` varchar(30) NOT NULL,
  `visitor_email` varchar(30) NOT NULL,
  `visitor_subject` varchar(55) DEFAULT NULL,
  `visitor_message` varchar(400) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `visitor_comment`
--

INSERT INTO `visitor_comment` (`comment_id`, `visitor_name`, `visitor_email`, `visitor_subject`, `visitor_message`) VALUES
(1, 'maria', 'maria@yahoo.com', 'aaaa', 'this is a message\r\n'),
(2, 'maria', 'maria@yahoo.com', 'hghghghgh', 'qwertyuiop sdbnm, fghjkl dfghjk'),
(3, 'maria', 'maria@yahoo.com', 'hghghghgh', 'poiuytrewq ghjk iuy gfd poiuytrewq ghjk iuy gfd poiuytrewq ghjk iuy gfd poiuytrewq ghjk iuy gfd poiuytrewq ghjk iuy gfd poiuytrewq ghjk iuy gfd '),
(8, 'sumera', 'sumera@gmail.com', 'kjkjk', 'rerererer');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `am_users`
--
ALTER TABLE `am_users`
  ADD CONSTRAINT `id` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `an_users`
--
ALTER TABLE `an_users`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cw_users`
--
ALTER TABLE `cw_users`
  ADD CONSTRAINT `p_user` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `hw_users`
--
ALTER TABLE `hw_users`
  ADD CONSTRAINT `user_id_hw_users` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `metirial_donation_acceptor`
--
ALTER TABLE `metirial_donation_acceptor`
  ADD CONSTRAINT `metirial_donation_acceptor_ibfk_1` FOREIGN KEY (`user_first_name`, `user_last_name`, `user_email`) REFERENCES `mh_user_data` (`user_first_name`, `user_last_name`, `user_email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `metirial_donation_user`
--
ALTER TABLE `metirial_donation_user`
  ADD CONSTRAINT `metirial_donation_user_ibfk_1` FOREIGN KEY (`user_first_name`, `user_last_name`, `user_email`) REFERENCES `mh_user_data` (`user_first_name`, `user_last_name`, `user_email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mh_users`
--
ALTER TABLE `mh_users`
  ADD CONSTRAINT `userlnk` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `mm_users`
--
ALTER TABLE `mm_users`
  ADD CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mr_users`
--
ALTER TABLE `mr_users`
  ADD CONSTRAINT `userid` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `registered_modules`
--
ALTER TABLE `registered_modules`
  ADD CONSTRAINT `users` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `sr_users`
--
ALTER TABLE `sr_users`
  ADD CONSTRAINT `sr_userid` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
