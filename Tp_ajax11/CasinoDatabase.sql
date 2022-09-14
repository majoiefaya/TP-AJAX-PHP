-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 28 mai 2022 à 14:22
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
-- Base de données : `casino`
--

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE `joueur` (
  `id_joueur` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `solde` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `joueur`
--

INSERT INTO `joueur` (`id_joueur`, `nom`, `prenom`, `solde`, `email`, `password`) VALUES
(7, 'prenom', 'o', 700000000, 'majoie', '$password'),
(8, 'FAYA', 'LIDAO', 37010, 'majoiefaya96@gmail.com', 'Majoie17@');

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE `niveau` (
  `id_niveau` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`id_niveau`, `libelle`, `code`) VALUES
(1, 'Facile', 1),
(2, 'Moyen', 2),
(3, 'Difficile', 3);

-- --------------------------------------------------------

--
-- Structure de la table `regles`
--

CREATE TABLE `regles` (
  `id_regle` int(11) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `id_niveau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `regles`
--

INSERT INTO `regles` (`id_regle`, `Description`, `id_niveau`) VALUES
(1, 'Ce Niveau Tire un Nombre de 0,100 \r\nSi le Nombre Tire est Inferieur a 5O le joueur Perd La Mise\r\nde 50 a 75 il gagne la moitié\r\nde 75 a 100 il gagne Toute La Mise', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tentative`
--

CREATE TABLE `tentative` (
  `id` int(11) NOT NULL,
  `id_joueur` int(11) NOT NULL,
  `id_niveau` int(11) NOT NULL,
  `mise` int(11) NOT NULL,
  `NumeroTire` int(11) NOT NULL,
  `gain` int(11) NOT NULL,
  `DateTentative` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tentative`
--

INSERT INTO `tentative` (`id`, `id_joueur`, `id_niveau`, `mise`, `NumeroTire`, `gain`, `DateTentative`) VALUES
(85, 7, 1, 8000, 68, 4000, '28-05-22 12:18:02'),
(86, 7, 1, 8000, 63, 4000, '28-05-22 12:18:26'),
(87, 7, 1, 8000, 77, 8000, '28-05-22 12:19:55'),
(88, 7, 1, 8000, 32, 0, '28-05-22 12:25:30'),
(89, 7, 1, 8000, 21, 0, '28-05-22 12:26:41'),
(90, 7, 1, 8000, 91, 8000, '28-05-22 12:36:18'),
(91, 7, 1, 8000, 54, 4000, '28-05-22 12:36:57'),
(92, 7, 2, 8000, 306, 4000, '28-05-22 12:37:24'),
(93, 7, 1, 8000, 79, 8000, '28-05-22 12:39:21'),
(94, 7, 1, 8000, 11, 0, '28-05-22 12:41:26'),
(95, 7, 1, 8000, 80, 8000, '28-05-22 12:42:20'),
(96, 7, 1, 8000, 45, 0, '28-05-22 01:06:51'),
(97, 7, 1, 8000, 18, 0, '28-05-22 01:08:11'),
(98, 7, 1, 8000, 44, 0, '28-05-22 01:13:43'),
(99, 7, 1, 8000, 48, 0, '28-05-22 01:20:48'),
(100, 7, 1, 8000, 90, 8000, '28-05-22 01:22:33'),
(101, 7, 1, 8000, 48, 0, '28-05-22 01:27:18'),
(102, 7, 1, 8000, 39, 0, '28-05-22 01:30:08'),
(103, 7, 1, 8000, 77, 8000, '28-05-22 01:36:33'),
(104, 7, 1, 8000, 33, 0, '28-05-22 01:38:21'),
(105, 8, 1, 8000, 67, 4000, '28-05-22 02:04:32'),
(106, 8, 1, 8000, 47, 0, '28-05-22 02:06:18'),
(107, 8, 1, 8000, 97, 8000, '28-05-22 02:10:03'),
(108, 8, 1, 8000, 86, 8000, '28-05-22 02:14:55'),
(109, 8, 1, 8000, 60, 4000, '28-05-22 02:15:39'),
(110, 8, 1, 20, 66, 10, '28-05-22 02:17:55');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`id_joueur`);

--
-- Index pour la table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`id_niveau`);

--
-- Index pour la table `regles`
--
ALTER TABLE `regles`
  ADD PRIMARY KEY (`id_regle`),
  ADD KEY `FK_id_niveauRegle` (`id_niveau`);

--
-- Index pour la table `tentative`
--
ALTER TABLE `tentative`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_joueur` (`id_joueur`),
  ADD KEY `FK_id_niveauTenta` (`id_niveau`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `joueur`
--
ALTER TABLE `joueur`
  MODIFY `id_joueur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `niveau`
--
ALTER TABLE `niveau`
  MODIFY `id_niveau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `regles`
--
ALTER TABLE `regles`
  MODIFY `id_regle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tentative`
--
ALTER TABLE `tentative`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `regles`
--
ALTER TABLE `regles`
  ADD CONSTRAINT `FK_id_niveauRegle` FOREIGN KEY (`id_niveau`) REFERENCES `niveau` (`id_niveau`);

--
-- Contraintes pour la table `tentative`
--
ALTER TABLE `tentative`
  ADD CONSTRAINT `FK_id_joueur` FOREIGN KEY (`id_joueur`) REFERENCES `joueur` (`id_joueur`),
  ADD CONSTRAINT `FK_id_niveauTenta` FOREIGN KEY (`id_niveau`) REFERENCES `niveau` (`id_niveau`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
