-- Active: 1753538096979@@127.0.0.1@3306@transport_aerien
DROP DATABASE transport_aerien;
CREATE DATABASE IF NOT EXISTS transport_aerien;
USE transport_aerien;

-- SELECT auteur_id, COUNT(*) AS nb_livres
-- FROM livres
-- GROUP BY auteur_id
-- HAVING COUNT(*) > 1;

/*Exercice 2*/
-- Petit 1 (Sans aide) Afficher toutes les colonnes de la table avions
SELECT * 
FROM avions;
-- Petit 2 (Sans aide) Afficher les modèles et constructeurs des avions
SELECT modele, constructeur 
FROM avions;
-- Petit 3 (Sans aide) Afficher les capacités des avions qui sont supérieures à 300
SELECT * 
FROM avions 
WHERE capacite > 300;
-- Petit 4 (Sans aide) Afficher les avions dont l'autonomie est inférieure à 7000
SELECT *
FROM avions
WHERE autonomie_km < 7000;
-- Petit 5 (Sans aide) Afficher les avions qui ne sont pas en services
SELECT *
FROM avions
WHERE en_service = FALSE;
-- Petit 6 (Sans aide) Sélectionner les avions dont leurs constructeurs est Boeing
SELECT *
FROM avions
WHERE constructeur = 'Boeing';
-- Petit 7 (Aide de l'ia -_-") Afficher la capacité des avions entre 100 et 300
SELECT *
FROM avions
WHERE capacite BETWEEN 100 AND 300;
-- Petit 8 (Sans aide) Afficher tous les constructeurs des avions
SELECT DISTINCT constructeur
FROM avions;
-- Petit 9 (Sans aide) Montrer l'autonomie des avions ans l'ordre coirssant
SELECT *
FROM avions
ORDER BY autonomie_km ASC ;
-- Petti 10 (Sans aide) Afficher les capacités des avions dans l'ordre décroissant
SELECT *
FROM avions
ORDER BY capacite DESC;
-- Petit 11 Selection des avions ayant les plus grandes autonomies
SELECT *
FROM avions
ORDER BY autonomie_km DESC
LIMIT 3;
-- Petit 12 Afficher les 5 avions avec les plus faibles capacités
SELECT *
FROM avions
ORDER BY capacite ASC
LIMIT 5;
-- Petit 13 Afficher les avions dont l'autonomie est comprise entre 6000 et 13000
SELECT *
FROM avions
WHERE autonomie_km >= 6000 AND autonomie_km <= 13000;
/*Exercice 2*/

DROP TABLE avions;
 -- Table des Avions
CREATE TABLE IF NOT EXISTS avions (
    ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
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