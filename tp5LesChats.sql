DROP DATABASE IF EXISTS spa;
CREATE DATABASE spa CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
use spa ; 

CREATE TABLE chat (
	id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL ,
    yeux VARCHAR(50) NOT NULL,
    age TINYINT NOT NULL,
    couleur_id INT NULL,
    CONSTRAINT pk_chat PRIMARY KEY (id)
)ENGINE = InnoDB ;



CREATE TABLE couleur (
id INT NOT NULL AUTO_INCREMENT,
nom VARCHAR(50) NOT NULL,
CONSTRAINT pk_couleur PRIMARY KEY (id)
)ENGINE = InnoDB;

# lie les deux tables
ALTER TABLE chat ADD CONSTRAINT fk_couleur FOREIGN KEY (couleur_id) REFERENCES couleur(id);

INSERT INTO couleur (nom) VALUES
('marron'),
('bleu'),
('vert');

INSERT INTO chat(nom, yeux,age)
VALUES 
('Maine Coon', 'marron', 20),
('Siamois' ,'bleu',15),
('Benegal','marron',18),
('Scottish Fold', 'marron', 10);

USE spa;
SELECT 
chat.id AS id,
chat.nom AS nom,
couleur.nom AS yeux,
chat.age AS age 
FROM chat
INNER JOIN couleur 
ON chat.couleur_id = couleur.id