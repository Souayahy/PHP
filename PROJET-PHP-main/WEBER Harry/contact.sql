-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 27 Octobre 2022 à 21:16
-- Version du serveur :  5.6.20-log
-- Version de PHP :  5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `contact`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` varchar(20) NOT NULL,
  `mdp` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id`, `mdp`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `requetes`
--

CREATE TABLE IF NOT EXISTS `requetes` (
`ID` int(14) NOT NULL,
  `Nom` text NOT NULL,
  `Prénom` text NOT NULL,
  `Adresse_Mail` text NOT NULL,
  `Adresse` text NOT NULL,
  `tel` varchar(14) NOT NULL,
  `Msg` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `requetes`
--

INSERT INTO `requetes` (`ID`, `Nom`, `Prénom`, `Adresse_Mail`, `Adresse`, `tel`, `Msg`) VALUES
(1, 'Ben abbes', 'Myriam', 'Besbes@gmail.com', '96 rue Lac Nord, Les Berges du L', '523535', 'aslema'),
(2, 'Ben abbes', 'Myriam', 'Besbes@gmail.com', '96 rue Lac Nord, Les Berges du L', '523535', 'aslema');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `requetes`
--
ALTER TABLE `requetes`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `requetes`
--
ALTER TABLE `requetes`
MODIFY `ID` int(14) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
