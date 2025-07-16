-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Creato il: Mag 22, 2025 alle 22:00
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
-- Database: `scuola`
--
CREATE DATABASE IF NOT EXISTS `verifica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `verifica`;

-- --------------------------------------------------------

--
-- Struttura della tabella `citta`
--

CREATE TABLE `citta` (
  `CodiceCatastale` char(4) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Provincia` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `citta`
--

INSERT INTO `citta` (`CodiceCatastale`, `Nome`, `Provincia`) VALUES
('B354', 'Bologna', 'BO'),
('D612', 'Napoli', 'NA'),
('D969', 'Firenze', 'FI'),
('E092', 'Gorgo al Monticano', 'TV'),
('E715', 'Lecce', 'LE'),
('F205', 'Milano', 'MI'),
('F770', 'Motta di Livenza', 'TV'),
('F839', 'Genova', 'GE'),
('F999', 'Oderzo', 'TV'),
('G273', 'Palermo', 'PA'),
('G846', 'Ponte di Piave', 'TV'),
('H501', 'Roma', 'RM'),
('H823', 'San Dona di Piave', 'TV'),
('L219', 'Torino', 'TO'),
('M007', 'Trento', 'TN');

-- --------------------------------------------------------

--
-- Struttura della tabella `classi`
--

CREATE TABLE `classi` (
  `Classe` varchar(4) NOT NULL,
  `Descrizione` varchar(255) DEFAULT NULL,
  `Indirizzo` varchar(4) DEFAULT 'IT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `classi`
--

INSERT INTO `classi` (`Classe`, `Descrizione`, `Indirizzo`) VALUES
('3A', NULL, 'IT'),
('3B', NULL, 'IT'),
('3C', NULL, 'IT'),
('4A', NULL, 'IT'),
('4B', NULL, 'IT'),
('4C', NULL, 'IT'),
('5A', NULL, 'IT'),
('5B', NULL, 'IT'),
('5C', NULL, 'IT');

-- --------------------------------------------------------

--
-- Struttura della tabella `materia`
--

CREATE TABLE `materia` (
  `id_Materia` int(11) NOT NULL,
  `Materia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `materia`
--

INSERT INTO `materia` (`id_Materia`, `Materia`) VALUES
(1, 'Italiano'),
(2, 'Matematica'),
(3, 'Informatica'),
(4, 'Inglese'),
(5, 'Filosofia');

-- --------------------------------------------------------

--
-- Struttura della tabella `provincie`
--

CREATE TABLE `provincie` (
  `Codice` char(2) NOT NULL,
  `Provincia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `provincie`
--

INSERT INTO `provincie` (`Codice`, `Provincia`) VALUES
('BO', 'Bologna'),
('FI', 'Firenze'),
('GE', 'Genova'),
('LE', 'Lecce'),
('MI', 'Milano'),
('NA', 'Napoli'),
('PA', 'Palermo'),
('RM', 'Roma'),
('TN', 'Trento'),
('TO', 'Torino'),
('TV', 'Treviso'),
('VE', 'Venezia');

-- --------------------------------------------------------

--
-- Struttura della tabella `studenti`
--

CREATE TABLE `studenti` (
  `CF` char(16) NOT NULL,
  `DataNascita` date NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Cognome` varchar(50) NOT NULL,
  `CittaNascita` char(4) NOT NULL,
  `Sesso` char(1) NOT NULL,
  `Classe` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `studenti`
--

INSERT INTO `studenti` (`CF`, `DataNascita`, `Nome`, `Cognome`, `CittaNascita`, `Sesso`, `Classe`) VALUES
('BARALE05B23D969', '2005-08-23', 'Alessandro', 'Barbieri', 'D969', 'M', '3A'),
('BARFRA08B59F839', '2008-10-19', 'Francesca', 'Barbieri', 'F839', 'F', '5B'),
('BARGIU05B45D969', '2005-09-05', 'Giulia', 'Barbieri', 'D969', 'F', '5B'),
('BARLUC06B45F205', '2006-11-05', 'Luca', 'Barbieri', 'F205', 'F', '3B'),
('BARMAT07B24L219', '2007-12-24', 'Matteo', 'Barbieri', 'L219', 'M', '5B'),
('BARSIM06A06E715', '2006-01-06', 'Simone', 'Barbieri', 'E715', 'M', '5B'),
('BIAALI08B19H501', '2008-02-19', 'Alice', 'Bianchi', 'H501', 'M', '3A'),
('BIACAM07B56H501', '2007-09-16', 'Camilla', 'Bianchi', 'H501', 'F', '5B'),
('BIACHI04B67F839', '2004-10-27', 'Chiara', 'Bianchi', 'F839', 'F', '5B'),
('BIACHI06B50D612', '2006-11-10', 'Chiara', 'Bianchi', 'D612', 'F', '3A'),
('BIAMAR05B47M007', '2005-02-07', 'Martina', 'Bianchi', 'M007', 'F', '3B'),
('CONVAL05B67F839', '2005-02-27', 'Valentina', 'Conti', 'F839', 'F', '5B'),
('COSALI05B27F839', '2005-05-27', 'Alice', 'Costa', 'F839', 'M', '5B'),
('COSCHI05A48B354', '2005-01-08', 'Chiara', 'Costa', 'B354', 'F', '3A'),
('COSELE08B50F839', '2008-05-10', 'Elena', 'Costa', 'F839', 'F', '5B'),
('COSFED04B19H501', '2004-06-19', 'Federico', 'Costa', 'H501', 'M', '5B'),
('COSSTE07B26D612', '2007-03-26', 'Stefano', 'Costa', 'D612', 'M', '3A'),
('DE FED05B03G273', '2005-03-03', 'Federico', 'De Luca', 'G273', 'M', '5A'),
('ESPCHI04B61M007', '2004-09-21', 'Chiara', 'Esposito', 'M007', 'F', '3B'),
('ESPDAV08B21E715', '2008-10-21', 'Davide', 'Esposito', 'E715', 'M', '3B'),
('ESPSIM07B30B354', '2007-05-30', 'Simone', 'Esposito', 'B354', 'M', '3B'),
('FABCHI07B62E715', '2007-02-22', 'Chiara', 'Fabbri', 'E715', 'F', '4A'),
('FABELE04B69F839', '2004-08-29', 'Elena', 'Fabbri', 'F839', 'F', '3A'),
('FABGAB08B30F205', '2008-08-30', 'Gabriele', 'Fabbri', 'F205', 'M', '3C'),
('FONCHI05B54D612', '2005-10-14', 'Chiara', 'Fontana', 'D612', 'F', '3A'),
('FONDAV06B01L219', '2006-03-01', 'Davide', 'Fontana', 'L219', 'M', '5A'),
('FONGIU05B50H501', '2005-04-10', 'Giulia', 'Fontana', 'H501', 'F', '4A'),
('FONMAT06A11E715', '2006-01-11', 'Matteo', 'Fontanstudentia', 'E715', 'M', '4B'),
('FONVAL07B60G273', '2007-02-20', 'Valentina', 'Fontana', 'G273', 'F', '3C'),
('GALFRA05B64D969', '2005-09-24', 'Francesca', 'Gallo', 'D969', 'F', '3A'),
('GALGAB06A08D969', '2006-01-08', 'Gabriele', 'Gallo', 'D969', 'M', '4C'),
('GALGIU06B47L219', '2006-11-07', 'Giulia', 'Gallo', 'L219', 'F', '4B'),
('GREDAV04B03M007', '2004-10-03', 'Davide', 'Greco', 'M007', 'M', '3A'),
('GREFED07B05F205', '2007-11-05', 'Federico', 'Greco', 'F205', 'M', '4C'),
('GREGAB07B26M007', '2007-11-26', 'Gabriele', 'Greco', 'M007', 'M', '4B'),
('GRESTE05B21L219', '2005-04-21', 'Stefano', 'Greco', 'L219', 'M', '3A'),
('LEOELE08B47G273', '2008-09-07', 'Elena', 'Leone', 'G273', 'F', '5B'),
('LEOFRA04B66H501', '2004-07-26', 'Francesca', 'Leone', 'H501', 'F', '4B'),
('LEOMAR04B24D612', '2004-09-24', 'Marco', 'Leone', 'D612', 'M', '4A'),
('LEOMAT05B01M007', '2005-12-01', 'Matteo', 'Leone', 'M007', 'M', '4B'),
('LEOMAT05B27G273', '2005-11-27', 'Matteo', 'Leone', 'G273', 'M', '3A'),
('MARALE07B28M007', '2007-12-28', 'Alessandro', 'Marchetti', 'M007', 'M', '5B'),
('MARELE05B55M007', '2005-12-15', 'Elena', 'Marchetti', 'M007', 'F', '5A'),
('MARELE07B69G273', '2007-05-29', 'Elena', 'Marchetti', 'G273', 'F', '4A'),
('MARLUC04B41E715', '2004-02-01', 'Luca', 'Marchetti', 'E715', 'F', '5B'),
('MARNIC08B69F205', '2008-08-29', 'Nicola', 'Marchetti', 'F205', 'F', '3A'),
('MARSTE05B17F205', '2005-04-17', 'Stefano', 'Marchetti', 'F205', 'M', '3B'),
('MARSTE07B06B354', '2007-12-06', 'Stefano', 'Marchetti', 'B354', 'M', '4B'),
('MORDAV05B18D969', '2005-12-18', 'Davide', 'Moretti', 'D969', 'M', '4A'),
('MORFED06B18G273', '2006-03-18', 'Federico', 'Moretti', 'G273', 'M', '3B'),
('MORILA05B55E715', '2005-02-15', 'Ilaria', 'Moretti', 'E715', 'F', '3B'),
('MORMAT06B16B354', '2006-02-16', 'Matteo', 'Moretti', 'B354', 'M', '5A'),
('MORSTE08B09D612', '2008-06-09', 'Stefano', 'Moretti', 'D612', 'M', '3B'),
('MORVAL04B53G273', '2004-07-13', 'Valentina', 'Moretti', 'G273', 'F', '3B'),
('NERALI06B26F205', '2006-07-26', 'Alice', 'Neri', 'F205', 'M', '3B'),
('NERDAV04B04B354', '2004-03-04', 'Davide', 'Neri', 'B354', 'M', '5A'),
('NERDAV08B23B354', '2008-08-23', 'Davide', 'Neri', 'B354', 'M', '4B'),
('NERELE06A44H501', '2006-01-04', 'Elena', 'Neri', 'H501', 'F', '3C'),
('NERGAB06B25B354', '2006-11-25', 'Gabriele', 'Neri', 'B354', 'M', '4B'),
('NERGIU06B50M007', '2006-03-10', 'Giulia', 'Neri', 'M007', 'F', '5B'),
('NERNIC04B49L219', '2004-11-09', 'Nicola', 'Neri', 'L219', 'F', '3C'),
('NERVAL04B69F839', '2004-08-29', 'Valentina', 'Neri', 'F839', 'F', '5B'),
('NERVAL06B55M007', '2006-09-15', 'Valentina', 'Neri', 'M007', 'F', '5A'),
('NERVAL08B46G273', '2008-07-06', 'Valentina', 'Neri', 'G273', 'F', '4B'),
('NERVAL08B59F205', '2008-12-19', 'Valentina', 'Neri', 'F205', 'F', '5A'),
('PELALI06B11L219', '2006-04-11', 'Alice', 'Pellegrini', 'L219', 'M', '3C'),
('PELDAV07B01L219', '2007-04-01', 'Davide', 'Pellegrini', 'L219', 'M', '5A'),
('PELFED04B19F205', '2004-06-19', 'Federico', 'Pellegrini', 'F205', 'M', '5A'),
('PELFRA07B53L219', '2007-10-13', 'Francesca', 'Pellegrini', 'L219', 'F', '3C'),
('PELSAR04B70D969', '2004-06-30', 'Sara', 'Pellegrini', 'D969', 'F', '4B'),
('PELSAR07A46L219', '2007-01-06', 'Sara', 'Pellegrini', 'L219', 'F', '5B'),
('RIVLUC08B59F839', '2008-08-19', 'Luca', 'Riva', 'F839', 'F', '3C'),
('RIVMAR07B47D969', '2007-03-07', 'Martina', 'Riva', 'D969', 'F', '4C'),
('RIZCAM08B42H501', '2008-04-02', 'Camilla', 'Rizzo', 'H501', 'F', '5A'),
('RIZCHI08B46G273', '2008-09-06', 'Chiara', 'Rizzo', 'G273', 'F', '3C'),
('RIZCHI08B66F839', '2008-06-26', 'Chiara', 'Rizzo', 'F839', 'F', '4A'),
('RIZFED07B04M007', '2007-12-04', 'Federico', 'Rizzo', 'M007', 'M', '3C'),
('RIZILA05A67L219', '2005-01-27', 'Ilaria', 'Rizzo', 'L219', 'F', '5A'),
('RIZMAR06B07E715', '2006-09-07', 'Marco', 'Rizzo', 'E715', 'M', '4C'),
('RIZMAR06B22B354', '2006-04-22', 'Marco', 'Rizzo', 'B354', 'M', '5B'),
('RIZMAR07B65E715', '2007-02-25', 'Martina', 'Rizzo', 'E715', 'F', '3C'),
('RIZSAR07A70L219', '2007-01-30', 'Sara', 'Rizzo', 'L219', 'F', '3C'),
('RIZSAR07B44B354', '2007-04-04', 'Sara', 'Rizzo', 'B354', 'F', '5A'),
('RIZSIM06B16B354', '2006-09-16', 'Simone', 'Rizzo', 'B354', 'M', '4C'),
('RIZSTE06B02L219', '2006-12-02', 'Stefano', 'Rizzo', 'L219', 'M', '3C'),
('ROMLUC04B55H501', '2004-03-15', 'Luca', 'Romano', 'H501', 'F', '3C'),
('ROMMAR04B64F839', '2004-02-24', 'Martina', 'Romano', 'F839', 'F', '5B'),
('ROMMAR04B70M007', '2004-09-30', 'Martina', 'Romano', 'M007', 'F', '4A'),
('ROMNIC05B50L219', '2005-08-10', 'Nicola', 'Romano', 'L219', 'F', '5A'),
('ROSALI06A31D612', '2006-01-31', 'Alice', 'Rossi', 'D612', 'M', '4C'),
('ROSCAM04B52H501', '2004-06-12', 'Camilla', 'Rossi', 'H501', 'F', '4A'),
('ROSGAB04B15G273', '2004-05-15', 'Gabriele', 'Rossi', 'G273', 'M', '5A'),
('ROSILA04B66D969', '2004-06-26', 'Ilaria', 'Rossi', 'D969', 'F', '4A'),
('ROSLUC07B59E715', '2007-05-19', 'Luca', 'Rossi', 'E715', 'F', '4B'),
('ROSSTE06B17F839', '2006-12-17', 'Stefano', 'Rossi', 'F839', 'M', '5B'),
('VERCHI08B58G273', '2008-07-18', 'Chiara', 'Verdi', 'G273', 'F', '4A'),
('VERFED08B08B354', '2008-08-08', 'Federico', 'Verdi', 'B354', 'M', '4C'),
('VERMAR05B01H501', '2005-12-01', 'Marco', 'Verdi', 'H501', 'M', '4C'),
('VERNIC07B57B354', '2007-03-17', 'Nicola', 'Verdi', 'B354', 'F', '4B'),
('VERSTE08B26L219', '2008-02-26', 'Stefano', 'Verdi', 'L219', 'M', '5B');

-- --------------------------------------------------------

--
-- Struttura della tabella `voti`
--

CREATE TABLE `voti` (
  `id_Voto` int(11) NOT NULL,
  `CF_Studente` char(50) NOT NULL DEFAULT '0',
  `id_Materia` int(11) NOT NULL,
  `Voto` decimal(4,2) NOT NULL,
  `TipologiaVerifica` enum('Orale','Scritto') NOT NULL DEFAULT 'Scritto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `voti`
--

INSERT INTO `voti` (`id_Voto`, `CF_Studente`, `id_Materia`, `Voto`, `TipologiaVerifica`) VALUES
(0, 'PELALI06B11L219', 5, 7.00, 'Orale'),
(8, 'COSALI05B27F839', 3, 8.00, 'Scritto'),
(9, 'BIAALI08B19H501', 3, 4.00, 'Scritto'),
(10, 'ROSALI06A31D612', 1, 8.00, 'Orale'),
(11, 'PELALI06B11L219', 4, 7.25, 'Scritto'),
(12, 'BIAALI08B19H501', 5, 5.00, 'Scritto'),
(13, 'VERFED08B08B354', 2, 6.00, 'Orale'),
(14, 'ROSCAM04B52H501', 3, 4.50, 'Scritto'),
(15, 'FABCHI07B62E715', 2, 8.00, 'Scritto'),
(18, 'BIACAM07B56H501', 5, 5.00, 'Scritto'),
(19, 'VERCHI08B58G273', 1, 7.00, 'Orale'),
(20, 'BIAALI08B19H501', 3, 6.00, 'Scritto'),
(21, 'COSELE08B50F839', 5, 7.00, 'Orale'),
(24, 'ROSCAM04B52H501', 4, 5.00, 'Scritto'),
(25, 'ROSCAM04B52H501', 2, 9.00, 'Orale'),
(27, 'ROSCAM04B52H501', 4, 8.00, 'Scritto'),
(28, 'COSELE08B50F839', 5, 7.00, 'Scritto'),
(29, 'COSELE08B50F839', 5, 5.00, 'Scritto'),
(30, 'COSELE08B50F839', 3, 8.00, 'Orale'),
(31, 'BIACAM07B56H501', 3, 6.00, 'Scritto'),
(32, 'BIAALI08B19H501', 5, 4.00, 'Scritto');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `citta`
--
ALTER TABLE `citta`
  ADD PRIMARY KEY (`CodiceCatastale`),
  ADD KEY `FK_citta_provincie` (`Provincia`);

--
-- Indici per le tabelle `classi`
--
ALTER TABLE `classi`
  ADD PRIMARY KEY (`Classe`);

--
-- Indici per le tabelle `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_Materia`);

--
-- Indici per le tabelle `provincie`
--
ALTER TABLE `provincie`
  ADD PRIMARY KEY (`Codice`);

--
-- Indici per le tabelle `studenti`
--
ALTER TABLE `studenti`
  ADD PRIMARY KEY (`CF`),
  ADD KEY `FK_studente_citta` (`CittaNascita`),
  ADD KEY `FK_studenti_classi` (`Classe`);

--
-- Indici per le tabelle `voti`
--
ALTER TABLE `voti`
  ADD PRIMARY KEY (`id_Voto`),
  ADD KEY `FK_voti_studenti` (`CF_Studente`),
  ADD KEY `FK_voti_materia` (`id_Materia`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `materia`
--
ALTER TABLE `materia`
  MODIFY `id_Materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `voti`
--
ALTER TABLE `voti`
  MODIFY `id_Voto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `citta`
--
ALTER TABLE `citta`
  ADD CONSTRAINT `FK_citta_provincie` FOREIGN KEY (`Provincia`) REFERENCES `provincie` (`Codice`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `studenti`
--
ALTER TABLE `studenti`
  ADD CONSTRAINT `FK_studente_citta` FOREIGN KEY (`CittaNascita`) REFERENCES `citta` (`CodiceCatastale`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_studenti_classi` FOREIGN KEY (`Classe`) REFERENCES `classi` (`Classe`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `voti`
--
ALTER TABLE `voti`
  ADD CONSTRAINT `FK_voti_materia` FOREIGN KEY (`id_Materia`) REFERENCES `materia` (`id_Materia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_voti_studenti` FOREIGN KEY (`CF_Studente`) REFERENCES `studenti` (`CF`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
