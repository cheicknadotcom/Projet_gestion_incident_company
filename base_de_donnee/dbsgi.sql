-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 19 mai 2022 à 23:22
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `dbsgi`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_etudiants`
--

DROP TABLE IF EXISTS `t_etudiants`;
CREATE TABLE IF NOT EXISTS `t_etudiants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `moyenne` double NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_etudiants`
--

INSERT INTO `t_etudiants` (`id`, `nom`, `prenom`, `moyenne`) VALUES
(1, 'cheickna', 'doumbia', 20),
(2, 'cheickna', 'Doumb', 19);

-- --------------------------------------------------------

--
-- Structure de la table `t_incidents`
--

DROP TABLE IF EXISTS `t_incidents`;
CREATE TABLE IF NOT EXISTS `t_incidents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idRapporteur` int(11) DEFAULT NULL,
  `idDeveloppeur` int(11) DEFAULT NULL,
  `application` text NOT NULL,
  `description` text NOT NULL,
  `gravite` text NOT NULL,
  `dateCreation` text NOT NULL,
  `dateCloture` text DEFAULT NULL,
  `statut` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_incidents`
--

INSERT INTO `t_incidents` (`id`, `idRapporteur`, `idDeveloppeur`, `application`, `description`, `gravite`, `dateCreation`, `dateCloture`, `statut`) VALUES
(2, 0, 0, '', '', '', '', '', 'NOUVEAU'),
(3, 0, 0, '', '', '', '', '', 'NOUVEAU'),
(4, 0, 0, '', '', '', '', '', 'NOUVEAU'),
(5, 0, 0, '', '', '', '', '', 'NOUVEAU'),
(6, 0, 0, '', '', '', '', '', 'NOUVEAU'),
(7, NULL, 0, 'app', 'desc', 'LOW', '2021/07/08 20:42:02', NULL, 'NOUVEAU'),
(8, NULL, 0, 'app', 'desc', 'LOW', '2021/07/08 20:50:39', NULL, 'NOUVEAU'),
(9, NULL, 0, 'app', 'gestion des notes', 'LOW', '2021/07/11 13:36:52', NULL, 'NOUVEAU'),
(10, NULL, 0, 'gestion des personels', 'creation des personnes', 'HIGH', '2021/07/18 00:43:59', NULL, 'NOUVEAU'),
(11, NULL, 45, 'gestion conge', 'envoi des demandes', 'LOW', '2021/07/19 02:32:51', NULL, 'ASSIGNED'),
(12, NULL, 33, 'gestion de  conges', 'envoi des demandes', 'LOW', '2021/07/19 02:53:55', NULL, 'RESOLU'),
(13, 23, 26, 'gestion des carnets', 'creatiion des carnets', 'LOW', '2021/07/19 03:00:25', NULL, 'NOUVEAU'),
(14, 23, 0, 'app', 'ss', 'LOW', '2021/07/21 19:43:10', '2021/08/09 11:24:44', 'CLOSED'),
(15, 23, 0, 'genie logiciel', 'logiciel', 'HIGH', '2021/07/21 22:56:40', '2021/07/28 21:05:49', 'CLOSED'),
(16, 27, 26, 'gestion des personnel', 'creation des personnes', 'CRITICAL', '2021/07/22 03:07:20', NULL, 'ASSIGNED'),
(17, 27, 0, 'gestion des conges', 'envoi des demande', 'HIGH', '2021/07/22 03:46:47', NULL, 'ASSIGNED'),
(18, 27, 26, 'gestion des personnel genie', 'd\'envoi de demande', 'HIGH', '2021/07/22 17:18:13', NULL, 'ASSIGNED'),
(19, 27, 26, 'application des gestions personnels dracoul', 'd\'envoi de demande vers mai', 'HIGH', '2021/07/24 00:05:36', NULL, 'ASSIGNED'),
(20, 27, 41, 'gestion des salle', 'numerotation', 'CRITICAL', '2021/07/25 01:02:33', NULL, 'ASSIGNED'),
(22, 27, 0, 'gestion dra coul', 'mai', 'CRITICAL', '2021/07/28 22:47:04', NULL, 'ASSIGNED'),
(23, 27, 0, 'apps de genie', 'QI 163', 'HIGH', '2021/07/30 22:25:36', '2021/07/30 23:55:27', 'CLOSED'),
(21, 27, 0, 'gestion des personnelle', 'creation de personnel', 'HIGH', '2021/07/25 01:27:15', NULL, 'ASSIGNED'),
(44, 27, 0, 'app', 'gestion des client ', 'LOW', '2022/01/09 13:38:17', NULL, 'NOUVEAU'),
(24, 27, 0, 'gestion des personnel', 'creation des personnel', 'HIGH', '2021/08/01 18:38:45', '2021/08/03 02:55:19', 'CLOSED'),
(25, 32, 0, 'gestion de thiouna', 'elle ne parle plus ', 'HIGH', '2021/08/02 21:11:40', '2021/08/02 21:20:26', 'CLOSED'),
(26, 35, 0, 'gestion examen', 'liste de candidat', 'HIGH', '2021/08/03 18:04:10', '2021/08/03 18:15:47', 'CLOSED'),
(27, 39, 0, 'gestion d\'incident', 'd\'envoye des notes', 'HIGH', '2021/08/05 22:25:44', '2021/08/05 22:38:38', 'CLOSED'),
(28, 39, 0, 'gestion des genies', 'parler avec les genies', 'LOW', '2021/08/05 22:27:46', NULL, 'NOUVEAU'),
(29, 27, 37, 'genie', 'app	', 'LOW', '2021/08/06 11:54:07', NULL, 'ASSIGNED'),
(30, 27, 0, 'gestion des incident', 'notification', 'LOW', '2021/08/07 00:24:25', NULL, 'NOUVEAU'),
(31, 27, 0, 'gestion ', 'magassin', 'LOW', '2021/08/07 00:28:37', NULL, 'NOUVEAU'),
(32, 27, 0, 'ges', 'df', 'LOW', '2021/08/07 00:30:21', NULL, 'NOUVEAU'),
(33, 27, 0, 'app', 'ges', 'LOW', '2021/08/08 02:26:58', NULL, 'NOUVEAU'),
(34, 43, 0, 'gestion-incident', 'integration', 'LOW', '2021/08/08 14:03:47', NULL, 'NOUVEAU'),
(35, 43, 0, 'appgestion', 'supprission des produit', 'LOW', '2021/08/09 02:50:02', NULL, 'ASSIGNED'),
(36, 43, 0, 'gestion des incident ', 'NOTIFICATION', 'HIGH', '2021/08/09 11:05:56', NULL, 'ASSIGNED'),
(37, 46, 0, 'gestion des metier', 'comment gerer', 'HIGH', '2021/08/09 19:12:49', NULL, 'ASSIGNED'),
(38, 46, 0, 'application des gestion des phones', 'files des catalogue', 'LOW', '2021/08/09 19:23:14', '2021/08/09 19:29:21', 'CLOSED'),
(39, 49, 0, 'app-gestion', 'suppression', 'HIGH', '2021/08/14 15:49:29', '2021/08/14 15:56:40', 'CLOSED'),
(40, 27, 0, 'dd', 'dd', 'LOW', '2021/09/07 21:01:20', NULL, 'ASSIGNED'),
(42, 27, 0, 'Gestion de conge', 'probleme d\'envoi des demande', 'CRITICAL', '2021/12/25 22:47:08', '2021/12/25 23:21:54', 'CLOSED'),
(41, 27, 0, 'bien', 'probleme d\'envoi de demande', 'LOW', '2021/09/15 14:36:03', NULL, 'ASSIGNED'),
(43, 27, 0, 'app-gestion-des-Personnel', 'gestion', 'LOW', '2021/12/26 13:00:57', '2022/01/09 14:00:16', 'CLOSED');

