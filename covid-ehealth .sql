-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 23 jan. 2021 à 11:19
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `covid-ehealth`
--

-- --------------------------------------------------------

--
-- Structure de la table `affectation`
--

CREATE TABLE `affectation` (
  `idAffect` int(11) NOT NULL,
  `NFS` int(11) NOT NULL,
  `CRP` int(11) NOT NULL,
  `LDH` int(11) NOT NULL,
  `TestPCR` tinyint(1) NOT NULL,
  `TDM` blob NOT NULL,
  `pourcentageAtteinte` int(11) NOT NULL,
  `typeAffect` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `affectation`
--

INSERT INTO `affectation` (`idAffect`, `NFS`, `CRP`, `LDH`, `TestPCR`, `TDM`, `pourcentageAtteinte`, `typeAffect`) VALUES
(2, 30, 12, 67, 1, 0x736571206469616720636f7669642e706e67, 76, 'reanimation'),
(4, 30, 45, 65, 1, 0x736571206469616720636f7669642e706e67, 56, 'isolement'),
(5, 23, 45, 65, 1, 0x736571206469616720636f7669642e706e67, 56, 'isolement');

-- --------------------------------------------------------

--
-- Structure de la table `gravite`
--

CREATE TABLE `gravite` (
  `numGravite` int(11) NOT NULL,
  `temperature` int(11) NOT NULL,
  `saturation` int(11) NOT NULL,
  `stabilite` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `gravite`
--

INSERT INTO `gravite` (`numGravite`, `temperature`, `saturation`, `stabilite`) VALUES
(1, 39, 89, 'instable'),
(1, 37, 99, 'stable'),
(2, 39, 92, 'instable'),
(4, 39, 92, 'instable'),
(5, 39, 89, 'instable'),
(5, 37, 94, 'stable');

-- --------------------------------------------------------

--
-- Structure de la table `hopital`
--

CREATE TABLE `hopital` (
  `idHopital` int(11) NOT NULL,
  `nomHopital` varchar(50) NOT NULL,
  `numChambre` int(11) NOT NULL,
  `typeChambre` varchar(50) NOT NULL,
  `statut` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `hopital`
--

INSERT INTO `hopital` (`idHopital`, `nomHopital`, `numChambre`, `typeChambre`, `statut`) VALUES
(1, 'EMI', 0, 'reanimation', 1),
(1, 'EMI', 1, 'reanimation', 1),
(1, 'EMI', 2, 'reanimation', 0),
(1, 'EMI', 3, 'reanimation', 0),
(1, 'EMI', 4, 'reanimation', 0),
(1, 'EMI', 5, 'isolement', 1),
(1, 'EMI', 6, 'isolement', 0),
(1, 'EMI', 7, 'isolement', 0),
(1, 'EMI', 8, 'isolement', 0),
(1, 'EMI', 9, 'isolement', 0);

-- --------------------------------------------------------

--
-- Structure de la table `identification`
--

CREATE TABLE `identification` (
  `NumId` int(11) NOT NULL,
  `sym_fievre` tinyint(1) NOT NULL,
  `sym_diarhee` tinyint(1) NOT NULL,
  `sym_anosmie` tinyint(1) NOT NULL,
  `sym_cephalee` tinyint(1) NOT NULL,
  `sym_mauxGorge` tinyint(1) NOT NULL,
  `sym_etatGrip` varchar(50) NOT NULL,
  `ant_diabete` tinyint(1) NOT NULL,
  `ant_hypertArter` tinyint(1) NOT NULL,
  `ant_accCereb` tinyint(1) NOT NULL,
  `ant_pneumo` int(11) NOT NULL,
  `checkMedecin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `identification`
--

INSERT INTO `identification` (`NumId`, `sym_fievre`, `sym_diarhee`, `sym_anosmie`, `sym_cephalee`, `sym_mauxGorge`, `sym_etatGrip`, `ant_diabete`, `ant_hypertArter`, `ant_accCereb`, `ant_pneumo`, `checkMedecin`) VALUES
(1, 1, 1, 1, 1, 1, 'des myalgies', 0, 0, 1, 1, 1),
(2, 1, 1, 1, 1, 1, 'Toux sèche', 0, 1, 1, 1, 1),
(3, 0, 1, 0, 1, 0, 'des myalgies', 0, 0, 1, 0, 1),
(4, 1, 0, 1, 0, 1, 'Toux sèche', 0, 0, 1, 1, 0),
(5, 1, 0, 1, 0, 1, 'des myalgies', 0, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `ID` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `nationalite` varchar(50) NOT NULL,
  `CNI` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `dateInscription` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`ID`, `nom`, `prenom`, `telephone`, `nationalite`, `CNI`, `date_naissance`, `email`, `dateInscription`) VALUES
(1, 'abouelfadl', 'jamal', '066543345_', 'marocain', 'B90649869', '2011-03-21', 'jamal@gmail.com', '2021-01-21'),
(2, 'khaoula', 'abouelfadl', '755437', 'marocaine', 'B90649869', '2011-11-21', 'khaoula@gmail.com', '2021-01-21'),
(3, 'abouelfadl', 'halima', '8696758707', 'marocaine', 'y1325', '2009-03-21', 'khaoula@gmail.com', '2021-01-21'),
(4, 'abouelfadl', 'akram', '755437', 'marocain', '89798', '2013-07-21', 'ahmed@example.com', '2021-01-21'),
(5, 'gout', 'sara', '755437', 'marocaine', '89798', '2013-07-21', 'sara@example.com', '2021-01-21');

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `IdPer` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fonction` varchar(50) NOT NULL,
  `service` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`IdPer`, `nom`, `prenom`, `email`, `fonction`, `service`, `pwd`) VALUES
(3, 'khaoula', 'khaoula', 'khaoula@gmail.com', 'Medecin', '', '123456'),
(5, 'ahmed', 'ahmed', 'ahmed@gmail.com', 'Infirmier', '', '0123'),
(7, 'ali', 'ali', 'ali@yahoo.com', 'Allo 2022', '', '123456789'),
(9, 'dahman', 'souad', 'souad@gmail.com', 'Agent', '', 'abcdef');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD PRIMARY KEY (`idAffect`);

--
-- Index pour la table `hopital`
--
ALTER TABLE `hopital`
  ADD PRIMARY KEY (`numChambre`);

--
-- Index pour la table `identification`
--
ALTER TABLE `identification`
  ADD PRIMARY KEY (`NumId`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`IdPer`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `affectation`
--
ALTER TABLE `affectation`
  MODIFY `idAffect` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `patient`
--
ALTER TABLE `patient`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `IdPer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
