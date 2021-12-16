-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 16 dec 2021 om 14:43
-- Serverversie: 10.4.17-MariaDB
-- PHP-versie: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scraper`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `macbook_air`
--

CREATE TABLE `macbook_air` (
  `id` int(255) NOT NULL,
  `winkel` varchar(255) NOT NULL,
  `prijs` int(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `datum` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `macbook_air`
--

INSERT INTO `macbook_air` (`id`, `winkel`, `prijs`, `link`, `datum`) VALUES
(16, 'Mediamarkt', 1039, 'https://www.mediamarkt.nl/nl/product/_apple-macbook-air-13-3-2020-zilver-m1-256-gb-1681033.html', '2021-11-18'),
(17, 'Amac', 1049, 'https://www.amac.nl/apple-macbook-air-13-inch-m1-chip-8c-cpu-7c-gpu-8gb-256gb-zilver-2020', '2021-11-18'),
(18, 'BBC', 1039, 'https://www.bcc.nl/computer/laptop/macbook/apple-macbook-air-13-2020-m1-chip-256gb-zilver/297183', '2021-11-18'),
(19, 'YourMacStore', 1229, 'https://www.yourmacstore.nl/macbook-air-m1-8-core-cpu-8-core-gpu-zilver-8gb-512gb', '2021-11-18'),
(20, 'Bol', 989, 'https://www.bol.com/nl/nl/p/apple-macbook-air-mgn63n-a-13-3-inch-apple-m1-256-gb-space-grey/9300000017194044/?s2a=#productTitle', '2021-11-18'),
(21, 'Alternate', 1049, 'https://www.alternate.nl/Apple/MacBook-Air-13-(MGN93N-A)/html/product/1726405', '2021-11-18'),
(22, 'Wehkamp', 1039, 'https://www.wehkamp.nl/apple-256-gb-zilver-13-3-inch-macbook-air-2020-m1-16677004/', '2021-11-18'),
(23, 'Mediamarkt', 888, 'https://www.mediamarkt.nl/nl/product/_apple-macbook-air-13-3-2020-zilver-m1-256-gb-1681033.html', '2021-11-19'),
(24, 'Amac', 1049, 'https://www.amac.nl/apple-macbook-air-13-inch-m1-chip-8c-cpu-7c-gpu-8gb-256gb-zilver-2020', '2021-11-19'),
(25, 'BBC', 1039, 'https://www.bcc.nl/computer/laptop/macbook/apple-macbook-air-13-2020-m1-chip-256gb-zilver/297183', '2021-11-19'),
(26, 'YourMacStore', 1229, 'https://www.yourmacstore.nl/macbook-air-m1-8-core-cpu-8-core-gpu-zilver-8gb-512gb', '2021-11-19'),
(27, 'Bol', 879, 'https://www.bol.com/nl/nl/p/apple-macbook-air-mgn63n-a-13-3-inch-apple-m1-256-gb-space-grey/9300000017194044/?s2a=#productTitle', '2021-11-19'),
(28, 'Alternate', 1049, 'https://www.alternate.nl/Apple/MacBook-Air-13-(MGN93N-A)/html/product/1726405', '2021-11-19'),
(29, 'Wehkamp', 1039, 'https://www.wehkamp.nl/apple-256-gb-zilver-13-3-inch-macbook-air-2020-m1-16677004/', '2021-11-19'),
(30, 'Mediamarkt', 888, 'https://www.mediamarkt.nl/nl/product/_apple-macbook-air-13-3-2020-zilver-m1-256-gb-1681033.html', '2021-11-20'),
(31, 'Amac', 1049, 'https://www.amac.nl/apple-macbook-air-13-inch-m1-chip-8c-cpu-7c-gpu-8gb-256gb-zilver-2020', '2021-11-20'),
(32, 'BBC', 1039, 'https://www.bcc.nl/computer/laptop/macbook/apple-macbook-air-13-2020-m1-chip-256gb-zilver/297183', '2021-11-20'),
(33, 'YourMacStore', 1229, 'https://www.yourmacstore.nl/macbook-air-m1-8-core-cpu-8-core-gpu-zilver-8gb-512gb', '2021-11-20'),
(34, 'Bol', 879, 'https://www.bol.com/nl/nl/p/apple-macbook-air-mgn63n-a-13-3-inch-apple-m1-256-gb-space-grey/9300000017194044/?s2a=#productTitle', '2021-11-20'),
(35, 'Alternate', 1049, 'https://www.alternate.nl/Apple/MacBook-Air-13-(MGN93N-A)/html/product/1726405', '2021-11-20'),
(36, 'Wehkamp', 1039, 'https://www.wehkamp.nl/apple-256-gb-zilver-13-3-inch-macbook-air-2020-m1-16677004/', '2021-11-20'),
(37, 'Mediamarkt', 888, 'https://www.mediamarkt.nl/nl/product/_apple-macbook-air-13-3-2020-zilver-m1-256-gb-1681033.html', '2021-11-21'),
(38, 'Amac', 1049, 'https://www.amac.nl/apple-macbook-air-13-inch-m1-chip-8c-cpu-7c-gpu-8gb-256gb-zilver-2020', '2021-11-21'),
(39, 'BBC', 1039, 'https://www.bcc.nl/computer/laptop/macbook/apple-macbook-air-13-2020-m1-chip-256gb-zilver/297183', '2021-11-21'),
(40, 'YourMacStore', 1229, 'https://www.yourmacstore.nl/macbook-air-m1-8-core-cpu-8-core-gpu-zilver-8gb-512gb', '2021-11-21'),
(41, 'Bol', 879, 'https://www.bol.com/nl/nl/p/apple-macbook-air-mgn63n-a-13-3-inch-apple-m1-256-gb-space-grey/9300000017194044/?s2a=#productTitle', '2021-11-21'),
(42, 'Alternate', 1049, 'https://www.alternate.nl/Apple/MacBook-Air-13-(MGN93N-A)/html/product/1726405', '2021-11-21'),
(43, 'Wehkamp', 1039, 'https://www.wehkamp.nl/apple-256-gb-zilver-13-3-inch-macbook-air-2020-m1-16677004/', '2021-11-21'),
(44, 'Mediamarkt', 888, 'https://www.mediamarkt.nl/nl/product/_apple-macbook-air-13-3-2020-zilver-m1-256-gb-1681033.html', '2021-11-22'),
(45, 'Amac', 1049, 'https://www.amac.nl/apple-macbook-air-13-inch-m1-chip-8c-cpu-7c-gpu-8gb-256gb-zilver-2020', '2021-11-22'),
(46, 'BBC', 975, 'https://www.bcc.nl/computer/laptop/macbook/apple-macbook-air-13-2020-m1-chip-256gb-zilver/297183', '2021-11-22'),
(47, 'YourMacStore', 1229, 'https://www.yourmacstore.nl/macbook-air-m1-8-core-cpu-8-core-gpu-zilver-8gb-512gb', '2021-11-22'),
(48, 'Bol', 879, 'https://www.bol.com/nl/nl/p/apple-macbook-air-mgn63n-a-13-3-inch-apple-m1-256-gb-space-grey/9300000017194044/?s2a=#productTitle', '2021-11-22'),
(211, 'Alternate', 1049, 'https://www.alternate.nl/Apple/MacBook-Air-13-(MGN93N-A)/html/product/1726405', '2021-11-22'),
(212, 'Wehkamp', 975, 'https://www.wehkamp.nl/apple-256-gb-zilver-13-3-inch-macbook-air-2020-m1-16677004/', '2021-11-22'),
(213, 'Mediamarkt', 888, 'https://www.mediamarkt.nl/nl/product/_apple-macbook-air-13-3-2020-zilver-m1-256-gb-1681033.html', '2021-11-23'),
(214, 'Amac', 999, 'https://www.amac.nl/apple-macbook-air-13-inch-m1-chip-8c-cpu-7c-gpu-8gb-256gb-zilver-2020', '2021-11-23'),
(215, 'BBC', 975, 'https://www.bcc.nl/computer/laptop/macbook/apple-macbook-air-13-2020-m1-chip-256gb-zilver/297183', '2021-11-23'),
(216, 'YourMacStore', 1229, 'https://www.yourmacstore.nl/macbook-air-m1-8-core-cpu-8-core-gpu-zilver-8gb-512gb', '2021-11-23'),
(217, 'Bol', 879, 'https://www.bol.com/nl/nl/p/apple-macbook-air-mgn63n-a-13-3-inch-apple-m1-256-gb-space-grey/9300000017194044/?s2a=#productTitle', '2021-11-23'),
(218, 'Alternate', 1049, 'https://www.alternate.nl/Apple/MacBook-Air-13-(MGN93N-A)/html/product/1726405', '2021-11-23'),
(219, 'Wehkamp', 975, 'https://www.wehkamp.nl/apple-256-gb-zilver-13-3-inch-macbook-air-2020-m1-16677004/', '2021-11-23'),
(220, 'Mediamarkt', 888, 'https://www.mediamarkt.nl/nl/product/_apple-macbook-air-13-3-2020-zilver-m1-256-gb-1681033.html', '2021-11-24'),
(221, 'Amac', 999, 'https://www.amac.nl/apple-macbook-air-13-inch-m1-chip-8c-cpu-7c-gpu-8gb-256gb-zilver-2020', '2021-11-24'),
(222, 'BBC', 975, 'https://www.bcc.nl/computer/laptop/macbook/apple-macbook-air-13-2020-m1-chip-256gb-zilver/297183', '2021-11-24'),
(223, 'YourMacStore', 1229, 'https://www.yourmacstore.nl/macbook-air-m1-8-core-cpu-8-core-gpu-zilver-8gb-512gb', '2021-11-24'),
(224, 'Bol', 902, 'https://www.bol.com/nl/nl/p/apple-macbook-air-mgn63n-a-13-3-inch-apple-m1-256-gb-space-grey/9300000017194044/?s2a=#productTitle', '2021-11-24'),
(225, 'Alternate', 1049, 'https://www.alternate.nl/Apple/MacBook-Air-13-(MGN93N-A)/html/product/1726405', '2021-11-24'),
(226, 'Wehkamp', 975, 'https://www.wehkamp.nl/apple-256-gb-zilver-13-3-inch-macbook-air-2020-m1-16677004/', '2021-11-24'),
(227, 'Mediamarkt', 888, 'https://www.mediamarkt.nl/nl/product/_apple-macbook-air-13-3-2020-zilver-m1-256-gb-1681033.html', '2021-11-25'),
(228, 'Amac', 999, 'https://www.amac.nl/apple-macbook-air-13-inch-m1-chip-8c-cpu-7c-gpu-8gb-256gb-zilver-2020', '2021-11-25'),
(229, 'BBC', 975, 'https://www.bcc.nl/computer/laptop/macbook/apple-macbook-air-13-2020-m1-chip-256gb-zilver/297183', '2021-11-25'),
(230, 'YourMacStore', 1229, 'https://www.yourmacstore.nl/macbook-air-m1-8-core-cpu-8-core-gpu-zilver-8gb-512gb', '2021-11-25'),
(231, 'Bol', 975, 'https://www.bol.com/nl/nl/p/apple-macbook-air-mgn63n-a-13-3-inch-apple-m1-256-gb-space-grey/9300000017194044/?s2a=#productTitle', '2021-11-25'),
(232, 'Alternate', 1049, 'https://www.alternate.nl/Apple/MacBook-Air-13-(MGN93N-A)/html/product/1726405', '2021-11-25'),
(233, 'Wehkamp', 975, 'https://www.wehkamp.nl/apple-256-gb-zilver-13-3-inch-macbook-air-2020-m1-16677004/', '2021-11-25'),
(234, 'Mediamarkt', 888, 'https://www.mediamarkt.nl/nl/product/_apple-macbook-air-13-3-2020-zilver-m1-256-gb-1681033.html', '2021-11-26'),
(235, 'Amac', 999, 'https://www.amac.nl/apple-macbook-air-13-inch-m1-chip-8c-cpu-7c-gpu-8gb-256gb-zilver-2020', '2021-11-26'),
(236, 'BBC', 975, 'https://www.bcc.nl/computer/laptop/macbook/apple-macbook-air-13-2020-m1-chip-256gb-zilver/297183', '2021-11-26'),
(237, 'YourMacStore', 1229, 'https://www.yourmacstore.nl/macbook-air-m1-8-core-cpu-8-core-gpu-zilver-8gb-512gb', '2021-11-26'),
(238, 'Bol', 975, 'https://www.bol.com/nl/nl/p/apple-macbook-air-mgn63n-a-13-3-inch-apple-m1-256-gb-space-grey/9300000017194044/?s2a=#productTitle', '2021-11-26'),
(239, 'Alternate', 1129, 'https://www.alternate.nl/Apple/MacBook-Air-13-(MGN93N-A)/html/product/1726405', '2021-11-26'),
(240, 'Wehkamp', 975, 'https://www.wehkamp.nl/apple-256-gb-zilver-13-3-inch-macbook-air-2020-m1-16677004/', '2021-11-26');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `macbook_air`
--
ALTER TABLE `macbook_air`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `macbook_air`
--
ALTER TABLE `macbook_air`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
