-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mar 22 Février 2022 à 19:35
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `vv_finance_database`
--

-- --------------------------------------------------------

--
-- Structure de la table `bordereau`
--

CREATE TABLE IF NOT EXISTS `bordereau` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `elemId` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `montant` varchar(255) NOT NULL,
  `solde` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `bordereau`
--

INSERT INTO `bordereau` (`id`, `user_id`, `elemId`, `type`, `desc`, `montant`, `solde`, `date`) VALUES
(1, 1, '6', 'Entrée', 'Recharge provenant des revenus (10000)', '100', '100', '07 16 2021'),
(2, 1, '1', 'Entrée', 'Recharge provenant des revenus (10000)', '200', '200', '07 16 2021'),
(3, 1, 'iv1', 'Entrée', 'Recharge provenant des revenus (10000)', '2000', '2000', '07 16 2021'),
(4, 1, 'dep1', 'Entrée', 'Recharge provenant des revenus (10000)', '2000', '2000', '07 16 2021'),
(5, 1, 'Rep1', 'Entrée', 'Répartition de:<br>- INVESTISSEMENT (2000)<br>- ELEMENTS D''EPARGNES (30000)<br>- DEPENSES IMPREVUES (2000)', '10000', '10000', '07 16 2021'),
(6, 1, '6', 'Entrée', 'Recharge provenant des revenus (10000)', '100', '200', '07 16 2021'),
(7, 1, '1', 'Entrée', 'Recharge provenant des revenus (10000)', '200', '400', '07 16 2021'),
(8, 1, 'iv1', 'Entrée', 'Recharge provenant des revenus (10000)', '2000', '4000', '07 16 2021'),
(9, 1, 'dep1', 'Entrée', 'Recharge provenant des revenus (10000)', '2000', '4000', '07 16 2021'),
(10, 1, 'Rep1', 'Entrée', 'Répartition de:<br>- INVESTISSEMENT (2000)<br>- ELEMENTS D''EPARGNES (30000)<br>- DEPENSES IMPREVUES (2000)', '10000', '20000', '07 16 2021'),
(11, 1, '2', 'Entrée', 'Fond provenant de pipooooo', '750', '750', '16 Jul 2021'),
(12, 1, '2', 'Entrée', 'Recharge provenant de la caisse', '1000', '1750', '16 Jul 2021'),
(13, 1, '1', 'Entrée', 'Recharge provenant de la caisse', '1000', '1400', '16 Jul 2021'),
(14, 1, '1', 'Sortie', 'Vidange du mois de Juillet 2021 => 453km', '1000', '400', '16 Jul 2021'),
(15, 1, 'iv1', 'Sortie', 'J''ai acheté 3 cryptomonnaies', '1000', '3000', '17 Jul 2021'),
(16, 1, 'dep1', 'Sortie', 'Monique imprévu', '500', '3500', '17 Jul 2021'),
(17, 1, 'iv1', 'Entrée', 'Pour ordre: ancien bénéfice d''un service', '500', '3500', '17 Jul 2021'),
(18, 1, '7', 'Entrée', 'Recharge provenant de la caisse', '500', '500', '19 Jul 2021'),
(19, 1, '8', 'Entrée', 'Recharge provenant de la caisse', '900', '900', '19 Jul 2021'),
(20, 1, '10', 'Entrée', 'Recharge provenant de la caisse', '500', '500', '06 Aug 2021');

-- --------------------------------------------------------

--
-- Structure de la table `bordereaup`
--

CREATE TABLE IF NOT EXISTS `bordereaup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `on` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `montant` varchar(255) NOT NULL,
  `solde` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `bordereaup`
--

INSERT INTO `bordereaup` (`id`, `user_id`, `type`, `on`, `desc`, `montant`, `solde`, `date`) VALUES
(1, 1, 'Entree', 'Caisse', 'Recharge de votre caisse', '0', '0', '07-13-2021'),
(2, 1, 'Entrée', '1', 'Recharge de la caisse', '010000', '10000', '07 16 2021'),
(3, 1, 'Sortie', '1', 'Vidange du mois de Juillet 2021 => 453km', '1000', '9000', '16 Jul 2021'),
(4, 1, 'Sortie', 'iv1', 'J''ai acheté 3 cryptomonnaies', '1000', '8000', '17 Jul 2021'),
(5, 1, 'Sortie', 'dep1', 'Monique imprévu', '500', '7500', '17 Jul 2021'),
(6, 1, 'Entrée', '1', 'Recharge de la caisse', '5000', '12500', '17 Jul 2021'),
(7, 1, 'Entrée', 'Caisse', 'Recharge de la caisse provenant de la suppression de Bouffe', '500', '13000', '19 Jul 2021'),
(8, 1, 'Entrée', 'Caisse', 'Recharge de la caisse provenant de la suppression de Vidange', '400', '13400', '19 Jul 2021'),
(9, 8, 'Entrée', 'Caisse', 'Recharge de la caisse provenant de la suppression de Loisir', '900', '14300', '19 Jul 2021'),
(10, 1, 'Entrée', 'Caisse', 'Recharge de la caisse provenant de la suppression de Carburant (essence)', '900', '15200', '06 Aug 2021');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epId` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `catPerc` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `epId`, `nom`, `catPerc`) VALUES
(1, 'ep1', 'Dépenses quotidiennes', '8.04'),
(2, 'ep1', 'Besoins familles', '8.04'),
(3, 'ep1', 'Besoins personnels', '8.04'),
(5, 'ep1', 'Nouvelle catégorie 2', '8.04'),
(6, 'ep1', 'Nouvelle catégorie', '8.04');

-- --------------------------------------------------------

--
-- Structure de la table `elements`
--

CREATE TABLE IF NOT EXISTS `elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `elemPerc` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `daily` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `period` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `elements`
--

INSERT INTO `elements` (`id`, `user_id`, `catId`, `elemPerc`, `nom`, `daily`, `description`, `period`) VALUES
(1, 1, 1, '2.04', 'Vidange', '3000', 'La vidange de la moto et de la voiture', 'mois'),
(7, 1, 4, '5', 'Bouffe', '800', '', 'jour'),
(9, 1, 1, '1', 'Loisir', '200', '', 'semaine'),
(10, 1, 1, '01', 'Carburant (essence)', '0500', '', 'semaine'),
(11, 1, 1, '0.5', 'Vidange', '500', '', 'semaine'),
(12, 1, 1, '0.5', 'Vidange', '0', '', 'jour');

-- --------------------------------------------------------

--
-- Structure de la table `principaux`
--

CREATE TABLE IF NOT EXISTS `principaux` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) NOT NULL,
  `depId` varchar(255) NOT NULL,
  `depPerc` varchar(255) NOT NULL,
  `investId` varchar(255) NOT NULL,
  `investPerc` varchar(255) NOT NULL,
  `epId` varchar(255) NOT NULL,
  `epPerc` varchar(255) NOT NULL,
  `caisse` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `principaux`
--

INSERT INTO `principaux` (`id`, `user_id`, `depId`, `depPerc`, `investId`, `investPerc`, `epId`, `epPerc`, `caisse`) VALUES
(1, 1, 'dep1', '10', 'iv1', '10', 'ep1', '60', '5300');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `timestamp`) VALUES
(1, 'Marcos', 'VITOULEY', 'marcosvitouley@gmail.com', 'azertyuiop', '1626186264');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
