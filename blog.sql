-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 25 juin 2020 à 18:10
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `comment`, `comment_date`) VALUES
(27, 1, ' jolie ', '2020-06-25 07:08:12'),
(38, 3, ' pas jolie ', '2020-06-25 16:49:26'),
(40, 1, ' nice ', '2020-06-25 17:02:30'),
(42, 6, ' nice ', '2020-06-25 17:07:20'),
(43, 5, ' tres bon article merci ', '2020-06-25 17:08:26'),
(44, 2, ' pas de photo ? ', '2020-06-25 17:27:26'),
(45, 3, ' non jolie ', '2020-06-25 17:52:02'),
(46, 4, ' hi ', '2020-06-25 17:53:52'),
(47, 4, ' hello ', '2020-06-25 17:54:45'),
(55, 5, ' oui c vrai ', '2020-06-25 17:57:09'),
(56, 4, ' yeah ', '2020-06-25 17:59:53'),
(57, 6, ' waw ', '2020-06-25 18:00:25'),
(58, 6, ' waw ', '2020-06-25 18:00:35'),
(59, 6, ' yeah ', '2020-06-25 18:01:03'),
(60, 2, ' oui parquoi ? ', '2020-06-25 18:07:38');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `creation_date`) VALUES
(1, 'post 1 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor \r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur Ut enim ad minim veniam', '2020-05-27 14:28:41'),
(2, 'post 2 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor \r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur Ut enim ad minim veniam', '2020-08-25 08:28:00'),
(3, 'post 3 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor \r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur Ut enim ad minim veniam\r\n', '2020-06-26 09:22:17'),
(4, 'post 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor \r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur Ut enim ad minim veniam', '2020-06-27 08:31:29'),
(5, 'post 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor \r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur Ut enim ad minim veniam', '2020-06-28 10:31:55'),
(6, 'post 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor \r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur Ut enim ad minim veniam', '2020-06-30 17:32:14');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
