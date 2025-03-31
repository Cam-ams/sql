DROP DATABASE IF EXISTS netflix ;
CREATE DATABASE netflix CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE netflix ;

CREATE TABLE film (
id INT NOT NULL auto_increment,
titre VARCHAR(50),
sortie VARCHAR(50),
categ_id INT NOT NULL,
CONSTRAINT pk_film PRIMARY KEY (id)
)ENGINE = InnoDB; 

CREATE TABLE categ( 
id INT NOT NULL,
nom VARCHAR(50),
CONSTRAINT pk_categ PRIMARY KEY (id)
)ENGINE = InnoDB;

USE netflix;

INSERT INTO film ( titre, sortie,categ_id)
VALUES
('Star wars', '25-05-1977',1),
('The Matrix', '1999-06-23',1),
('PULP FICTION','1994/10/26',2);


INSERT INTO categ (nom)
VALUES
('science fiction'),
('thriller');