-- --------------------------------------------------------

--
-- Structure de la table `t_notes`
--

DROP TABLE IF EXISTS `t_notes`;
CREATE TABLE IF NOT EXISTS `t_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idIncident` int(11) NOT NULL,
  `idCreateur` int(11) NOT NULL,
  `message` text NOT NULL,
  `dateCreation` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_notes`
--

INSERT INTO `t_notes` (`id`, `idIncident`, `idCreateur`, `message`, `dateCreation`) VALUES
(1, 14, 23, 'salut', '2021/07/21 21:20:31'),
(2, 14, 23, 'bien', '2021/07/21 21:26:30'),
(3, 14, 23, 'c\'est pas reparer', '2021/07/21 21:33:15'),
(4, 11, 23, 'salut tout le monde', '2021/07/21 21:36:41'),
(5, 11, 23, 'je demande si le probleme est resolu', '2021/07/21 21:37:10'),
(6, 11, 21, 'pas encore ', '2021/07/21 21:38:32'),
(7, 15, 21, 'bienvenu', '2021/07/21 23:02:21'),
(8, 12, 21, 'errtre', '2021/07/21 23:46:22'),
(9, 15, 21, 'ccvbv', '2021/07/22 02:38:25'),
(10, 16, 27, 'dfgfdg', '2021/07/22 03:41:59'),
(11, 16, 27, 'ffdggdhh', '2021/07/22 03:42:05'),
(12, 16, 27, 'dgfhj', '2021/07/22 03:42:12'),
(13, 11, 27, 'ghfhf', '2021/07/22 04:31:38'),
(14, 11, 27, 'gg', '2021/07/22 04:31:50'),
(15, 17, 27, 'bonjour tout le monde', '2021/07/22 17:05:14'),
(16, 17, 21, 'oui bonjour tu vas bien', '2021/07/22 17:06:13'),
(17, 17, 27, 'mon probleme n\'est pas resolu', '2021/07/22 17:07:13'),
(18, 17, 21, 'pas encore....', '2021/07/22 17:07:47'),
(19, 18, 27, 'INfo sur l\'incident', '2021/07/22 17:23:02'),
(20, 18, 21, 'traitement en cours ....', '2021/07/22 17:23:45'),
(21, 19, 27, 'j\'ai un probleme d\'incident', '2021/07/24 00:07:30'),
(22, 19, 21, 'je viens d\'assiger votre incident a un developpeur dracoul', '2021/07/24 00:12:42'),
(23, 19, 27, 'bien', '2021/07/24 00:13:33'),
(24, 18, 27, 'salut', '2021/07/24 04:18:56'),
(25, 18, 26, 'je crois que le probleme est resolu', '2021/07/25 00:43:41'),
(26, 20, 27, 'Bonjour j\'ai un probleme de numerotation de app', '2021/07/25 01:03:35'),
(27, 20, 21, 'ok', '2021/07/25 01:05:54'),
(28, 20, 26, 'ok cool je vais voir tt de suite', '2021/07/25 01:11:26'),
(29, 21, 27, 'veuillez verifier mon application ça ne fonctionne pas', '2021/07/25 01:28:07'),
(30, 19, 27, 'Bien fait', '2021/07/26 20:39:31'),
(31, 22, 27, 'probleme de rende vous', '2021/07/28 22:48:41'),
(32, 22, 22, 'je viens de voir votre probleme dra coul', '2021/07/28 22:56:38'),
(33, 22, 22, 'hhj', '2021/07/30 20:50:44'),
(34, 23, 21, 'cool donc rapporteur c\'est ton tour', '2021/07/30 23:52:38'),
(35, 23, 27, 'beaut boulot', '2021/07/30 23:54:53'),
(36, 24, 27, 'j\'ai un probleme de creation', '2021/08/01 18:39:56'),
(37, 25, 34, 'je viens d\'assigne ton incident a un developpeur cool', '2021/08/02 21:14:32'),
(38, 25, 33, 'j\'ai terminer vous pouvez pas au test', '2021/08/02 21:19:18'),
(39, 16, 21, 'cheick', '2021/08/03 02:02:22'),
(40, 26, 36, 'je viens d\'assigne votre incident', '2021/08/03 18:06:31'),
(41, 26, 37, 'je travaille sur votre incident', '2021/08/03 18:08:25'),
(42, 26, 35, 'Le probleme est bien resolu', '2021/08/03 18:09:47'),
(43, 27, 40, 'je viens de recevoir votre demande ', '2021/08/05 22:29:59'),
(44, 27, 41, 'je vais voir le probleme apres', '2021/08/05 22:36:50'),
(45, 29, 27, 'j\'ai eu un probleme de gestion', '2021/08/06 12:07:05'),
(46, 29, 21, 'bien', '2021/08/06 12:14:04'),
(47, 29, 21, 'bien assigne a un developpeur', '2021/08/07 00:33:55'),
(48, 34, 43, 'bonjour je suis Cheickna', '2021/08/08 14:06:28'),
(49, 21, 22, 'xcvfg', '2021/08/08 20:56:53'),
(50, 35, 43, 'vous pouvez resouder ce probleme mtn', '2021/08/09 02:50:56'),
(51, 35, 21, 'ok', '2021/08/09 02:51:46'),
(52, 35, 42, 'je comprends pas la description', '2021/08/09 02:53:34'),
(53, 34, 43, 'bonjour c\'est mahamoud1', '2021/08/09 11:07:56'),
(54, 36, 43, 'etat incident ', '2021/08/09 11:10:30'),
(55, 36, 21, 'bien', '2021/08/09 11:11:08'),
(56, 36, 42, 'incident persite', '2021/08/09 11:14:30'),
(57, 37, 47, 'je comprends', '2021/08/09 19:13:26'),
(58, 37, 45, 'je ne comprends pas', '2021/08/09 19:14:25'),
(59, 38, 46, 'je viens de creer un incident', '2021/08/09 19:24:03'),
(60, 38, 47, 'ok', '2021/08/09 19:25:12'),
(61, 38, 45, 'je ne comprends pas', '2021/08/09 19:26:32'),
(62, 38, 45, 'incident resolu', '2021/08/09 19:28:31'),
(63, 38, 47, 's\'est bien', '2021/08/09 19:29:18'),
(64, 39, 48, 'j\'ai eu une notification de ta part', '2021/08/14 15:51:00'),
(65, 39, 50, 'je n\'ai pas compris la description', '2021/08/14 15:53:25'),
(66, 39, 49, 'desole', '2021/08/14 15:54:56'),
(67, 39, 50, 'bien', '2021/08/14 15:55:51'),
(68, 39, 48, 'cool', '2021/08/14 15:56:37'),
(69, 40, 27, 'c\'est mon nouveau incident', '2021/09/07 21:02:01'),
(70, 40, 21, 'bien recu ', '2021/09/07 21:03:35'),
(71, 40, 21, 'je viens d\'assigne votre demande', '2021/09/07 21:04:30'),
(72, 40, 22, 'je n\'ai pas bien compris dd au niveau du description', '2021/09/07 21:06:11'),
(73, 18, 21, 'merci', '2021/09/15 14:35:28'),
(74, 41, 27, 'nouveau incident', '2021/09/15 14:36:56'),
(75, 41, 21, 'ok\n', '2021/09/15 14:37:54'),
(76, 41, 22, 'je ne comprends rien----------', '2021/09/15 14:38:54'),
(77, 40, 27, 'bien', '2021/10/26 02:31:42'),
(78, 42, 40, 'modibo je viens de t\'assigne une demande', '2021/12/25 23:12:37'),
(79, 42, 41, 'bien recu mon responsable', '2021/12/25 23:21:00'),
(80, 22, 27, 'mai lui a plaque', '2021/12/26 12:14:07'),
(81, 29, 27, 'je viens de constater que le probleme a recommence', '2022/01/05 20:55:02'),
(82, 43, 40, 'je viens d\'assigner votre incident à un developpeur...', '2022/01/09 13:40:57'),
(83, 43, 22, 'je n\'ai pas compris le type d\'app', '2022/01/09 13:42:47'),
(84, 43, 27, 'pour la gestion des personnels ', '2022/01/09 13:49:06'),
(85, 43, 22, 'je viens de resoufre le probleme ', '2022/01/09 13:58:52'),
(86, 43, 27, 'c\'est super', '2022/01/09 13:59:49'),
(87, 43, 27, 'ok super je suis ravi', '2022/01/15 14:47:27'),
(88, 29, 27, 'je suis en demo\n', '2022/01/17 14:39:29'),
(89, 41, 27, 'j\'entend la resolution de mes incidents\n', '2022/01/29 21:31:30'),
(90, 20, 27, 'vvvv', '2022/01/29 21:59:04');

-- --------------------------------------------------------

--
-- Structure de la table `t_notification`
--

DROP TABLE IF EXISTS `t_notification`;
CREATE TABLE IF NOT EXISTS `t_notification` (
  `idNotification` int(11) NOT NULL AUTO_INCREMENT,
  `idCreateur` int(11) DEFAULT NULL,
  `idDestinateur` int(11) DEFAULT NULL,
  `IdIncident` int(11) DEFAULT NULL,
  `dateCreation` text DEFAULT NULL,
  `nombreNotification` int(11) DEFAULT NULL,
  KEY `idNotification` (`idNotification`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_users`
