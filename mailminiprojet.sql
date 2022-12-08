-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 08 déc. 2022 à 22:14
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mailminiprojet`
--

-- --------------------------------------------------------

--
-- Structure de la table `cc`
--

DROP TABLE IF EXISTS `cc`;
CREATE TABLE IF NOT EXISTS `cc` (
  `emailid` int(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`emailid`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cc`
--

INSERT INTO `cc` (`emailid`, `email`) VALUES
(12, 'test1@gmail.com'),
(45, 'test5@gmail.com'),
(45, 'test4@gmail.com'),
(47, 'test3@gmail.com'),
(47, 'test1@gmail.com'),
(49, 'test1@gmail.com'),
(50, 'test2@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `cci`
--

DROP TABLE IF EXISTS `cci`;
CREATE TABLE IF NOT EXISTS `cci` (
  `emailid` int(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`emailid`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cci`
--

INSERT INTO `cci` (`emailid`, `email`) VALUES
(45, 'test1@gmail.com'),
(45, 'yassinederbel@gmail.com'),
(47, 'test1@gmail.com'),
(49, 'test2@gmail.com'),
(50, 'test3@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `accountId` int(4) NOT NULL AUTO_INCREMENT,
  `Pseudo` varchar(24) NOT NULL,
  `password` varchar(24) NOT NULL,
  `name` varchar(24) NOT NULL,
  PRIMARY KEY (`accountId`),
  UNIQUE KEY `psudo` (`Pseudo`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`accountId`, `Pseudo`, `password`, `name`) VALUES
(24, 'test1@gmail.com', '2yc.ACs3jrxhw', 'test1'),
(26, 'test2@gmail.com', '2yc.ACs3jrxhw', 'test2'),
(27, 'test4@gmail.com', '2yc.ACs3jrxhw', 'test4'),
(28, 'souhayla@gmail.com', '2yc.ACs3jrxhw', 'souhayla'),
(29, 'yassinederbel@gmail.com', '2yc.ACs3jrxhw', 'yassine'),
(30, 'test3@gmail.com', '2yc.ACs3jrxhw', 'test3'),
(31, 'test5@gmail.com', '2yc.ACs3jrxhw', 'test5'),
(32, 'test6@gmail.com', '2yc.ACs3jrxhw', 'test6');

-- --------------------------------------------------------

--
-- Structure de la table `mails`
--

DROP TABLE IF EXISTS `mails`;
CREATE TABLE IF NOT EXISTS `mails` (
  `emailid` int(5) NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) NOT NULL,
  `object` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `timedate` datetime NOT NULL,
  `status` varchar(10) DEFAULT 'unseen',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `mails`
--

INSERT INTO `mails` (`emailid`, `sender`, `object`, `message`, `timedate`, `status`, `deleted`) VALUES
(3, 'test1@gmail.com', 'hi', 'ayoub hdsihfi', '2022-12-04 16:14:20', 'unseen', 0),
(4, 'test1@gmail.com', 'hello', 'farouk fihgoidjf', '2022-12-01 16:14:44', 'unseen', 1),
(5, 'test1@gmail.com', 'ohayo', 'taher igzufbiahjf', '2022-12-04 17:07:20', 'unseen', 0),
(6, 'test1@gmail.com', 'haaaaa3', 'bilel Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui quidem, quas vero ea soluta voluptatibus veritatis, nemo pariatur porro ipsum sapiente reprehenderit nesciunt, iste et vel! Doloremque, iste officia sit eum in illo porro architecto vitae dignissimos dolor, quo ut, tempora quia tempore amet id mollitia deleniti blanditiis. Ullam, temporibus?', '2022-11-27 18:06:37', 'unseen', 0),
(7, 'test1@gmail.com', 'ahlaaaa', 'gwi  lyom 3id milad il taher', '2022-04-04 18:09:49', 'unseen', 0),
(12, 'test1@gmail.com', 'lol', 'hhhhhhhhhh', '2022-12-04 19:17:34', 'unseen', 0),
(40, 'test1@gmail.com', 'aaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaa', '2022-12-04 22:36:24', 'unseen', 0),
(41, 'test1@gmail.com', 'aaaa', 'aaaaaaaaaaaaaaa', '2022-12-04 22:36:49', 'unseen', 0),
(42, 'test1@gmail.com', 'files', 'aaaaaaaa', '2022-12-04 22:38:37', 'unseen', 0),
(43, 'test1@gmail.com', 'files', 'ayoub ddjsiojdo', '2022-12-05 00:48:11', 'unseen', 0),
(44, 'test1@gmail.com', 'files1542', 'pojzfpoafpoakfk', '2022-12-05 00:50:22', 'unseen', 0),
(45, 'test1@gmail.com', 'aaaa5', 'knwndq', '2022-12-05 00:55:11', 'seen', 0),
(46, 'test1@gmail.com', 'qqq', 'jebdnjwn', '2022-12-05 00:55:37', 'unseen', 0),
(47, 'test1@gmail.com', 'aajshdsjdlkskdjsd', 'isjd ksndq nd liq nsdjqnsidj bqisdbqibsd iqsbdiqbsnjkdbqs', '2022-12-05 01:29:31', 'seen', 0),
(48, 'test3@gmail.com', 'test', 'test', '2022-12-08 20:02:03', 'seen', 0),
(49, 'ghassenklai@gmail.com', 'test mails', 'hello form the other side', '2022-12-08 20:05:14', 'seen', 0),
(50, 'souhayla@gmail.com', 'testing mails', 'hello from the other side 2', '2022-12-08 20:17:23', 'seen', 0),
(51, 'test1@gmail.com', 'picture', 'test', '2022-12-08 21:41:40', 'seen', 0);

-- --------------------------------------------------------

--
-- Structure de la table `piece joint`
--

DROP TABLE IF EXISTS `piece joint`;
CREATE TABLE IF NOT EXISTS `piece joint` (
  `emailid` int(5) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`emailid`,`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `receiver`
--

DROP TABLE IF EXISTS `receiver`;
CREATE TABLE IF NOT EXISTS `receiver` (
  `emailid` int(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`emailid`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `receiver`
--

INSERT INTO `receiver` (`emailid`, `email`) VALUES
(3, 'test1@gmail.com'),
(4, 'test1@gmail.com'),
(5, 'test1@gmail.com'),
(6, 'test1@gmail.com'),
(7, 'test1@gmail.com'),
(12, 'test1@gmail.com'),
(43, 'test1@gmail.com'),
(44, 'test1@gmail.com'),
(45, 'test1@gmail.com'),
(46, 'test1@gmail.com'),
(47, 'test1@gmail.com'),
(47, 'test1@gmail.com'),
(48, 'ghassen.klai@gmail.com'),
(49, 'ghassen.klai@gmail.com'),
(50, 'test1@gmail.com'),
(51, 'test1@gmail.com');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cc`
--
ALTER TABLE `cc`
  ADD CONSTRAINT `cc_ibfk_1` FOREIGN KEY (`emailid`) REFERENCES `mails` (`emailid`);

--
-- Contraintes pour la table `cci`
--
ALTER TABLE `cci`
  ADD CONSTRAINT `cci_ibfk_1` FOREIGN KEY (`emailid`) REFERENCES `mails` (`emailid`);

--
-- Contraintes pour la table `piece joint`
--
ALTER TABLE `piece joint`
  ADD CONSTRAINT `piece joint_ibfk_1` FOREIGN KEY (`emailid`) REFERENCES `mails` (`emailid`);

--
-- Contraintes pour la table `receiver`
--
ALTER TABLE `receiver`
  ADD CONSTRAINT `receiver_ibfk_1` FOREIGN KEY (`emailid`) REFERENCES `mails` (`emailid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
