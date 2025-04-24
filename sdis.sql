-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : jeu. 24 avr. 2025 à 13:28
-- Version du serveur : 11.3.2-MariaDB
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sdis`
--

-- --------------------------------------------------------

--
-- Structure de la table `caserne`
--

DROP TABLE IF EXISTS `caserne`;
CREATE TABLE IF NOT EXISTS `caserne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `caserne`
--

INSERT INTO `caserne` (`id`, `nom`) VALUES
(1, 'Ifs'),
(2, 'Lisieux'),
(3, 'Le Hom'),
(4, 'Caen Folie Couvrechef');

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

DROP TABLE IF EXISTS `fonction`;
CREATE TABLE IF NOT EXISTS `fonction` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`id`, `libelle`) VALUES
(1, 'VSR'),
(2, 'FPT'),
(3, 'équipier incendie');

-- --------------------------------------------------------

--
-- Structure de la table `intervention`
--

DROP TABLE IF EXISTS `intervention`;
CREATE TABLE IF NOT EXISTS `intervention` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `lieu` varchar(50) DEFAULT NULL,
  `date` varchar(99) DEFAULT NULL,
  `heure_appel` varchar(99) DEFAULT NULL,
  `heure_arrivee` varchar(99) DEFAULT NULL,
  `duree` varchar(99) DEFAULT NULL,
  `id_situation` int(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intervention_ibfk_1` (`id_situation`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `intervention`
--

INSERT INTO `intervention` (`id`, `lieu`, `date`, `heure_appel`, `heure_arrivee`, `duree`, `id_situation`) VALUES
(1, 'Caen', '2025-03-04', '18h52', '19h02', '30min', 1),
(2, 'Paris', '2024-09-25', '11h02', '11h12', '45min', 2);

-- --------------------------------------------------------

--
-- Structure de la table `pompier`
--

DROP TABLE IF EXISTS `pompier`;
CREATE TABLE IF NOT EXISTS `pompier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bip` varchar(10) DEFAULT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `caserne_id` int(11) DEFAULT NULL,
  `fonction_id` int(11) NOT NULL,
  `intervention_id` int(11) DEFAULT NULL,
  `situation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pom_caserne` (`caserne_id`),
  KEY `fk_pom_fonction` (`fonction_id`),
  KEY `fk_intervention_id` (`intervention_id`),
  KEY `fk_situation_id` (`situation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `pompier`
--

INSERT INTO `pompier` (`id`, `bip`, `nom`, `prenom`, `caserne_id`, `fonction_id`, `intervention_id`, `situation_id`) VALUES
(1, '1476', 'LEROY', 'Pierrick', 1, 1, 1, 3),
(2, '456', 'MASSON', 'Bastien', 1, 1, 1, 2),
(3, '2345', 'DUVAL', 'Matthias', 4, 1, 2, 2),
(4, '23456', 'MADJI', 'Walid', 4, 1, 2, 1),
(6, '7424', 'CHAUVEL', 'Jules', 1, 1, 1, 2),
(7, '76543', 'CAUVIN', 'Nayah', 1, 1, 2, 1),
(8, '6853', 'TRAORE', 'Sylvain', 3, 1, 1, 2),
(9, '7835', 'BOULEAU', 'Line', 3, 1, 2, 2),
(10, '345678', 'MANCEL', 'Florianne', 2, 2, 1, 1),
(11, '2457', 'PONTIER', 'Claire', 2, 1, 2, 2),
(12, '9876', 'BARON', 'Gwladys', 3, 3, 2, 1),
(13, '3425', 'PASTOR', 'Lucas', 1, 2, 1, 3),
(14, '1353', 'BAREAU', 'Mila', 1, 1, 1, 2),
(15, '9764', 'CHgdgfdgdfgVEL', 'Julegdfdgfs', 1, 2, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `situation`
--

DROP TABLE IF EXISTS `situation`;
CREATE TABLE IF NOT EXISTS `situation` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `type` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `situation`
--

INSERT INTO `situation` (`id`, `type`) VALUES
(1, 'Feu dans un appartement'),
(2, 'Feu de broussailes'),
(3, 'Ascenseur bloqué');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `pompier`
--
ALTER TABLE `pompier`
  ADD CONSTRAINT `fk_intervention_id` FOREIGN KEY (`intervention_id`) REFERENCES `intervention` (`id`),
  ADD CONSTRAINT `fk_pom_caserne` FOREIGN KEY (`caserne_id`) REFERENCES `caserne` (`id`),
  ADD CONSTRAINT `fk_pom_fonction` FOREIGN KEY (`fonction_id`) REFERENCES `fonction` (`id`),
  ADD CONSTRAINT `fk_situation_id` FOREIGN KEY (`situation_id`) REFERENCES `situation` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
