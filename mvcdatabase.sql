-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Júl 10. 10:20
-- Kiszolgáló verziója: 10.4.11-MariaDB
-- PHP verzió: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `mvcdatabase`
--
CREATE DATABASE IF NOT EXISTS `mvcdatabase` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `mvcdatabase`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `advertisements`
--

INSERT INTO `advertisements` (`id`, `userID`, `title`) VALUES
(1, 45, 'I sell my ladder'),
(2, 35, 'I sell my camera'),
(3, 25, 'I sell my desk'),
(4, 24, 'I sell my pen'),
(5, 40, 'I sell my printer'),
(6, 34, 'I sell my drum'),
(7, 10, 'I sell my windows'),
(8, 26, 'Are you intrested in a  new pencil'),
(9, 15, 'Call me if you want to skii in Austria'),
(10, 49, 'I have a room to rent next to Balaton'),
(11, 50, 'Come with me to  Croatia'),
(12, 19, 'If you lookin for a job in Netherlands,  Call me!'),
(13, 7, 'I would like to work as a Veterinary surgeon'),
(14, 6, 'I would like to work as an IT consultant'),
(15, 50, 'I would like to work as a Delivery driver'),
(16, 13, 'I would like to work as a Pickpocket'),
(17, 12, 'I would like to work as a Scaffolder'),
(18, 31, 'I would like to work as an Osteopath'),
(19, 17, 'I would like to work as a Councillor'),
(20, 3, 'I would like to work as an Anaesthetist'),
(21, 14, 'We are searching for a Mortician'),
(22, 26, 'We are searching for an Actor'),
(23, 1, 'We are searching for a Plumber'),
(24, 2, 'We are searching for a Farmer'),
(25, 11, 'We are searching for a Flight attendant'),
(26, 23, 'We are searching for a Street entertainer'),
(27, 27, 'We are searching for a Midwife'),
(28, 12, 'We are searching for an Illustrator'),
(29, 3, 'I am searching for a house to rent'),
(30, 37, 'I am searching for my lost keys'),
(31, 10, 'I am searching for a wife'),
(32, 27, 'I am searching for an apartment'),
(33, 10, 'I am searching for a job'),
(34, 9, 'I am searching for a job'),
(35, 14, 'I am searching for a job'),
(36, 3, 'I am searching for a job'),
(37, 33, 'I do wallpapers'),
(38, 24, 'I do paintings'),
(39, 4, 'I do plumber works'),
(40, 20, 'I do gardening'),
(41, 25, 'I am looking for a new job'),
(42, 20, 'I am looking for a new job');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'Enya Croft'),
(2, 'Bradleigh North'),
(3, 'Phoebe Mccallum'),
(4, 'Menna Handley'),
(5, 'Gurpreet Whitaker'),
(6, 'Qasim Hanna'),
(7, 'Fiona Mcclure'),
(8, 'Amayah Wilkes'),
(9, 'Tulisa Suarez'),
(10, 'Riccardo Frazier'),
(11, 'Mahi Salgado'),
(12, 'Conal Coulson'),
(13, 'Anais Frost'),
(14, 'Eleni Ho'),
(15, 'Cohan Wall'),
(16, 'Anisha Le'),
(17, 'Kay Esparza'),
(18, 'Yousif Keenan'),
(19, 'Atif Beasley'),
(20, 'Honor Moss'),
(21, 'Arun Adam'),
(22, 'Moshe Atkinson'),
(23, 'Dalton Lowe'),
(24, 'Coral Shannon'),
(25, 'Rylee Foster'),
(26, 'Keegan Hinton'),
(27, 'Wilf Rivera'),
(28, 'Jennifer Beattie'),
(29, 'Angharad Gay'),
(30, 'Aaron Martin'),
(31, 'Kishan Warren'),
(32, 'Evelina Foreman'),
(33, 'Malaki Mcdonnell'),
(34, 'Tiago Chan'),
(35, 'Hugo Talbot'),
(36, 'Shanae Merritt'),
(37, 'Laibah Neale'),
(38, 'Brendon Sheldon'),
(39, 'Jannah Devlin'),
(40, 'Anushka Ashley'),
(41, 'Breanna Blackmore'),
(42, 'Callam Fuller'),
(43, 'Alessandra Cuevas'),
(44, 'Reis Valencia'),
(45, 'Suhail Watson'),
(46, 'Aleah Farrell'),
(47, 'Aneesa Krueger'),
(48, 'Tayyib Millar'),
(49, 'Efa Boone'),
(50, 'Aadil May');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `advertisements`
--
ALTER TABLE `advertisements`
  ADD CONSTRAINT `advertisements_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
