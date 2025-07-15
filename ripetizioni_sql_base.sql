
CREATE TABLE studenti (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    cognome VARCHAR(50),
    eta INT,
    classe VARCHAR(10)
);

INSERT INTO studenti VALUES
(1, 'Luca', 'Rossi', 17, '4A'),
(2, 'Giulia', 'Bianchi', 18, '5B'),
(3, 'Marco', 'Verdi', 16, '3C'),
(4, 'Sara', 'Gialli', 19, '5A'),
(5, 'Elena', 'Neri', 18, '5B');

CREATE TABLE corsi (
    id INT PRIMARY KEY,
    nome_corso VARCHAR(50),
    docente VARCHAR(50)
);

INSERT INTO corsi VALUES
(1, 'Matematica', 'Prof. Conti'),
(2, 'Inglese', 'Prof.ssa Villa'),
(3, 'Storia', 'Prof. De Luca');

CREATE TABLE iscrizioni (
    id_studente INT,
    id_corso INT,
    voto INT,
    FOREIGN KEY (id_studente) REFERENCES studenti(id),
    FOREIGN KEY (id_corso) REFERENCES corsi(id)
);

INSERT INTO iscrizioni VALUES
(1, 1, 28),
(1, 2, 25),
(2, 1, 30),
(2, 3, 27),
(3, 2, 24),
(4, 1, 29),
(5, 2, 26),
(5, 3, 30);
