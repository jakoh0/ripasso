-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ago 04, 2025 alle 12:09
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
-- Database: `prenotazione`
--
CREATE DATABASE IF NOT EXISTS `prenotazione` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prenotazione`;

-- --------------------------------------------------------

--
-- Struttura della tabella `abbonamenti`
--

CREATE TABLE `abbonamenti` (
  `ID` int(11) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Prezzo` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `abbonamenti`
--

INSERT INTO `abbonamenti` (`ID`, `Tipo`, `Prezzo`) VALUES
(1, 'Mensile', 30.00),
(2, 'Trimestrale', 80.00),
(3, 'Semestrale', 150.00),
(4, 'Annuale', 280.00),
(5, 'Ingresso singolo', 7.50);

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti`
--

CREATE TABLE `clienti` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Cognome` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `Data_Registrazione` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `clienti`
--

INSERT INTO `clienti` (`ID`, `Nome`, `Cognome`, `Email`, `Telefono`, `Data_Registrazione`) VALUES
(1, 'Mario', 'Rossi', 'mario.rossi@email.it', '3331112222', '2024-01-10'),
(2, 'Luisa', 'Verdi', 'luisa.verdi@email.it', '3331113333', '2024-02-15'),
(3, 'Giulia', 'Bianchi', 'giulia.bianchi@email.it', '3331114444', '2024-03-01'),
(4, 'Francesco', 'Neri', 'francesco.neri@email.it', '3331115555', '2024-04-20'),
(5, 'Anna', 'Russo', 'anna.russo@email.it', '3331116666', '2024-05-10'),
(6, 'Marco', 'Ferrari', 'marco.ferrari@email.it', '3331117777', '2024-01-25'),
(7, 'Sara', 'Esposito', 'sara.esposito@email.it', '3331118888', '2024-02-12'),
(8, 'Paolo', 'Conti', 'paolo.conti@email.it', '3331119999', '2024-03-10'),
(9, 'Luca', 'Romano', 'luca.romano@email.it', '3331120000', '2024-03-15'),
(10, 'Chiara', 'Fontana', 'chiara.fontana@email.it', '3331121111', '2024-04-05'),
(11, 'Alessio', 'Greco', 'alessio.greco@email.it', '3331122222', '2024-04-12'),
(12, 'Martina', 'Marino', 'martina.marino@email.it', '3331123333', '2024-05-01'),
(13, 'Giorgio', 'Costa', 'giorgio.costa@email.it', '3331124444', '2024-06-01'),
(14, 'Isabella', 'Rizzo', 'isabella.rizzo@email.it', '3331125555', '2024-06-10'),
(15, 'Davide', 'Lombardi', 'davide.lombardi@email.it', '3331126666', '2024-06-15'),
(16, 'Valentina', 'Moretti', 'valentina.moretti@email.it', '3331127777', '2024-07-01'),
(17, 'Simone', 'Barbieri', 'simone.barbieri@email.it', '3331128888', '2024-07-03'),
(18, 'Elena', 'Pellegrini', 'elena.pellegrini@email.it', '3331129999', '2024-07-10'),
(19, 'Andrea', 'Galli', 'andrea.galli@email.it', '3331130000', '2024-07-15'),
(20, 'Serena', 'De Luca', 'serena.deluca@email.it', '3331131111', '2024-07-20');

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti_abbonamenti`
--

CREATE TABLE `clienti_abbonamenti` (
  `Data_Inizio` date NOT NULL,
  `Data_Fine` date NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `ID_Abbonamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `clienti_abbonamenti`
--

