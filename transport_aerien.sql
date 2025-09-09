-- Active: 1753538096979@@127.0.0.1@3306@transport_aerien
DROP DATABASE transport_aerien;
CREATE DATABASE IF NOT EXISTS transport_aerien;
USE transport_aerien;

-- SELECT auteur_id, COUNT(*) AS nb_livres
-- FROM livres
-- GROUP BY auteur_id
-- HAVING COUNT(*) > 1;

/*Exercice2 */
-- Petit 1
SELECT * 
FROM avions;
-- Petit 2
SELECT modele, constructeur 
FROM avions;
-- Petit 3
SELECT * 
FROM avions 
WHERE capacite > 300;
-- Petit 4
SELECT *
FROM avions
WHERE autonomie_km < 7000;
-- Petit 5
SELECT *
FROM avions
WHERE en_service = FALSE;
-- Petit 6
SELECT *
FROM avions
WHERE constructeur = 'Boeing';
-- Petit 7

-- Petit 8

-- Petit 9
SELECT *
FROM avions
ORDER BY autonomie_km ASC ;
-- Petti 10
SELECT *
FROM avions
ORDER BY capacite DESC;
-- Petit 11

-- Petit 12

-- Petit 13
/*Exercice 2*/

 -- Table des Avions
CREATE TABLE IF NOT EXISTS avions (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    modele VARCHAR(100) NOT NULL,
    constructeur VARCHAR(100) NOT NULL,
    capacite INT NOT NULL,
    autonomie_km INT NOT NULL,
    en_service BOOLEAN NOT NULL
) ENGINE=InnoDB;

-- Insertions des données 
INSERT INTO avions (modele, constructeur, capacite, autonomie_km, en_service) 
VALUES
('A320', 'Airbus', 180, 6150, TRUE),
('A380', 'Airbus', 853, 15200, TRUE),
('737 MAX', 'Boeing', 210, 6570, TRUE),
('747-400', 'Boeing', 416, 13450, FALSE),
('CSeries 300', 'Bombardier', 160, 6112, TRUE),
('MD-11', 'McDonnell Douglas', 293, 12555, FALSE),
('Concorde', 'Aérospatiale/BAC', 92, 7250, FALSE),
('E190', 'Embraer', 114, 4260, TRUE),
('CRJ900', 'Bombardier', 90, 2956, TRUE),
('Il-96', 'Ilyushin', 262, 11000, FALSE);