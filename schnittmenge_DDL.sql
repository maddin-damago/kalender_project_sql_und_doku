DROP DATABASE IF EXISTS schnittmenge_db; 
CREATE DATABASE schnittmenge_db; 
USE schnittmenge_db;

CREATE TABLE kunde (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vorname VARCHAR(50) NOT NULL,
    nachname VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefon VARCHAR(20) NOT NULL
);

CREATE TABLE mitarbeiter (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ma_name VARCHAR(50) NOT NULL
);

CREATE TABLE leistungen (
    id INT AUTO_INCREMENT PRIMARY KEY,
    leistung VARCHAR(100) NOT NULL,
    dauer_in_min INT NOT NULL,
    preis_in_eur INT NOT NULL,
    leistung_status BOOLEAN DEFAULT 1
);

CREATE TABLE termin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    kunde_id INT NOT NULL,
    mitarbeiter_id INT NULL,
    start_datum DATETIME NOT NULL,
    end_datum DATETIME NOT NULL,
    CONSTRAINT fk_termin_kunde FOREIGN KEY (kunde_id) REFERENCES kunde(id) ON DELETE CASCADE,
    CONSTRAINT fk_termin_mitarbeiter FOREIGN KEY (mitarbeiter_id) REFERENCES mitarbeiter(id) ON DELETE SET NULL
);

CREATE TABLE ma_leistungen (
    mitarbeiter_id INT NOT NULL,
    leistung_id INT NOT NULL,
    PRIMARY KEY (mitarbeiter_id, leistung_id),
    CONSTRAINT fk_mal_mitarbeiter FOREIGN KEY (mitarbeiter_id) REFERENCES mitarbeiter(id) ON DELETE CASCADE,
    CONSTRAINT fk_mal_leistung FOREIGN KEY (leistung_id) REFERENCES leistungen(id) ON DELETE CASCADE
);

CREATE TABLE termin_leistungen (
    termin_id INT NOT NULL,
    leistung_id INT NOT NULL,
    PRIMARY KEY (termin_id, leistung_id),
    CONSTRAINT fk_tl_termin FOREIGN KEY (termin_id) REFERENCES termin(id) ON DELETE CASCADE,
    CONSTRAINT fk_tl_leistung FOREIGN KEY (leistung_id) REFERENCES leistungen(id) ON DELETE CASCADE
);