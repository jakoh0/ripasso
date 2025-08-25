-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Ago 22, 2025 alle 16:08
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `FitZoneDB`
--
CREATE DATABASE IF NOT EXISTS `FitZoneDB` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `FitZoneDB`;

-- --------------------------------------------------------

--
-- Struttura della tabella `Cliente`
--

CREATE TABLE `Cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `data_nascita` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `Cliente`
--

INSERT INTO `Cliente` (`id_cliente`, `nome`, `cognome`, `data_nascita`, `email`, `telefono`) VALUES
(1, 'Mario', 'Rossi', '1995-03-21', 'mario.rossi@example.com', '3331234567'),
(2, 'Lucia', 'Bianchi', '1989-08-12', 'lucia.bianchi@example.com', '3399876543'),
(3, 'Giulia', 'Verdi', '2000-05-15', 'giulia.verdi@example.com', '3452345678'),
(4, 'Luca', 'Neri', '1992-11-30', 'luca.neri@example.com', '3204567890'),
(5, 'Francesco', 'Romano', '1998-07-07', 'francesco.romano@example.com', '3317654321'),
(16, 'Alessio', 'D Amico', '1990-01-05', 'alessio.damico@example.com', '3330100001'),
(17, 'Beatrice', 'Fabbri', '1988-02-14', 'beatrice.fabbri@example.com', '3330100002'),
(18, 'Carlo', 'Galli', '1992-03-22', 'carlo.galli@example.com', '3330100003'),
(19, 'Daniela', 'Marini', '1995-04-10', 'daniela.marini@example.com', '3330100004'),
(20, 'Edoardo', 'Russo', '1987-05-30', 'edoardo.russo@example.com', '3330100005'),
(21, 'Federica', 'Ricci', '1991-06-18', 'federica.ricci@example.com', '3330100006'),
(22, 'Giacomo', 'Conti', '1993-07-25', 'giacomo.conti@example.com', '3330100007'),
(23, 'Helena', 'Santoro', '1986-08-12', 'helena.santoro@example.com', '3330100008'),
(24, 'Ilaria', 'Ferrari', '1994-09-03', 'ilaria.ferrari@example.com', '3330100009'),
(25, 'Jacopo', 'Bianco', '1990-10-19', 'jacopo.bianco@example.com', '3330100010'),
(26, 'Laura', 'Grassi', '1992-11-27', 'laura.grassi@example.com', '3330100011'),
(27, 'Marco', 'Rossi', '1996-12-05', 'marco.rossi@example.com', '3330100012'),
(28, 'Nadia', 'Bianchi', '1989-01-17', 'nadia.bianchi@example.com', '3330100013'),
(29, 'Omar', 'Villa', '1991-02-23', 'omar.villa@example.com', '3330100014'),
(30, 'Paola', 'Fontana', '1993-03-31', 'paola.fontana@example.com', '3330100015'),
(31, 'Quentin', 'Neri', '1994-04-08', 'quentin.neri@example.com', '3330100016'),
(32, 'Roberta', 'Pellegrini', '1988-05-16', 'roberta.pellegrini@example.com', '3330100017'),
(33, 'Stefano', 'Barbieri', '1995-06-24', 'stefano.barbieri@example.com', '3330100018'),
(34, 'Teresa', 'Moretti', '1990-07-02', 'teresa.moretti@example.com', '3330100019'),
(35, 'Ulisse', 'Giorgi', '1987-08-14', 'ulisse.giorgi@example.com', '3330100020');

-- --------------------------------------------------------

--
-- Struttura della tabella `Corso`
--

CREATE TABLE `Corso` (
  `id_corso` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `numero_massimo_partecipanti` int(11) DEFAULT NULL,
  `id_istruttore` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `Corso`
--

INSERT INTO `Corso` (`id_corso`, `nome`, `numero_massimo_partecipanti`, `id_istruttore`) VALUES
(1, 'Yoga', 20, 2),
(2, 'Spinning', 25, 1),
(3, 'CrossFit', 15, 3),
(4, 'Pilates', 18, 2),
(5, 'HIIT', 12, 1),
(6, 'Yoga Base', 20, 4),
(7, 'Spinning Plus', 25, 1),
(8, 'CrossFit Pro', 15, 3),
(9, 'Pilates Core', 18, 2),
(10, 'HIIT Power', 12, 5),
(11, 'Zumba Move', 30, 6),
(12, 'Stretching Gentle', 20, 6),
(13, 'Meditazione Zen', 15, 8),
(14, 'Functional Fit', 22, 7),
(15, 'Cardio Blast', 25, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `Esercizio`
--

CREATE TABLE `Esercizio` (
  `id_esercizio` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descrizione` text DEFAULT NULL,
  `durata_minuti` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `Esercizio`
--

