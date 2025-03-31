
DROP DATABASE IF EXISTS invitation;
CREATE DATABASE invitation CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE invitation;
DROP TABLE IF EXISTS personne;
CREATE TABLE personne(
    id int NOT NULL AUTO_INCREMENT, 
    prenom VARCHAR(100) NOT NULL,
    nom VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    inscription DATE NOT NULL,
    etat TINYINT NOT NULL DEFAULT 1, -- 1 ok 0 pas ok
    statut ENUM('membre','non membre') NOT NULL DEFAULT 'non membre',
    cv TEXT,
    salaire INT NOT NULL,
    CONSTRAINT pk_personne PRIMARY KEY(id)
) ENGINE=InnoDB; 
 


('BRAD', 'PITT', 60, '1970-01-01',1 ,'non membre',   'lorem ipsum' ,2000000),
('Gerorge', 'CLONEY',60, '1999-01-01', 1 ,'membre',  'juste beau', 4000000),
('Jean', 'DUJARDIN', 51,'1994-01-01', 0 , 'membre','brice de nice', 1000000);

# 2 SELECT MAX(salaire) AS salaireLePlusHaut from  personne;
# 3 SELECT MIN(salaire) AS salaireLePlusBas from  personne;

# SELECT personne, prenom MIN(salaire) AS salaireLePlusBas from  personne ;
# SELECT personne, prenom MAX(salaire) AS salaireLePlusBas from  personne ;

# 5 SELECT AVG(salaire) AS salaireMoyen FROM personne ;
# 6 SELECT COUNT(id) AS nb_personne FROM personne;

#SELECT * FROM personne WHERE salaire BETWEEN 100000 AND 4000000 ;

# 8 SELECT id, UPPER(date) from personne;