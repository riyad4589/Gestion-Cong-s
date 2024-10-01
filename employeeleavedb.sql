-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 25 sep. 2024 à 23:50
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `employeeleavedb`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `fullname`, `email`, `updationDate`) VALUES
(4, 'Admin', '202cb962ac59075b964b07152d234b70', 'admin', 'admin1@gmail.com', '2024-09-24 20:30:25');

-- --------------------------------------------------------

--
-- Structure de la table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(9, 'Ressources Humaines', 'RH', 'RH101', '2024-09-24 20:20:32'),
(10, 'Finance et Comptabilité', 'FC', 'FC102', '2024-09-24 20:20:43'),
(11, 'Marketing ', 'MA', 'MA103', '2024-09-24 20:20:51'),
(12, 'Informatique ', 'IT', 'IT104', '2024-09-24 20:21:01'),
(13, 'Recherche et Développement', 'R&D', 'RD105', '2024-09-24 20:21:17'),
(14, 'Service Client', 'SC', 'SC106', '2024-09-24 20:21:30'),
(15, 'Juridique ', 'JR', 'JR107', '2024-09-24 20:21:42'),
(16, 'Direction Générale', 'DG', 'DG108', '2024-09-24 20:22:00');

-- --------------------------------------------------------

--
-- Structure de la table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(9, '0701', 'Mohamed Riyad', 'Majghirou', 'riyadmaj10@gmail.com', '202cb962ac59075b964b07152d234b70', 'Male', '2002-11-30', 'Information Technology', 'Rabat', 'Rabat', 'Maroc', '0652535301', 1, '2024-09-09 12:00:08'),
(10, '111', 'Nourhane ', 'Elamnsoury', 'nourhane1100@gmail.com', '202cb962ac59075b964b07152d234b70', 'Female', '2005-10-30', 'Finance', 'Rabat', 'Rabat', 'Maroc', '0610457803', 1, '2024-09-16 22:42:42'),
(11, '2', 'Riyad', 'Nassim', 'riyadnassim@gmail.com', '202cb962ac59075b964b07152d234b70', 'Male', '2024-07-10', 'Direction Générale', 'Rabat', 'Rabat', 'Maroc', '0614253658', 1, '2024-09-25 18:26:41'),
(12, '5', 'Radia', 'Eljouhari', 'radia@gmail.com', '202cb962ac59075b964b07152d234b70', 'Female', '2024-09-07', 'Marketing ', 'Ifran', 'Ifran', 'Maroc', '0612974532', 1, '2024-09-25 18:27:38'),
(13, '26', 'Aya', 'Ibrahimi', 'aya@gmail.com', '202cb962ac59075b964b07152d234b70', 'Female', '2024-09-17', 'Recherche et Développement', 'Rabat', 'Rabat', 'Maroc', '0631094620', 1, '2024-09-25 18:28:35');

-- --------------------------------------------------------

--
-- Structure de la table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(23, 'Congé Médical', '2024-08-10', '2024-08-17', '', '2024-09-25 18:33:30', NULL, NULL, 0, 0, 9),
(24, 'Congé Occasionnel', '2024-08-07', '2024-08-23', '', '2024-09-25 18:34:31', '.', '2024-09-26 0:07:51 ', 2, 1, 13),
(25, 'Jour Férié Restreint', '2024-09-22', '2024-09-24', '', '2024-09-25 18:36:05', 'Done', '2024-09-26 0:07:31 ', 1, 1, 11);

-- --------------------------------------------------------

--
-- Structure de la table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(14, 'Congé Occasionnel', 'Accordé pour des affaires urgentes ou imprévues aux employés.', '2024-09-24 20:27:05'),
(15, 'Congé Médical', 'Relatif aux problèmes de santé de l\'employé.', '2024-09-24 20:27:48'),
(16, 'Jour Férié Restreint', 'Jour férié optionnel', '2024-09-24 20:27:57'),
(17, 'Congé de Paternité', 'Pour s\'occuper des nouveau-nés', '2024-09-24 20:28:06'),
(18, 'Congé Compensatoire', 'Pour les travailleurs ayant fait des heures supplémentaires', '2024-09-24 20:29:15'),
(19, 'Congé de Maternité', 'Pour s\'occuper des nouveau-nés et de la récupération après l\'accouchement', '2024-09-24 20:29:23');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Index pour la table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
