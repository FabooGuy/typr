-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 31. Mai 2016 um 05:28
-- Server-Version: 10.1.13-MariaDB
-- PHP-Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `typr`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `adress` text NOT NULL,
  `phone` text NOT NULL,
  `email` text NOT NULL,
  `logo` text NOT NULL,
  `navlogo` text NOT NULL,
  `description` text NOT NULL,
  `article_numb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `contact`
--

INSERT INTO `contact` (`id`, `name`, `adress`, `phone`, `email`, `logo`, `navlogo`, `description`, `article_numb`) VALUES
(1, 'max der Mustermann', 'Wursterstr. 13 <br> 1234 Musterstadt', '12345/09876', 'beispiel@max.de', '', '', 'ich bin total schlau', 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `picture` text NOT NULL,
  `caption` text NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `home`
--

INSERT INTO `home` (`id`, `picture`, `caption`, `text`) VALUES
(1, '', 'wbawoubwrsvwrvr', 'arewrwwrf'),
(2, '', 'eierbrot', 'wurst'),
(3, '', 'wiubvru', 'einbeoibe'),
(4, '', 'wrvetee', 'etvrbrtbrt'),
(5, '', 'trsbrzhrgbr', 'sreseadtgbg'),
(6, '', 'srhztdv rt ', 'tdhaztjdxbrt'),
(7, '', 'trsbrzhrgbr', 'sreseadtgbg'),
(8, '', 'srhztdv rt ', 'tdhaztjdxbrt');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pics`
--

CREATE TABLE `pics` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `picture` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `alt_text` text NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tags` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `date`, `tags`) VALUES
(2, 'kÃ¤se', 'schinken und kÃ¤se', '2016-05-29 19:23:17', 'wurst'),
(3, 'title', 'content', '2016-05-29 19:23:39', 'tags'),
(4, 'wubi', 'ruwebvo', '2016-05-29 19:38:32', 'vnue'),
(5, 'a', 'aa', '2016-05-29 22:12:35', 'a'),
(6, 'd', 'rivnoiwuwr', '2016-05-30 16:20:50', 'evsevbe3igv'),
(7, 'atebse', 'aebebdfasb', '2016-05-30 16:22:43', 'avr'),
(8, 'wvERVA', 'wcweacr', '2016-05-30 16:22:52', 'wsAWSVSADR'),
(9, 'furz', 'wsgcirz', '2016-05-30 19:12:11', 'wrhrio'),
(10, 'salami', 'Pferd <br>\r\nGemÃ¼se', '2016-05-30 19:12:35', 'kochen');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `pw_hash` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`id`, `name`, `pw_hash`) VALUES
(1, 'admin', '906072001efddf3e11e6d2b5782f4777fe038739');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `pics`
--
ALTER TABLE `pics`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `pics`
--
ALTER TABLE `pics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
