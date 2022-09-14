-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 28 mai 2022 à 00:14
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
  `prenom` varchar(255) NOT NULL,
  `solde` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `joueur`
--

INSERT INTO `joueur` (`id_joueur`, `nom`, `prenom`, `solde`) VALUES
(1, 'FAYA', 'Lidao', 25000);

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
(3, 1, 1, 900, 4, 5, '17/Juin/2003'),
(4, 1, 1, 900, 4, 5, '27-05-22 12:49:19'),
(5, 1, 1, 8000, 38, 0, '27-05-22 12:51:28'),
(6, 1, 2, 8000, 463, 8000, '27-05-22 12:55:26'),
(7, 1, 1, 8000, 52, 4000, '27-05-22 01:20:42'),
(8, 1, 1, 8000, 55, 4000, '27-05-22 01:52:02'),
(9, 1, 1, 8000, 89, 8000, '27-05-22 02:29:01'),
(10, 1, 1, 8000, 52, 4000, '27-05-22 02:32:26'),
(11, 1, 2, 8000, 218, 0, '27-05-22 02:47:02'),
(12, 1, 1, 8000, 94, 8000, '27-05-22 02:47:21'),
(13, 1, 1, 8000, 47, 0, '27-05-22 04:26:33'),
(14, 1, 1, 8000, 67, 4000, '27-05-22 05:26:07'),
(15, 1, 1, 8000, 30, 0, '27-05-22 05:39:28'),
(16, 1, 1, 8000, 33, 0, '27-05-22 08:18:39'),
(17, 1, 2, 8000, 323, 4000, '27-05-22 08:34:14'),
(18, 1, 2, 8000, 145, 0, '27-05-22 08:35:45'),
(19, 1, 1, 8000, 62, 4000, '27-05-22 09:05:52'),
(20, 1, 1, 8000, 31, 0, '27-05-22 09:06:26'),
(21, 1, 1, 8000, 12, 0, '27-05-22 09:59:22'),
(22, 1, 1, 8000, 41, 0, '27-05-22 10:00:26'),
(23, 1, 1, 8000, 67, 4000, '27-05-22 10:04:45'),
(24, 1, 1, 8000, 46, 0, '27-05-22 10:05:33'),
(25, 1, 1, 8000, 5, 0, '27-05-22 10:07:48'),
(26, 1, 1, 8000, 79, 8000, '27-05-22 10:09:24'),
(27, 1, 1, 8000, 82, 8000, '27-05-22 10:13:27'),
(28, 1, 1, 8000, 22, 0, '27-05-22 10:53:38'),
(29, 1, 1, 8000, 30, 0, '27-05-22 10:53:55'),
(30, 1, 1, 8000, 8, 0, '27-05-22 10:53:59'),
(31, 1, 1, 8000, 90, 8000, '27-05-22 10:54:41'),
(32, 1, 1, 8000, 2, 0, '27-05-22 10:56:57'),
(33, 1, 1, 8000, 16, 0, '27-05-22 10:57:07'),
(34, 1, 1, 8000, 68, 4000, '27-05-22 10:57:11'),
(35, 1, 1, 8000, 23, 0, '27-05-22 11:02:08'),
(36, 1, 1, 8000, 11, 0, '27-05-22 11:02:47'),
(37, 1, 1, 8000, 17, 0, '27-05-22 11:02:51'),
(38, 1, 1, 8000, 59, 4000, '27-05-22 11:04:21'),
(39, 1, 2, 8000, 74, 0, '27-05-22 11:04:34'),
(40, 1, 2, 8000, 179, 0, '27-05-22 11:04:41'),
(41, 1, 2, 8000, 272, 4000, '27-05-22 11:04:50'),
(42, 1, 2, 8000, 140, 0, '27-05-22 11:04:58'),
(43, 1, 2, 8000, 435, 8000, '27-05-22 11:05:02'),
(44, 1, 1, 8000, 20, 0, '27-05-22 11:27:10'),
(45, 1, 1, 8000, 59, 4000, '27-05-22 11:32:03'),
(46, 1, 1, 8000, 94, 8000, '27-05-22 11:33:09'),
(47, 1, 1, 8000, 76, 8000, '27-05-22 11:35:29'),
(48, 1, 1, 8000, 40, 0, '27-05-22 11:38:33'),
(49, 1, 1, 8000, 37, 0, '27-05-22 11:40:48'),
(50, 1, 1, 8000, 30, 0, '27-05-22 11:41:16'),
(51, 1, 1, 8000, 89, 8000, '27-05-22 11:42:37'),
(52, 1, 1, 8000, 74, 4000, '27-05-22 11:44:01'),
(53, 1, 1, 8000, 92, 8000, '27-05-22 11:45:15'),
(54, 1, 1, 8000, 63, 4000, '27-05-22 11:46:17'),
(55, 1, 1, 8000, 69, 4000, '27-05-22 11:46:59'),
(56, 1, 1, 8000, 21, 0, '27-05-22 11:49:38'),
(57, 1, 1, 8000, 12, 0, '27-05-22 11:50:37'),
(58, 1, 1, 8000, 20, 0, '27-05-22 11:54:14'),
(59, 1, 1, 8000, 65, 4000, '27-05-22 11:55:57'),
(60, 1, 1, 8000, 18, 0, '27-05-22 11:58:07'),
(61, 1, 1, 8000, 66, 4000, '28-05-22 12:00:11'),
(62, 1, 1, 8000, 91, 8000, '28-05-22 12:01:19'),
(63, 1, 1, 8000, 52, 4000, '28-05-22 12:02:15'),
(64, 1, 1, 8000, 41, 0, '28-05-22 12:03:53'),
(65, 1, 1, 8000, 57, 4000, '28-05-22 12:04:31'),
(66, 1, 1, 8000, 36, 0, '28-05-22 12:04:35'),
(67, 1, 1, 8000, 76, 8000, '28-05-22 12:05:22'),
(68, 1, 1, 8000, 37, 0, '28-05-22 12:05:26'),
(69, 1, 1, 8000, 48, 0, '28-05-22 12:06:23'),
(70, 1, 1, 8000, 9, 0, '28-05-22 12:10:56'),
(71, 1, 1, 8000, 66, 4000, '28-05-22 12:11:08'),
(72, 1, 1, 8000, 97, 8000, '28-05-22 12:11:15');

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
  MODIFY `id_joueur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

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
