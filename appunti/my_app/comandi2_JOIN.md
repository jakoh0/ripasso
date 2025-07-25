# 📚 Comandi SQL JOIN – Struttura Sintattica

## 🔧 Comandi per la struttura del database

## `LEFT JOIN`

 Restituisce tutte le righe della tabella di sinistra, anche se non ci sono corrispondenze nella tabella di destra. Se non trova corrispondenza, riempie con NULL.

```sql
SELECT t1.col1, t2.col2, ...
FROM tabella1 AS t1
LEFT JOIN tabella2 AS t2
  ON t1.col_comune = t2.col_comune;


-- Esempio
SELECT studenti.Nome, studenti.Cognome, voti.Voto
FROM studenti
LEFT JOIN voti ON studenti.CF = voti.CF_Studente;
```

## `RIGHT JOIN`

Restituisce tutte le righe della tabella di destra, anche se non ci sono corrispondenze nella tabella di sinistra.

```sql

SELECT t1.col1, t2.col2, ...
FROM tabella1 AS t1
RIGHT JOIN tabella2 AS t2
  ON t1.col_comune = t2.col_comune;



-- Esempio
SELECT studenti.Nome, studenti.Cognome, voti.Voto
FROM studenti
RIGHT JOIN voti ON studenti.CF = voti.CF_Studente;
```

## `INNER JOIN`

 Restituisce solo le righe che hanno corrispondenza in entrambe le tabelle.

```sql
SELECT t1.col1, t2.col2, ...
FROM tabella1 AS t1
INNER JOIN tabella2 AS t2
  ON t1.col_comune = t2.col_comune;


-- Esempio
SELECT studenti.Nome, studenti.Cognome, voti.Voto
FROM studenti
INNER JOIN voti ON studenti.CF = voti.CF_Studente;
```
