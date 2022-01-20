-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 20 jan. 2022 à 16:05
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ensiast_job`
--
CREATE DATABASE IF NOT EXISTS `ensiast_job` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ensiast_job`;

-- --------------------------------------------------------

--
-- Structure de la table `candidacy`
--

CREATE TABLE IF NOT EXISTS `candidacy` (
  `candidacy_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `status` varchar(32) NOT NULL,
  `CV` varchar(64) NOT NULL,
  `date_candidacy` varchar(32) NOT NULL,
  `motivation` text NOT NULL,
  PRIMARY KEY (`candidacy_id`),
  KEY `student_id` (`student_id`),
  KEY `offer_id` (`offer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `company_name` varchar(64) NOT NULL,
  `ceo_name` varchar(64) DEFAULT NULL,
  `company_size` varchar(64) NOT NULL,
  `company_fix` varchar(16) DEFAULT NULL,
  `company_tif` varchar(32) NOT NULL,
  `founded` int(4) NOT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`company_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `member`
--

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

-- --------------------------------------------------------

--
-- Structure de la table `offer`
--

CREATE TABLE IF NOT EXISTS `offer` (
  `offer_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `offer_name` varchar(64) NOT NULL,
  `offer_type` varchar(16) NOT NULL,
  `offer_salary` int(6) DEFAULT NULL,
  `offer_location` varchar(64) NOT NULL,
  `offer_domain` varchar(64) NOT NULL,
  `job_type` int(64) DEFAULT NULL,
  `offer_description` text NOT NULL,
  PRIMARY KEY (`offer_id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `active` varchar(10) NOT NULL,
  `summary` text DEFAULT NULL,
  PRIMARY KEY (`profile_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

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
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `candidacy`
--
ALTER TABLE `candidacy`
  ADD CONSTRAINT `candidacy_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `candidacy_ibfk_2` FOREIGN KEY (`offer_id`) REFERENCES `offer` (`offer_id`);

--
-- Contraintes pour la table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

--
-- Contraintes pour la table `offer`
--
ALTER TABLE `offer`
  ADD CONSTRAINT `offer_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`);

--
-- Contraintes pour la table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Contraintes pour la table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
