-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 21 avr. 2021 à 11:54
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `chachnaq`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `idAdmin` int(11) NOT NULL AUTO_INCREMENT,
  `nomAdmin` varchar(30) NOT NULL,
  `motDePasse` varchar(30) NOT NULL,
  PRIMARY KEY (`idAdmin`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`idAdmin`, `nomAdmin`, `motDePasse`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `idCategorie` int(11) NOT NULL AUTO_INCREMENT,
  `nomCategorie` varchar(30) NOT NULL,
  `nbrProduit` int(100) NOT NULL,
  PRIMARY KEY (`idCategorie`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `idclient` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `Dnaiss` varchar(10) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`idclient`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`idclient`, `nom`, `prenom`, `Dnaiss`, `telephone`, `mail`, `password`) VALUES
(42, 'ok', 'sfo', '2003-01-01', '1234567890', 'boukhai@gmail.com', '123'),
(41, 'sdfsggsg', 'sfgsgg', '2003-01-01', '1234567890', 'boukhai@gmail.com', '123'),
(40, 'sdfsggsg', 'sfgsgg', '2003-01-01', '1234567890', 'boukhai@gmail.com', '123'),
(39, 'vogue', 'qs', '2003-01-01', '1234567890', 'oukhari@gmail.com', '123'),
(38, 'vogue', 'qs', '2003-01-01', '1234567890', 'oukhari@gmail.com', '123'),
(37, 'teste', 'final', '2000-11-07', '0559627327', 'rb73103@gmail.com', '1234'),
(36, 'teste', 'final', '2000-11-07', '0559627327', 'rb73103@gmail.com', '1234'),
(35, 'teste', 'final', '2000-11-07', '0559627327', 'rb73103@gmail.com', '1234'),
(34, 'vogue', 'qs', '2003-01-01', '1234567890', 'test@gmail.com', '123'),
(33, 'vogue', 'qs', '2003-01-01', '1234567890', 'test@gmail.com', '123'),
(43, 'ok', 'sfo', '2003-01-01', '1234567890', 'boukhai@gmail.com', '123'),
(44, 'ahmed', 'maloum', '2003-01-01', '1234567890', 'boukhai@gmail.com', '123');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `idproduit` int(11) NOT NULL AUTO_INCREMENT,
  `nomProduit` varchar(30) NOT NULL,
  `Categorie` varchar(30) NOT NULL,
  `prix` int(10) NOT NULL,
  PRIMARY KEY (`idproduit`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
