-- Active: 1753538096979@@127.0.0.1@3306@my_first_bdd
CREATE DATABASE my_first_bdd;
USE my_first_bdd;

CREATE TABLE my_first_table (
  id INT AUTO_INCREMENT PRIMARY KEY,
  libelle VARCHAR(100),
  date_ajout DATETIME DEFAULT CURRENT_TIMESTAMP
)
