
DROP DATABASE IF EXISTS zoo;
CREATE DATABASE zoo CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE zoo;
CREATE TABLE chat (
	id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL ,
    yeux VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    CONSTRAINT chat PRIMARY KEY (id)
)ENGINE = InnoDB ;

USE zoo;
TRUNCATE chat;
INSERT INTO chat(nom, yeux, age)
VALUES
('maine coon','marron',20),
('siamois','bleu',15),
('bengal','marron',18),
('scottish Fold','marron',10);


USE zoo;
# 11 SELECT  * FROM chat order by age ASC limit 1
# 10 SELECT  * FROM chat order by age DESC limit 1
# 9 SELECT count(nom) AS nom FROM chat  where yeux LIKE 'marron' (a completer)
# 8 SELECT count(id) AS nb_chat FRom chat;
# 7 SELECT AVG(age) AS age_moyen FROM chat ;

# 6 SELECT * FROM chat WHERE nom LIKE '%a%'; 
# 5 SELECT * FROM chat where  nom LIKE '%Sia%';
# 4 SELECT * FROM chat where age >11 and age <19 ;

 # 3 SELECT * FROM chat ORDER BY nom , age;



#2 SELECT * FROM chat 
#WHERE id=2;

