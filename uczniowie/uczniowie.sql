DROP TABLE IF EXISTS uczniowie;
CREATE TABLE uczniowie
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    imie TEXT,
    nazwisko TEXT,
    plec BOOLEAN,
    id_klasa INTEGER NOT NULL,
    FOREIGN KEY (id_klasa) REFERENCES klasy(id) ON DELETE NO ACTION ON UPDATE NO ACTION
);

DROP TABLE IF EXISTS klasy;
CREATE TABLE klasy
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    klasa TEXT (2),
    rok_naboru INTEGER,
    rok_matury INTEGER
);
