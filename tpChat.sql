DROP DATABASE IF EXISTS zoo;

CREATE DATABASE zoo CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

use zoo ; 

DROP TABLE IF EXISTS chat;

CREATE TABLE chat (
	id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL ,
    yeu VARCHAR(50) NOT NULL,
    age TINYINT NOT NULL,
    CONSTRAINT pk_chat PRIMARY KEY (id)
)ENGINE = InnoDB ;

select * from chat;

#Tinyint de -127 a 127