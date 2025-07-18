# 📚 Principali Comandi SQL – Struttura Sintattica

## 🔧 Comandi per la struttura del database

## `CREATE TABLE`

```sql
CREATE TABLE nome_tabella (
  col1 TIPO [NOT NULL],
  col2 TIPO [DEFAULT val],
  ...,
  PRIMARY KEY(col1,...)
);
```

&nbsp;

## `INSERT INTO`

```sql
-- Parametri precisi
INSERT INTO tabella (col1, col2, ...)
VALUES (val1, val2, ...);

-- Senza colonne (tutti i valori in ordine)
INSERT INTO tabella
VALUES (val1, val2, ...);

--Esempio
INSERT INTO clienti (id, nome, cognome, email, data_registrazione)
VALUES (1, 'Luca', 'Rossi', '<luca.rossi@email.com>', '2025-07-17');

```

---

&nbsp;

## `ALTER TABLE`

Il comando `ALTER TABLE` serve a **modificare la struttura di una tabella esistente**. I casi d’uso più comuni sono:

---

### ✅ Aggiungere colonne (`ADD COLUMN`)

```sql
ALTER TABLE nome_tabella
ADD nome_colonna TIPO [NOT NULL] [DEFAULT valore];
```

Esempio:

```sql
ALTER TABLE clienti
ADD email VARCHAR(100);
```

---

### ❌ Rimuovere colonne (`DROP COLUMN`)

```sql
ALTER TABLE nome_tabella
DROP COLUMN nome_colonna;
```

Esempio:

```sql
ALTER TABLE clienti
DROP COLUMN email;
```

---

### ✏️ Modificare una colonna esistente (`ALTER COLUMN`)

```sql
ALTER TABLE nome_tabella
ALTER COLUMN nome_colonna TYPE NUOVO_TIPO;
```

Esempio:

```sql
ALTER TABLE clienti
MODIFY email VARCHAR(255) NOT NULL;
```

---

### 🧱 Rinominare una colonna (`RENAME COLUMN`)

```sql
ALTER TABLE nome_tabella
RENAME COLUMN vecchio_nome TO nuovo_nome;
```

Esempio:

```sql
ALTER TABLE clienti
RENAME COLUMN email TO indirizzo_email;
```

---

### 🧾 Rinominare la tabella (`RENAME TO`)

```sql
ALTER TABLE vecchio_nome
RENAME TO nuovo_nome;
```

Esempio:

```sql
ALTER TABLE clienti
RENAME TO utenti;
```

---

### 🎯 Aggiungere una chiave primaria (`ADD PRIMARY KEY`)

```sql
ALTER TABLE nome_tabella
ADD PRIMARY KEY (colonna1 [, colonna2, ...]);
```

Esempio:

```sql
ALTER TABLE clienti
ADD PRIMARY KEY (id);
```

---

### 🔓 Aggiungere chiavi esterne (`ADD FOREIGN KEY`)

```sql
ALTER TABLE nome_tabella
ADD CONSTRAINT nome_vincolo
FOREIGN KEY (colonna_locale)
REFERENCES tabella_esterna(colonna_esterna);
```

Esempio:

```sql
ALTER TABLE ordini
ADD CONSTRAINT fk_cliente
FOREIGN KEY (id_cliente)
REFERENCES clienti(id);
```

---

> ⚠️ In MySQL, per rimuovere chiavi primarie o esterne:

```sql
ALTER TABLE nome_tabella
DROP PRIMARY KEY;

ALTER TABLE nome_tabella
DROP FOREIGN KEY nome_vincolo;
```

---

&nbsp;

## `DROP/TRUNCATE`

```sql
DROP TABLE nome_tabella;

TRUNCATE TABLE nome_tabella;

```

## `UPDATE`

```sql
UPDATE tabella
SET col1 = val1, col2 = val2, ...
WHERE condizione;
```

## `DELETE`

```sql
-- Elimina con condizione
DELETE FROM tabella
WHERE condizione;

-- Elimina tutte le righe
DELETE FROM tabella;
```
