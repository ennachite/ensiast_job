-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2022 at 07:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ensiast_job`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidacy`
--

DROP TABLE IF EXISTS `candidacy`;
CREATE TABLE IF NOT EXISTS `candidacy` (
                                           `candidacy_id` int(11) NOT NULL AUTO_INCREMENT,
                                           `student_id` int(11) NOT NULL,
                                           `offer_id` int(11) NOT NULL,
                                           `status` varchar(32) NOT NULL,
                                           `CV` varchar(64) DEFAULT NULL,
                                           `github_username` varchar(64) DEFAULT NULL,
                                           `date_candidacy` varchar(32) NOT NULL,
                                           `motivation` text DEFAULT NULL,
                                           PRIMARY KEY (`candidacy_id`),
                                           KEY `student_id` (`student_id`),
                                           KEY `offer_id` (`offer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `candidacy`:
--   `student_id`
--       `student` -> `student_id`
--   `offer_id`
--       `offer` -> `offer_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `certification`
--

DROP TABLE IF EXISTS `certification`;
CREATE TABLE IF NOT EXISTS `certification` (
                                               `certification_id` int(11) NOT NULL AUTO_INCREMENT,
                                               `profile_id` int(11) NOT NULL,
                                               `certification_name` varchar(64) NOT NULL,
                                               `issuing_organization` varchar(64) NOT NULL,
                                               `issue_date` varchar(64) NOT NULL,
                                               `expiration_date` varchar(64) DEFAULT NULL,
                                               `credential_id` varchar(64) DEFAULT NULL,
                                               `credential_url` varchar(64) DEFAULT NULL,
                                               PRIMARY KEY (`certification_id`),
                                               KEY `profile_id` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `certification`:
--   `profile_id`
--       `profile` -> `profile_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
                                         `company_id` int(11) NOT NULL AUTO_INCREMENT,
                                         `member_id` int(11) NOT NULL,
                                         `company_name` varchar(64) NOT NULL,
                                         `ceo_name` varchar(64) DEFAULT NULL,
                                         `company_size` int(5) NOT NULL,
                                         `company_fix` varchar(16) DEFAULT NULL,
                                         `company_tif` varchar(32) NOT NULL,
                                         `founded` int(4) NOT NULL,
                                         `description` text DEFAULT NULL,
                                         PRIMARY KEY (`company_id`),
                                         KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `company`:
--   `member_id`
--       `member` -> `member_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
CREATE TABLE IF NOT EXISTS `education` (
                                           `education_id` int(11) NOT NULL AUTO_INCREMENT,
                                           `profile_id` int(11) NOT NULL,
                                           `school_name` varchar(64) NOT NULL,
                                           `degree` varchar(64) NOT NULL,
                                           `field_studies` varchar(64) NOT NULL,
                                           `start_date` varchar(64) NOT NULL,
                                           `end_date` varchar(64) NOT NULL,
                                           `description` text DEFAULT NULL,
                                           PRIMARY KEY (`education_id`),
                                           KEY `profile_id` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `education`:
--   `profile_id`
--       `profile` -> `profile_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
CREATE TABLE IF NOT EXISTS `experience` (
                                            `experience_id` int(11) NOT NULL AUTO_INCREMENT,
                                            `profile_id` int(11) NOT NULL,
                                            `title` varchar(64) NOT NULL,
                                            `job_type` varchar(64) NOT NULL,
                                            `company_name` varchar(32) NOT NULL,
                                            `location` varchar(64) DEFAULT NULL,
                                            `start_date` varchar(64) NOT NULL,
                                            `end_date` varchar(64) DEFAULT NULL,
                                            `description` text DEFAULT NULL,
                                            PRIMARY KEY (`experience_id`),
                                            KEY `profile_id` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `experience`:
--   `profile_id`
--       `profile` -> `profile_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
                                          `language_id` int(11) NOT NULL AUTO_INCREMENT,
                                          `profile_id` int(11) NOT NULL,
                                          `language_name` varchar(32) NOT NULL,
                                          `level` varchar(32) NOT NULL,
                                          PRIMARY KEY (`language_id`),
                                          KEY `profile_id` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `language`:
--   `profile_id`
--       `profile` -> `profile_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
                                        `member_id` int(11) NOT NULL AUTO_INCREMENT,
                                        `email` varchar(64) NOT NULL,
                                        `password` varchar(64) NOT NULL,
                                        `role` varchar(10) NOT NULL,
                                        `city` varchar(64) DEFAULT NULL,
                                        `picture` varchar(255) DEFAULT NULL,
                                        `inscription_date` varchar(64) NOT NULL,
                                        PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `member`:
--

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

DROP TABLE IF EXISTS `offer`;
CREATE TABLE IF NOT EXISTS `offer` (
                                       `offer_id` int(11) NOT NULL AUTO_INCREMENT,
                                       `company_id` int(11) NOT NULL,
                                       `offer_name` varchar(64) NOT NULL,
                                       `offer_salary` int(6) DEFAULT NULL,
                                       `offer_location` varchar(64) NOT NULL,
                                       `offer_domain` varchar(64) NOT NULL,
                                       `job_type` varchar(64) DEFAULT NULL,
                                       `offer_description` text NOT NULL,
                                       `post_time` varchar(60) NOT NULL,
                                       PRIMARY KEY (`offer_id`),
                                       KEY `company_id` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `offer`:
--   `company_id`
--       `company` -> `company_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE IF NOT EXISTS `profile` (
                                         `profile_id` int(11) NOT NULL AUTO_INCREMENT,
                                         `student_id` int(11) NOT NULL,
                                         `active` varchar(10) NOT NULL,
                                         `summary` text DEFAULT NULL,
                                         PRIMARY KEY (`profile_id`),
                                         KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `profile`:
--   `student_id`
--       `student` -> `student_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
                                         `student_id` int(11) NOT NULL AUTO_INCREMENT,
                                         `member_id` int(11) NOT NULL,
                                         `first_name` varchar(64) NOT NULL,
                                         `last_name` varchar(64) NOT NULL,
                                         `cne` varchar(32) NOT NULL,
                                         `cin` varchar(32) NOT NULL,
                                         `birthdate` varchar(32) NOT NULL,
                                         `gender` varchar(10) NOT NULL,
                                         `specialty` varchar(32) NOT NULL,
                                         `promo` int(4) NOT NULL,
                                         `year_studies` varchar(10) NOT NULL,
                                         `phone` varchar(16) NOT NULL,
                                         PRIMARY KEY (`student_id`),
                                         KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `student`:
--   `member_id`
--       `member` -> `member_id`
--

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidacy`
--
ALTER TABLE `candidacy`
    ADD CONSTRAINT `candidacy_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
    ADD CONSTRAINT `candidacy_ibfk_2` FOREIGN KEY (`offer_id`) REFERENCES `offer` (`offer_id`);

--
-- Constraints for table `certification`
--
ALTER TABLE `certification`
    ADD CONSTRAINT `certification_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`profile_id`);

--
-- Constraints for table `company`
--
ALTER TABLE `company`
    ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

--
-- Constraints for table `education`
--
ALTER TABLE `education`
    ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`profile_id`);

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
    ADD CONSTRAINT `experience_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`profile_id`);

--
-- Constraints for table `language`
--
ALTER TABLE `language`
    ADD CONSTRAINT `language_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`profile_id`);

--
-- Constraints for table `offer`
--
ALTER TABLE `offer`
    ADD CONSTRAINT `offer_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
    ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
    ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