INSERT INTO `clienti_abbonamenti` (`Data_Inizio`, `Data_Fine`, `ID_Cliente`, `ID_Abbonamento`) VALUES
('2024-01-10', '2024-02-10', 1, 1),
('2024-02-15', '2024-05-15', 2, 2),
('2024-03-01', '2024-09-01', 3, 3),
('2024-04-20', '2025-04-20', 4, 4),
('2024-05-10', '2024-05-10', 5, 5),
('2024-01-25', '2024-02-25', 6, 1),
('2024-02-12', '2024-05-12', 7, 2),
('2024-03-10', '2024-09-10', 8, 3),
('2024-03-15', '2025-03-15', 9, 4),
('2024-04-05', '2024-04-05', 10, 5),
('2024-04-12', '2024-07-12', 11, 2),
('2024-05-01', '2024-11-01', 12, 3),
('2024-06-01', '2025-06-01', 13, 4),
('2024-06-10', '2024-06-10', 14, 5),
('2024-06-15', '2024-09-15', 15, 2),
('2024-07-01', '2025-01-01', 16, 3),
('2024-07-03', '2025-07-03', 17, 4),
('2024-07-10', '2024-07-10', 18, 5),
('2024-07-15', '2024-10-15', 19, 2),
('2024-07-20', '2025-07-20', 20, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `piscine`
--

CREATE TABLE `piscine` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Numero_Vasche` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `piscine`
--

INSERT INTO `piscine` (`ID`, `Nome`, `Numero_Vasche`) VALUES
(1, 'Piscina Comunale A', 3),
(2, 'Piscina AcquaSport', 4),
(3, 'Piscina BlueWave', 2),
(4, 'Piscina Olimpica', 8),
(5, 'Piscina Relax', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `prenotazioni`
--

CREATE TABLE `prenotazioni` (
  `Data_Prenotazione` date NOT NULL,
  `Ora_Inizio` time NOT NULL,
  `Ora_Fine` time NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `ID_Piscina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `prenotazioni`
--

INSERT INTO `prenotazioni` (`Data_Prenotazione`, `Ora_Inizio`, `Ora_Fine`, `ID_Cliente`, `ID_Piscina`) VALUES
('2025-08-08', '14:00:00', '15:00:00', 11, 2),
('2025-08-21', '18:00:00', '19:00:00', 12, 1),
('2025-08-04', '11:00:00', '12:00:00', 7, 5),
('2025-08-08', '15:00:00', '16:00:00', 18, 3),
('2025-08-18', '11:00:00', '12:00:00', 7, 1),
('2025-08-20', '10:00:00', '11:00:00', 14, 2),
('2025-08-01', '16:00:00', '17:00:00', 1, 4),
('2025-08-09', '15:00:00', '16:00:00', 1, 5),
('2025-08-01', '14:00:00', '15:00:00', 1, 2),
('2025-08-17', '11:00:00', '12:00:00', 7, 1),
('2025-08-27', '14:00:00', '15:00:00', 17, 5),
('2025-08-10', '12:00:00', '13:00:00', 10, 1),
('2025-08-06', '11:00:00', '12:00:00', 19, 5),
('2025-08-26', '08:00:00', '09:00:00', 16, 1),
('2025-08-20', '15:00:00', '16:00:00', 12, 1),
('2025-08-05', '14:00:00', '15:00:00', 7, 3),
('2025-08-18', '18:00:00', '19:00:00', 3, 3),
('2025-08-14', '16:00:00', '17:00:00', 18, 1),
('2025-08-28', '13:00:00', '14:00:00', 16, 1),
('2025-08-23', '17:00:00', '18:00:00', 12, 2),
('2025-08-07', '17:00:00', '18:00:00', 16, 5),
('2025-08-21', '11:00:00', '12:00:00', 3, 1),
('2025-08-29', '12:00:00', '13:00:00', 7, 2),
('2025-08-12', '08:00:00', '09:00:00', 4, 1),
('2025-08-05', '15:00:00', '16:00:00', 7, 1),
('2025-08-16', '08:00:00', '09:00:00', 13, 1),
('2025-08-15', '12:00:00', '13:00:00', 14, 5),
('2025-08-12', '14:00:00', '15:00:00', 17, 5),
('2025-08-18', '18:00:00', '19:00:00', 1, 5),
('2025-08-16', '08:00:00', '09:00:00', 8, 4),
('2025-08-13', '09:00:00', '10:00:00', 17, 3),
('2025-08-16', '11:00:00', '12:00:00', 4, 5),
('2025-08-23', '09:00:00', '10:00:00', 12, 5),
('2025-08-02', '11:00:00', '12:00:00', 2, 5),
('2025-08-03', '16:00:00', '17:00:00', 5, 1),
('2025-08-11', '11:00:00', '12:00:00', 12, 2),
('2025-08-11', '15:00:00', '16:00:00', 5, 1),
('2025-08-27', '14:00:00', '15:00:00', 6, 1),
('2025-08-06', '13:00:00', '14:00:00', 3, 3),
('2025-08-26', '17:00:00', '18:00:00', 20, 3),
('2025-08-02', '11:00:00', '12:00:00', 8, 5),
('2025-08-27', '11:00:00', '12:00:00', 9, 3),
('2025-08-06', '11:00:00', '12:00:00', 7, 5),
('2025-08-28', '13:00:00', '14:00:00', 8, 2),
('2025-08-28', '15:00:00', '16:00:00', 17, 1),
('2025-08-11', '08:00:00', '09:00:00', 9, 3),
('2025-08-12', '11:00:00', '12:00:00', 5, 1),
('2025-08-22', '12:00:00', '13:00:00', 9, 2),
('2025-08-03', '11:00:00', '12:00:00', 8, 1),
('2025-08-27', '10:00:00', '11:00:00', 12, 1),
('2025-08-16', '15:00:00', '16:00:00', 2, 3),
('2025-08-26', '08:00:00', '09:00:00', 1, 3),
('2025-08-25', '14:00:00', '15:00:00', 7, 2),
('2025-08-22', '12:00:00', '13:00:00', 13, 2),
('2025-08-19', '08:00:00', '09:00:00', 9, 1),
('2025-08-23', '14:00:00', '15:00:00', 12, 4),
('2025-08-02', '18:00:00', '19:00:00', 7, 4),
('2025-08-19', '09:00:00', '10:00:00', 9, 5),
('2025-08-20', '08:00:00', '09:00:00', 6, 3),
('2025-08-22', '13:00:00', '14:00:00', 14, 1),
('2025-08-17', '16:00:00', '17:00:00', 13, 1),
('2025-08-29', '12:00:00', '13:00:00', 16, 5),
('2025-08-27', '17:00:00', '18:00:00', 13, 4),
('2025-08-15', '18:00:00', '19:00:00', 11, 3),
('2025-08-26', '18:00:00', '19:00:00', 18, 4),
('2025-08-11', '14:00:00', '15:00:00', 2, 2),
('2025-08-15', '10:00:00', '11:00:00', 7, 4),
('2025-08-05', '15:00:00', '16:00:00', 12, 4),
('2025-08-19', '16:00:00', '17:00:00', 7, 3),
('2025-08-24', '12:00:00', '13:00:00', 8, 5),
('2025-08-30', '16:00:00', '17:00:00', 12, 5),
('2025-08-06', '09:00:00', '10:00:00', 1, 1),
('2025-08-24', '17:00:00', '18:00:00', 12, 4),
('2025-08-25', '15:00:00', '16:00:00', 19, 2),
('2025-08-18', '13:00:00', '14:00:00', 1, 1),
('2025-08-24', '12:00:00', '13:00:00', 12, 5),
('2025-08-05', '14:00:00', '15:00:00', 14, 2),
('2025-08-10', '10:00:00', '11:00:00', 15, 4),
('2025-08-07', '09:00:00', '10:00:00', 4, 5),
('2025-08-21', '17:00:00', '18:00:00', 19, 2),
('2025-08-27', '18:00:00', '19:00:00', 16, 3),
('2025-08-14', '08:00:00', '09:00:00', 16, 1),
('2025-08-22', '18:00:00', '19:00:00', 9, 3),
('2025-08-15', '13:00:00', '14:00:00', 14, 4),
('2025-08-27', '18:00:00', '19:00:00', 16, 1),
('2025-08-29', '12:00:00', '13:00:00', 17, 1),
('2025-08-11', '11:00:00', '12:00:00', 12, 2),
('2025-08-20', '13:00:00', '14:00:00', 5, 1),
('2025-08-23', '14:00:00', '15:00:00', 6, 2),
('2025-08-26', '17:00:00', '18:00:00', 20, 2),
('2025-08-12', '17:00:00', '18:00:00', 5, 3),
('2025-08-21', '14:00:00', '15:00:00', 3, 3),
('2025-08-26', '16:00:00', '17:00:00', 2, 2),
('2025-08-20', '17:00:00', '18:00:00', 15, 4),
('2025-08-14', '15:00:00', '16:00:00', 15, 1),
('2025-08-11', '09:00:00', '10:00:00', 3, 5),
('2025-08-20', '12:00:00', '13:00:00', 13, 1),
('2025-08-09', '11:00:00', '12:00:00', 8, 3),
('2025-08-24', '17:00:00', '18:00:00', 3, 4),
('2025-08-18', '12:00:00', '13:00:00', 16, 3);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `abbonamenti`
--
ALTER TABLE `abbonamenti`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `clienti`
--
ALTER TABLE `clienti`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `clienti_abbonamenti`
--
ALTER TABLE `clienti_abbonamenti`
  ADD KEY `ID_Cliente` (`ID_Cliente`),
  ADD KEY `ID_Abbonamento` (`ID_Abbonamento`);

--
-- Indici per le tabelle `piscine`
--
ALTER TABLE `piscine`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `prenotazioni`
--
ALTER TABLE `prenotazioni`
  ADD KEY `ID_Cliente` (`ID_Cliente`),
  ADD KEY `ID_Piscina` (`ID_Piscina`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `clienti_abbonamenti`
--
ALTER TABLE `clienti_abbonamenti`
  ADD CONSTRAINT `Clienti_Abbonamenti_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `clienti` (`ID`),
  ADD CONSTRAINT `Clienti_Abbonamenti_ibfk_2` FOREIGN KEY (`ID_Abbonamento`) REFERENCES `abbonamenti` (`ID`);

--
-- Limiti per la tabella `prenotazioni`
--
ALTER TABLE `prenotazioni`
  ADD CONSTRAINT `Prenotazioni_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `clienti` (`ID`),
  ADD CONSTRAINT `Prenotazioni_ibfk_2` FOREIGN KEY (`ID_Piscina`) REFERENCES `piscine` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