INSERT INTO `Esercizio` (`id_esercizio`, `nome`, `descrizione`, `durata_minuti`) VALUES
(1, 'Squat', 'Esercizio per gambe e glutei', 15),
(2, 'Plank', 'Addominali isometrici', 5),
(3, 'Push-up', 'Pettorali e tricipiti', 10),
(4, 'Burpees', 'Total body cardio', 12),
(5, 'Salto con la corda', 'Cardio per riscaldamento', 8),
(6, 'Affondi', 'Allenamento gambe', 10),
(7, 'Meditazione guidata', 'Rilassamento e respirazione', 15),
(8, 'Affondi frontali', 'Esercizio per cosce e glutei', 12),
(9, 'Affondi laterali', 'Focus interno coscia', 12),
(10, 'Goblet Squat', 'Squat con peso', 15),
(11, 'Push-up classico', 'Pettorali e tricipiti', 10),
(12, 'Burpees avanzati', 'Total body cardio potenziato', 14),
(13, 'Plank laterale', 'Core e equilibrio', 6),
(14, 'Crunch obliqui', 'Addominali obliqui', 8),
(15, 'Mountain Climbers', 'Cardio + core', 10),
(16, 'Salto con la corda rapido', 'Riscaldamento cardio', 7),
(17, 'Sit-up completo', 'Addominali frontali', 9),
(18, 'Jumping Jacks', 'Cardio corpo intero', 8),
(19, 'Russian Twist', 'Core dinamico', 7),
(20, 'High Knees', 'Cardio intenso', 5),
(21, 'Mountain Hike', 'Simula camminata in salita', 12),
(22, 'Stretching gambe', 'Allungamento muscolare', 10),
(23, 'Stretching braccia', 'Allungamento spalle e braccia', 10),
(24, 'Meditazione guidata', 'Rilassamento mentale', 15),
(25, 'Respirazione profonda', 'Rilassamento respiratorio', 5),
(26, 'Burpee modificato', 'Burpee con rotolamento', 10),
(27, 'Squat isometrico', 'Tenuta statica per potenza', 8);

-- --------------------------------------------------------

--
-- Struttura della tabella `Frequenza`
--

