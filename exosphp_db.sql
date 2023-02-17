-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 27 jan. 2023 à 15:52
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `exosphp_db`
--
CREATE DATABASE IF NOT EXISTS `exosphp_db`;
USE `exosphp_db`;
-- --------------------------------------------------------

--
-- Structure de la table `loisir`
--

DROP TABLE IF EXISTS `loisir`;
CREATE TABLE IF NOT EXISTS `loisir` (
  `code_loisir` char(3) NOT NULL,
  `lib_loisir` varchar(20) NOT NULL,
  PRIMARY KEY (`code_loisir`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `loisir`
--

INSERT INTO `loisir` (`code_loisir`, `lib_loisir`) VALUES
('ped', 'Pédalo'),
('mus', 'Musique'),
('jeu', 'Jeux de société'),
('des', 'Dessin'),
('pon', 'Poney'),
('ski', 'Ski alpin'),
('ten', 'Tennis');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `num` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL DEFAULT '',
  `prenom` varchar(20) DEFAULT NULL,
  `titre` char(1) DEFAULT NULL,
  `date_n` date DEFAULT NULL,
  `service` varchar(4) NOT NULL DEFAULT '',
  PRIMARY KEY (`num`),
  UNIQUE KEY `num` (`num`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`num`, `nom`, `prenom`, `titre`, `date_n`, `service`) VALUES
(1, 'AMARA', 'Lise', '3', '1985-12-31', 'pers'),
(2, 'FERRADO', 'Adèle', '3', '1978-02-08', 'comm'),
(3, 'TAILLIEZ', 'Anne-Laure', '2', '1938-01-27', 'pers'),
(4, 'BRIGNARD', 'Arnaud', '1', '1978-09-14', 'prod'),
(5, 'ESPOSITO', 'Arsene', '1', '1978-02-07', 'prod'),
(6, 'DETE', 'Audrey', '2', '1958-02-04', 'pers'),
(7, 'DESTRUEL', 'Aurélie', '3', '1977-07-03', 'comm'),
(8, 'FANTHOU', 'Baptiste', '1', '1959-03-22', 'prod'),
(9, 'CLERIOT', 'Camille', '3', '1959-01-21', 'comm'),
(10, 'MISEREY', 'Candice', '2', '1965-02-14', 'pers'),
(11, 'EBINI', 'Marc', '1', '1963-02-06', 'prod'),
(12, 'CHARLET', 'Cédric', '1', '1968-01-19', 'prod'),
(13, 'FONTAO', 'Clément', '1', '1954-02-09', 'prod'),
(14, 'DAGHER', 'David', '1', '1978-07-01', 'prod'),
(15, 'BRUNNER', 'Elise', '3', '1978-08-15', 'comm'),
(16, 'GUENOUN', 'Elodie', '2', '1914-02-12', 'pers'),
(17, 'ALDEBERT', 'Guillaume', '1', '1974-12-28', 'prod'),
(18, 'REGNIER', 'Hélène', '3', '1985-02-15', 'comm'),
(19, 'MAILLARD', 'Isabelle', '2', '1948-11-24', 'pers'),
(20, 'CLARET', 'Jean-Paul', '1', '1988-08-31', 'prod'),
(21, 'LE DUC', 'Jessica', '2', '1979-02-20', 'pers'),
(22, 'DECRUZ', 'Jinane', '2', '1958-02-02', 'pers'),
(23, 'GODIN', 'José', '1', '1978-02-10', 'prod'),
(24, 'CHAMARE', 'Josselin', '1', '1958-01-17', 'prod'),
(25, 'BERGER', 'Julien', '1', '1978-11-30', 'prod'),
(26, 'BERA', 'Lucas', '1', '1978-01-12', 'comm'),
(27, 'BORDAS', 'Marie', '3', '1978-01-13', 'comm'),
(28, 'BRUSCIANO', 'Marie', '3', '1978-07-16', 'comm'),
(29, 'GOVAERT', 'Marion', '3', '1978-01-23', 'comm'),
(30, 'L\'HOTE', 'Mathieu', '1', '1970-11-25', 'pers'),
(31, 'BARBIER', 'Omar', '1', '1978-01-11', 'prod'),
(32, 'CHARBONNEAU', 'Pascale', '2', '1968-01-18', 'pers'),
(33, 'GUILLEAU', 'Pierre', '1', '1925-02-13', 'prod'),
(34, 'POULET', 'Raphaelle', '2', '1971-01-26', 'pers'),
(35, 'GRIMARD', 'Rémi', '1', '1945-02-11', 'prod'),
(36, 'AUTHIA', 'Stéphane', '1', '1978-01-29', 'prod'),
(37, 'DOUR', 'Sylvain', '1', '1998-02-05', 'prod'),
(38, 'YINE', 'Sylvain', '1', '1978-02-16', 'prod');

-- --------------------------------------------------------

--
-- Structure de la table `pratique`
--

DROP TABLE IF EXISTS `pratique`;
CREATE TABLE IF NOT EXISTS `pratique` (
  `num` bigint(20) NOT NULL,
  `code_loisir` char(3) NOT NULL,
  PRIMARY KEY (`num`,`code_loisir`),
  KEY `fk_type_loisir` (`code_loisir`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `code_service` char(4) NOT NULL,
  `lib_service` varchar(20) NOT NULL,
  PRIMARY KEY (`code_service`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`code_service`, `lib_service`) VALUES
('comm', 'Commercial'),
('dvlp', 'Développement'),
('logi', 'Logistique'),
('pers', 'Personnel'),
('dire', 'Direction'),
('prod', 'Productique');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `login` varchar(32) NOT NULL,
  `mot_passe` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
