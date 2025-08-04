-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Lug 29, 2025 alle 18:19
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `contenutom`
--

CREATE TABLE `contenutom` (
  `Link` varchar(100) NOT NULL,
  `Tipo` varchar(20) NOT NULL,
  `IDn` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `contenutom`
--

INSERT INTO `contenutom` (`Link`, `Tipo`, `IDn`) VALUES
('https://content1.com', 'Video', 1),
('https://content2.com', 'Immagine', 2),
('https://media10.com', 'Immagine', 10),
('https://media11.com', 'Video', 11),
('https://media12.com', 'Immagine', 12),
('https://media13.com', 'Video', 13),
('https://media14.com', 'Immagine', 14),
('https://media15.com', 'Video', 15),
('https://media16.com', 'Immagine', 16),
('https://media17.com', 'Video', 17),
('https://media18.com', 'Immagine', 18),
('https://media19.com', 'Video', 19),
('https://media20.com', 'Immagine', 20),
('https://media21.com', 'Video', 21),
('https://media22.com', 'Immagine', 22),
('https://media23.com', 'Video', 23),
('https://media4.com', 'Immagine', 4),
('https://media5.com', 'Video', 5),
('https://media6.com', 'Immagine', 6),
('https://media7.com', 'Video', 7),
('https://media8.com', 'Immagine', 8),
('https://media9.com', 'Video', 9);

-- --------------------------------------------------------

--
-- Struttura della tabella `etichettatura`
--

CREATE TABLE `etichettatura` (
  `IDe` int(11) NOT NULL,
  `Topic` varchar(20) NOT NULL,
  `Result` varchar(20) NOT NULL,
  `Motivazione` varchar(20) NOT NULL,
  `Nota` varchar(20) NOT NULL,
  `IDj` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `etichettatura`
--

INSERT INTO `etichettatura` (`IDe`, `Topic`, `Result`, `Motivazione`, `Nota`, `IDj`) VALUES
(1, 'Politica', 'Verificato', 'Completo', 'Nessuna', 1),
(2, 'Economia', 'Da_Rivedere', 'Parziale', 'Controllare', 2),
(3, 'Tecnologia', 'Verificato', 'Completo', 'Approfondito', 3),
(4, 'Salute', 'Incompleto', 'Parziale', 'Fonti mancanti', 4),
(5, 'Ambiente', 'Verificato', 'Completo', 'Ottima fonte', 5),
(6, 'Sport', 'Da_Rivedere', 'Parziale', 'Dati vecchi', 6),
(7, 'Cultura', 'Verificato', 'Completo', 'Ben documentato', 7),
(8, 'Scienza', 'Falso', 'Errato', 'Contraddizioni', 8),
(9, 'Politica', 'Verificato', 'Completo', 'Corretto', 9),
(10, 'Economia', 'Da_Rivedere', 'Parziale', 'Aggiorna dati', 10),
(11, 'Musica', 'Verificato', 'Completo', 'Conferma esperti', 11),
(12, 'Cinema', 'Falso', 'Errato', 'Clickbait', 12),
(13, 'Viaggi', 'Verificato', 'Completo', 'Fonte affidabile', 3),
(14, 'Moda', 'Incompleto', 'Parziale', 'Link rotti', 4),
(15, 'Animali', 'Verificato', 'Completo', 'Controllato', 5),
(16, 'Cibo', 'Da_Rivedere', 'Parziale', 'Non chiaro', 6),
(17, 'Lavoro', 'Falso', 'Errato', 'Dati inventati', 7),
(18, 'Diritti', 'Verificato', 'Completo', 'Conferme multiple', 8),
(19, 'Tecnologia', 'Verificato', 'Completo', 'Accuratezza OK', 9),
(20, 'Ambiente', 'Falso', 'Errato', 'Fake news', 10),
(21, 'Scienza', 'Da_Rivedere', 'Parziale', 'Confusione', 11),
(22, 'Sport', 'Verificato', 'Completo', 'Fonte ufficiale', 12);

-- --------------------------------------------------------

--
-- Struttura della tabella `junior`
--

CREATE TABLE `junior` (
  `IDj` int(11) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Cognome` varchar(20) NOT NULL,
  `Email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `junior`
--

INSERT INTO `junior` (`IDj`, `Nome`, `Cognome`, `Email`) VALUES
(1, 'Luigi', 'Verdi', 'luigi.verdi@email.co'),
(2, 'Sara', 'Neri', 'sara.neri@email.com'),
(3, 'Paolo', 'Blu', 'paolo.blu@email.com'),
(4, 'Elena', 'Gialli', 'elena.gialli@email.c'),
(5, 'Giorgio', 'Rossi', 'giorgio.rossi@email.'),
(6, 'Francesca', 'Verdi', 'francesca.verdi@emai'),
(7, 'Luca', 'Bianchi', 'luca.bianchi@email.c'),
(8, 'Martina', 'Neri', 'martina.neri@email.c'),
(9, 'Andrea', 'Moro', 'andrea.moro@email.co'),
(10, 'Chiara', 'Luna', 'chiara.luna@email.co'),
(11, 'Davide', 'Stella', 'davide.stella@email.'),
(12, 'Sara', 'Cielo', 'sara.cielo@email.com');

-- --------------------------------------------------------

--
-- Struttura della tabella `news`
--

CREATE TABLE `news` (
  `IDn` int(11) NOT NULL,
  `URL` varchar(50) NOT NULL,
  `Titolo` varchar(20) NOT NULL,
  `Autore` varchar(20) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Tipologia` varchar(20) NOT NULL,
  `Contenuto` varchar(20) NOT NULL,
  `Data` date DEFAULT NULL,
  `IDe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `news`
--

INSERT INTO `news` (`IDn`, `URL`, `Titolo`, `Autore`, `Nome`, `Tipologia`, `Contenuto`, `Data`, `IDe`) VALUES
(1, 'https://news1.com', 'Elezioni', 'GiornalistaA', 'Testata1', 'Articolo', 'Testo1', '2025-07-20', 1),
(2, 'https://news2.com', 'Pil Cresce', 'GiornalistaB', 'Testata2', 'Articolo', 'Testo2', '2025-07-21', 2),
(3, 'https://news2.com', 'Pil Cresce', 'GiornalistaB', 'Testata2', 'Giornale', 'Testo2', '2025-07-21', NULL),
(4, 'https://news3.com', 'Nuovo Chip', 'GiornalistaC', 'TechToday', 'Articolo', 'Testo3', '2025-07-22', 3),
(5, 'https://news4.com', 'Vaccino 2025', 'GiornalistaD', 'SaluteOggi', 'Report', 'Testo4', '2025-07-23', 4),
(6, 'https://news5.com', 'Clima Cambia', 'GiornalistaE', 'GreenWorld', 'Articolo', 'Testo5', '2025-07-24', 5),
(7, 'https://news6.com', 'Finale Champions', 'GiornalistaF', 'SportNow', 'Video', 'Testo6', '2025-07-25', 6),
(8, 'https://news7.com', 'Arte Moderna', 'GiornalistaG', 'CulturaViva', 'Articolo', 'Testo7', '2025-07-26', 7),
(9, 'https://news8.com', 'Nobel 2025', 'GiornalistaH', 'ScienceMag', 'Report', 'Testo8', '2025-07-27', 8),
(10, 'https://news9.com', 'Referendum', 'GiornalistaI', 'Politico24', 'Articolo', 'Testo9', '2025-07-28', 9),
(11, 'https://news10.com', 'Crisi Mercati', 'GiornalistaJ', 'EconoNews', 'Report', 'Testo10', '2025-07-29', 10),
(12, 'https://news11.com', 'Festival Estivo', 'GiornalistaK', 'MusicToday', 'Articolo', 'Testo11', '2025-07-29', 11),
(13, 'https://news12.com', 'Oscar 2025', 'GiornalistaL', 'CinemaWorld', 'Report', 'Testo12', '2025-07-29', 12),
(14, 'https://news13.com', 'Top Destinazioni', 'GiornalistaM', 'TravelMag', 'Articolo', 'Testo13', '2025-07-28', 13),
(15, 'https://news14.com', 'Tendenze Moda', 'GiornalistaN', 'StyleToday', 'Articolo', 'Testo14', '2025-07-27', 14),
(16, 'https://news15.com', 'Pet Therapy', 'GiornalistaO', 'AnimalLife', 'Articolo', 'Testo15', '2025-07-26', 15),
(17, 'https://news16.com', 'Cucina Bio', 'GiornalistaP', 'FoodLovers', 'Report', 'Testo16', '2025-07-25', 16),
(18, 'https://news17.com', 'Contratti 2025', 'GiornalistaQ', 'JobNews', 'Articolo', 'Testo17', '2025-07-24', 17),
(19, 'https://news18.com', 'Diritti Digitali', 'GiornalistaR', 'DirittoOggi', 'Articolo', 'Testo18', '2025-07-23', 18),
(20, 'https://news19.com', 'AI e Privacy', 'GiornalistaS', 'TechToday', 'Report', 'Testo19', '2025-07-22', 19),
(21, 'https://news20.com', 'Foreste a Rischio', 'GiornalistaT', 'GreenWorld', 'Articolo', 'Testo20', '2025-07-21', 20),
(22, 'https://news21.com', 'Spazio e Luna', 'GiornalistaU', 'ScienceMag', 'Articolo', 'Testo21', '2025-07-20', 21),
(23, 'https://news22.com', 'Olimpiadi 2025', 'GiornalistaV', 'SportNow', 'Articolo', 'Testo22', '2025-07-19', 22);

-- --------------------------------------------------------

--
-- Struttura della tabella `senior`
--

CREATE TABLE `senior` (
  `IDs` int(11) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Cognome` varchar(20) NOT NULL,
  `Email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `senior`
--

INSERT INTO `senior` (`IDs`, `Nome`, `Cognome`, `Email`) VALUES
(1, 'Mario', 'Rossi', 'mario.rossi@email.co'),
(2, 'Anna', 'Bianchi', 'anna.bianchi@email.c'),
(3, 'Lucia', 'Argento', 'lucia.argento@email.'),
(4, 'Marco', 'Oro', 'marco.oro@email.com'),
(5, 'Gianni', 'Ferrari', 'gianni.ferrari@email'),
(6, 'Laura', 'Fiore', 'laura.fiore@email.co'),
(7, 'Roberto', 'Rame', 'roberto.rame@email.c'),
(8, 'Silvia', 'Latte', 'silvia.latte@email.c'),
(9, 'Alberto', 'Bosco', 'alberto.bosco@email.'),
(10, 'Valeria', 'Sale', 'valeria.sale@email.c'),
(11, 'Federico', 'Sabbia', 'federico.sabbia@emai'),
(12, 'Monica', 'Neve', 'monica.neve@email.co');

-- --------------------------------------------------------

--
-- Struttura della tabella `validazione`
--

CREATE TABLE `validazione` (
  `IDv` int(11) NOT NULL,
  `Correzione` varchar(20) NOT NULL,
  `Validazione` int(11) NOT NULL,
  `IDe` int(11) DEFAULT NULL,
  `IDs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `validazione`
--

INSERT INTO `validazione` (`IDv`, `Correzione`, `Validazione`, `IDe`, `IDs`) VALUES
(1, 'Correzione minore', 1, 1, 1),
(2, 'Da correggere', 0, 2, 2),
(3, 'Nessuna', 1, 3, 3),
(4, 'Errori gravi', 0, 4, 4),
(5, 'Ok', 1, 5, 5),
(6, 'Migliorabile', 0, 6, 6),
(7, 'Corretta', 1, 7, 7),
(8, 'Da rivedere', 0, 8, 8),
(9, 'Perfetta', 1, 9, 9),
(10, 'Rivedi fonti', 0, 10, 10),
(11, 'Completa', 1, 11, 11),
(12, 'Fake', 0, 12, 12),
(13, 'Ottimo lavoro', 1, 13, 3),
(14, 'Parziale', 0, 14, 4),
(15, 'Accettabile', 1, 15, 5),
(16, 'Controllare link', 0, 16, 6),
(17, 'Dubbia', 0, 17, 7),
(18, 'Verificata', 1, 18, 8),
(19, 'Ottima fonte', 1, 19, 9),
(20, 'Bufala', 0, 20, 10),
(21, 'Mancano dati', 0, 21, 11),
(22, 'Confermato', 1, 22, 12);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `contenutom`
--
ALTER TABLE `contenutom`
  ADD PRIMARY KEY (`Link`),
  ADD KEY `IDn` (`IDn`);

--
-- Indici per le tabelle `etichettatura`
--
ALTER TABLE `etichettatura`
  ADD PRIMARY KEY (`IDe`),
  ADD KEY `IDj` (`IDj`);

--
-- Indici per le tabelle `junior`
--
ALTER TABLE `junior`
  ADD PRIMARY KEY (`IDj`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indici per le tabelle `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`IDn`),
  ADD KEY `IDe` (`IDe`);

--
-- Indici per le tabelle `senior`
--
ALTER TABLE `senior`
  ADD PRIMARY KEY (`IDs`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indici per le tabelle `validazione`
--
ALTER TABLE `validazione`
  ADD PRIMARY KEY (`IDv`),
  ADD KEY `IDe` (`IDe`),
  ADD KEY `IDs` (`IDs`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `etichettatura`
--
ALTER TABLE `etichettatura`
  MODIFY `IDe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT per la tabella `junior`
--
ALTER TABLE `junior`
  MODIFY `IDj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT per la tabella `news`
--
ALTER TABLE `news`
  MODIFY `IDn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT per la tabella `senior`
--
ALTER TABLE `senior`
  MODIFY `IDs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT per la tabella `validazione`
--
ALTER TABLE `validazione`
  MODIFY `IDv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `contenutom`
--
ALTER TABLE `contenutom`
  ADD CONSTRAINT `contenutom_ibfk_1` FOREIGN KEY (`IDn`) REFERENCES `news` (`IDn`);

--
-- Limiti per la tabella `etichettatura`
--
ALTER TABLE `etichettatura`
  ADD CONSTRAINT `etichettatura_ibfk_1` FOREIGN KEY (`IDj`) REFERENCES `junior` (`IDj`);

--
-- Limiti per la tabella `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`IDe`) REFERENCES `etichettatura` (`IDe`);

--
-- Limiti per la tabella `validazione`
--
ALTER TABLE `validazione`
  ADD CONSTRAINT `validazione_ibfk_1` FOREIGN KEY (`IDe`) REFERENCES `etichettatura` (`IDe`),
  ADD CONSTRAINT `validazione_ibfk_2` FOREIGN KEY (`IDs`) REFERENCES `senior` (`IDs`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