CREATE TABLE `Frequenza` (
  `id_frequenza` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_corso` int(11) DEFAULT NULL,
  `data_presenza` date DEFAULT NULL,
  `ora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `Frequenza`
--

INSERT INTO `Frequenza` (`id_frequenza`, `id_cliente`, `id_corso`, `data_presenza`, `ora`) VALUES
(1, 1, 1, '2025-08-10', '10:00:00'),
(2, 1, 3, '2025-08-12', '18:00:00'),
(3, 2, 1, '2025-08-10', '10:00:00'),
(4, 2, 4, '2025-08-13', '15:30:00'),
(5, 3, 2, '2025-08-14', '09:00:00'),
(6, 3, 3, '2025-08-16', '18:00:00'),
(7, 4, 5, '2025-08-18', '17:00:00'),
(8, 5, 1, '2025-08-10', '10:00:00'),
(9, 5, 2, '2025-08-14', '09:00:00'),
(10, 5, 3, '2025-08-16', '18:00:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `Iscrizione`
--

CREATE TABLE `Iscrizione` (
  `id_cliente` int(11) NOT NULL,
  `id_corso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `Iscrizione`
--

INSERT INTO `Iscrizione` (`id_cliente`, `id_corso`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 4),
(3, 2),
(3, 3),
(4, 5),
(5, 1),
(5, 2),
(5, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `Istruttore`
--

CREATE TABLE `Istruttore` (
  `id_istruttore` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `specializzazione` varchar(100) DEFAULT NULL,
  `orari_disponibili` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `Istruttore`
--

INSERT INTO `Istruttore` (`id_istruttore`, `nome`, `cognome`, `specializzazione`, `orari_disponibili`) VALUES
(1, 'Paolo', 'Conti', 'Fitness e Cardio', 'Lun-Ven 9:00-12:00'),
(2, 'Sara', 'Leoni', 'Yoga e Pilates', 'Lun-Mer-Ven 15:00-18:00'),
(3, 'Marco', 'De Luca', 'CrossFit', 'Mar-Gio 17:00-20:00'),
(4, 'Ivan', 'Verdi', 'Cardio', 'Lun 9:00-13:00'),
(5, 'Lidia', 'Costa', 'Pilates', 'Mar 14:00-18:00'),
(6, 'Mauro', 'Sanna', 'CrossFit', 'Mer 16:00-20:00'),
(7, 'Noemi', 'Romano', 'Yoga', 'Gio 10:00-14:00'),
(8, 'Oliviero', 'Ferraro', 'HIIT', 'Ven 8:00-12:00'),
(9, 'Patrizia', 'Valli', 'Stretching', 'Lun-Gio 15:00-19:00'),
(10, 'Renato', 'Greco', 'Functional Training', 'Mer-Ven 13:00-17:00'),
(11, 'Sofia', 'Bellini', 'Meditazione', 'Mar-Gio 7:00-10:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `Programma`
--

CREATE TABLE `Programma` (
  `id_programma` int(11) NOT NULL,
  `nome_programma` varchar(100) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_istruttore` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `Programma`
--

INSERT INTO `Programma` (`id_programma`, `nome_programma`, `id_cliente`, `id_istruttore`) VALUES
(1, 'Dimagrimento rapido', 1, 1),
(2, 'Yoga per principianti', 2, 2),
(3, 'CrossFit intensivo', 3, 3),
(4, 'Potenziamento muscolare', 5, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `Programma_Esercizio`
--

CREATE TABLE `Programma_Esercizio` (
  `id_programma` int(11) NOT NULL,
  `id_esercizio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `Programma_Esercizio`
--

INSERT INTO `Programma_Esercizio` (`id_programma`, `id_esercizio`) VALUES
(1, 1),
(1, 4),
(1, 5),
(2, 7),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 1),
(4, 3),
(4, 6);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `Cliente`
--
ALTER TABLE `Cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indici per le tabelle `Corso`
--
ALTER TABLE `Corso`
  ADD PRIMARY KEY (`id_corso`),
  ADD KEY `id_istruttore` (`id_istruttore`);

--
-- Indici per le tabelle `Esercizio`
--
ALTER TABLE `Esercizio`
  ADD PRIMARY KEY (`id_esercizio`);

--
-- Indici per le tabelle `Frequenza`
--
ALTER TABLE `Frequenza`
  ADD PRIMARY KEY (`id_frequenza`),
  ADD UNIQUE KEY `id_cliente` (`id_cliente`,`id_corso`,`data_presenza`,`ora`),
  ADD KEY `id_corso` (`id_corso`);

--
-- Indici per le tabelle `Iscrizione`
--
ALTER TABLE `Iscrizione`
  ADD PRIMARY KEY (`id_cliente`,`id_corso`),
  ADD KEY `id_corso` (`id_corso`);

--
-- Indici per le tabelle `Istruttore`
--
ALTER TABLE `Istruttore`
  ADD PRIMARY KEY (`id_istruttore`);

--
-- Indici per le tabelle `Programma`
--
ALTER TABLE `Programma`
  ADD PRIMARY KEY (`id_programma`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_istruttore` (`id_istruttore`);

--
-- Indici per le tabelle `Programma_Esercizio`
--
ALTER TABLE `Programma_Esercizio`
  ADD PRIMARY KEY (`id_programma`,`id_esercizio`),
  ADD KEY `id_esercizio` (`id_esercizio`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `Cliente`
--
ALTER TABLE `Cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT per la tabella `Corso`
--
ALTER TABLE `Corso`
  MODIFY `id_corso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `Esercizio`
--
ALTER TABLE `Esercizio`
  MODIFY `id_esercizio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT per la tabella `Frequenza`
--
ALTER TABLE `Frequenza`
  MODIFY `id_frequenza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `Istruttore`
--
ALTER TABLE `Istruttore`
  MODIFY `id_istruttore` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `Programma`
--
ALTER TABLE `Programma`
  MODIFY `id_programma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `Corso`
--
ALTER TABLE `Corso`
  ADD CONSTRAINT `Corso_ibfk_1` FOREIGN KEY (`id_istruttore`) REFERENCES `Istruttore` (`id_istruttore`);

--
-- Limiti per la tabella `Frequenza`
--
ALTER TABLE `Frequenza`
  ADD CONSTRAINT `Frequenza_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `Cliente` (`id_cliente`),
  ADD CONSTRAINT `Frequenza_ibfk_2` FOREIGN KEY (`id_corso`) REFERENCES `Corso` (`id_corso`);

--
-- Limiti per la tabella `Iscrizione`
--
ALTER TABLE `Iscrizione`
  ADD CONSTRAINT `Iscrizione_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `Cliente` (`id_cliente`),
  ADD CONSTRAINT `Iscrizione_ibfk_2` FOREIGN KEY (`id_corso`) REFERENCES `Corso` (`id_corso`);

--
-- Limiti per la tabella `Programma`
--
ALTER TABLE `Programma`
  ADD CONSTRAINT `Programma_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `Cliente` (`id_cliente`),
  ADD CONSTRAINT `Programma_ibfk_2` FOREIGN KEY (`id_istruttore`) REFERENCES `Istruttore` (`id_istruttore`);

--
-- Limiti per la tabella `Programma_Esercizio`
--
ALTER TABLE `Programma_Esercizio`
  ADD CONSTRAINT `Programma_Esercizio_ibfk_1` FOREIGN KEY (`id_programma`) REFERENCES `Programma` (`id_programma`),
  ADD CONSTRAINT `Programma_Esercizio_ibfk_2` FOREIGN KEY (`id_esercizio`) REFERENCES `Esercizio` (`id_esercizio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
