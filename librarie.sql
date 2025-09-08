-- Active: 1753538096979@@127.0.0.1@3306@librairie
DROP DATABASE librairie;
CREATE DATABASE IF NOT EXISTS librairie;
USE librairie;

SET sql_mode= '';

DROP TABLES IF EXISTS livres;
DROP TABLES IF EXISTS auteurs;
DROP TABLES IF EXISTS categories;

CREATE TABLE IF NOT EXISTS auteurs (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR (100) NOT NULL,
  email VARCHAR (100) UNIQUE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS categories (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS livres (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titre VARCHAR(200) NOT NULL,
  year_publication YEAR NOT NULL,
  auteur_id INT NOT NULL,
  categorie_id INT NOT NULL,
  FOREIGN KEY (auteur_id) REFERENCES auteurs(id),
  FOREIGN KEY (categorie_id) REFERENCES categories(id)
) ENGINE=InnoDB;

-- Insertion des données

INSERT INTO auteurs (nom, email) 
VALUES 
('George Sand','gsand@example.com'),
('Victor Hugo','vhugo@example.com'),
('Alexandre Dumas','adumas@example.com'),
('Gustave Flaubert','gflaubert@example.com'),
('Marcel Pagnol','mpagnol@example.com');

INSERT INTO categories (nom) 
VALUES
('Roman Historique'),
('Poésie'),
('Théâtre'),
('Roman Réaliste'),
('Littérature Jeunesse');

INSERT INTO livres (titre, year_publication, auteur_id, categorie_id)
VALUES
-- George Sand
('La Mare au Diable', 1846, 1, 1),
('Indiana', 1832, 1, 1),
-- Victor Hugo
('Les Misérables', 1862, 2, 1),
('Les Contemplations', 1856, 2, 2),
-- Alexandre Dumas
('Le Comte de Monte-Cristo', 1845, 3, 1),
('Les Trois Mousquetaires', 1844, 3, 1),
-- Gustave Flaubert
('Madame Bovary', 1857, 4, 4),
('Salammbô', 1862, 4, 1),
-- Marcel Pagnol
('La Gloire de mon Père', 1957, 5, 5),
('Marius', 1929, 5, 3);

SELECT date_publication FROM livres
ORDER BY date_publication ASC ;