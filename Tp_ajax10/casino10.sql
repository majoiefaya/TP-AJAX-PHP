-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 28 mai 2022 à 15:37
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `casino2`
--

-- --------------------------------------------------------

--
-- Structure de la table `tentative`
--

CREATE TABLE `tentative` (
  `id` int(11) NOT NULL,
  `nom_joueur` varchar(255) NOT NULL,
  `niveau` varchar(255) NOT NULL,
  `mise` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `gain` int(11) NOT NULL,
  `dateJeux` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tentative`
--

INSERT INTO `tentative` (`id`, `nom_joueur`, `niveau`, `mise`, `numero`, `gain`, `dateJeux`) VALUES
(1, 'FAYA', 'Facile', 8000, 66, 4000, '28-05-22 03:24:06'),
(2, 'FAYA', 'Facile', 8000, 73, 4000, '28-05-22 03:24:51'),
(3, 'FAYA', 'Facile', 8000, 3, 0, '28-05-22 03:31:30'),
(4, 'FAYA', 'Facile', 8000, 40, 0, '28-05-22 03:31:36'),
(5, 'FAYA', 'Facile', 8000, 24, 0, '28-05-22 03:31:40'),
(6, 'FAYA', 'Facile', 9, 95, 9, '28-05-22 03:31:49'),
(7, 'FAYA', 'Facile', 9000, 52, 4500, '28-05-22 03:35:43');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tentative`
--
ALTER TABLE `tentative`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tentative`
--
ALTER TABLE `tentative`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
