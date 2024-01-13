CREATE TABLE pessoas(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
cpf VARCHAR(11) NOT NULL UNIQUE,
PRIMARY KEY(id)
);

CREATE TABLE computadores(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
marca VARCHAR(50) NOT NULL,
modelo VARCHAR(50) NOT NULL,
pessoa_id INT UNSIGNED NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(pessoa_id) REFERENCES pessoas(id),
UNIQUE KEY (pessoa_id)
);

SELECT * FROM pessoas;
SELECT * FROM computadores;

INSERT INTO pessoas (nome,cpf)
VALUES ("Nathan","11111111111"),("Eduardo","22222222222"),("Janaina","33333333333"),("Alicia","44444444444"),("Gabriel","55555555555");

SELECT * FROM pessoas;

INSERT INTO computadores (marca,modelo,pessoa_id)
VALUES ("Acer","Aspire 3",2),("Acer","Aspire 5",5),("Lenovo","ThinkPad",3),("Lenovo","IdeaPad", 4),("Samsung","Samsung Book 2",1);

SELECT * FROM computadores;

SELECT *
FROM pessoas p
INNER JOIN computadores c on p.id = c.pessoa_id;