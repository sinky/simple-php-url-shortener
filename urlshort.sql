-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: sql40.your-server.de
-- Erstellungszeit: 02. Mrz 2013 um 12:13
-- Server Version: 5.0.51a-24+lenny5
-- PHP-Version: 5.3.3-7+squeeze14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `myxazu_db1`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `urlshort`
--

CREATE TABLE IF NOT EXISTS `urlshort` (
  `id` int(9) NOT NULL auto_increment,
  `longurl` text NOT NULL,
  `created` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `hits` int(9) NOT NULL default '0',
  `referer` text NOT NULL,
  `lastused` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;