--

DROP TABLE IF EXISTS `t_users`;
CREATE TABLE IF NOT EXISTS `t_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(60) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `sexe` varchar(60) NOT NULL,
  `login` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` varchar(60) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_users`
--

INSERT INTO `t_users` (`id`, `nom`, `prenom`, `sexe`, `login`, `password`, `type`) VALUES
(19, 'doumbias', 'cheickna', 'Masculin', 'cheickna', 'cheick', 'ADMINISTRATEUR'),
(22, 'cheick', 'cheick', 'Masculin', 'cheick', 'cheick', 'DEVELOPPEUR'),
(21, 'cheick', 'doumbia', 'Masculin', 'cheick', 'ch', 'RESPONSABLE'),
(23, 'diallo', 'sadjos', 'Masculin', 'sadjo', 'diallo', 'RAPPORTEUR'),
(26, 'cheicknaDoum', 'Doumbia', 'Masculin', 'cheick1', 'cheick', 'DEVELOPPEUR'),
(27, 'Doumbia', 'van', 'Masculin', 'van', 'van', 'RAPPORTEUR'),
(28, 'cheickna', 'doumbia', 'Masculin', 'cheickna', 'cheickna', 'ADMINISTRATEUR'),
(47, 'youssouf', 'coulibaly', 'Masculin', 'yo', 'yo', 'RESPONSABLE'),
(30, 'CheicknaBI', 'doumbia', 'Masculin', 'cheick', 'bi', 'ADMINISTRATEUR'),
(31, 'cheicknaSOW', 'doum', 'Masculin', 'cheickBI', 'cheick', 'RESPONSABLE'),
(32, 'Toure', 'Mahamoud', 'Masculin', 'toure', 'momo', 'RAPPORTEUR'),
(33, 'Coulibaly', 'dramane', 'Masculin', 'dra', 'coul', 'DEVELOPPEUR'),
(34, 'Diallo', 'Abdoulaye sadjo', 'Masculin', 'sadjo', 'dia', 'RESPONSABLE'),
(46, 'dembele', 'luc', 'Masculin', 'lu', 'lu', 'RAPPORTEUR'),
(36, 'Sadjo1', 'diallo', 'Masculin', 's', 'd', 'RESPONSABLE'),
(37, 'Dramane', 'Coulibaly', 'Masculin', 'd', 'c', 'DEVELOPPEUR'),
(38, 'cheickna', 'doum', 'Masculin', 'cheickSow', 'cheick', 'DEVELOPPEUR'),
(39, 'moussa', 'doumbia', 'Masculin', 'moussa', 'doumbia', 'RAPPORTEUR'),
(40, 'modibo', 'doumbia', 'Masculin', 'modibo', 'doumbia', 'RESPONSABLE'),
(41, 'drissa', 'doumbia', 'Masculin', 'drissa', '-doumbia', 'DEVELOPPEUR'),
(42, 'dramane', 'coulibaly', 'Masculin', 'dra1', '1', 'DEVELOPPEUR'),
(43, 'Toure', 'Mahamoud', 'Masculin', 'mahamoud1', '2', 'RAPPORTEUR'),
(45, 'cheickna', 'doumbia', 'Masculin', 'ch', 'ch', 'DEVELOPPEUR'),
(48, 'cheickna', 'doumbia', 'Masculin', 'informatique', 'info', 'RESPONSABLE'),
(49, 'moussa', 'diakite', 'Masculin', 'economie', 'eco', 'RAPPORTEUR'),
(50, 'amadou', 'diallo', 'Masculin', 'reseau', 'res', 'DEVELOPPEUR');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
