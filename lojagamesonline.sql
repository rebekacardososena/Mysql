USE  db_generation_game_online;

CREATE TABLE  tb_classes(
id BIGINT(5) AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(40)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (50),
arma VARCHAR (100),
habilidade VARCHAR (100),
fraqueza VARCHAR (100),
defesa INT,
ataque INT,
categoria_id BIGINT
FOREIGN KEY (classe_id)REFERENCES tb_classe(id)
);
SELECT * FROM tb_personagens;
INSERT INTO tb_personagens(nome, arma, habilidade, fraqueza, defesa, ataque, classe_id)VALUES("Super Mario","Chave de fenda", "Encanador", " Princesa", 3000, 2000, 1);
INSERT INTO tb_personagens(nome, arma, habilidade, fraqueza, defesa, ataque, classe_id)VALUES("Bob Esponja","Espatula", "Chapeiro", "Agua viva",4000, 1500, 2);
INSERT INTO tb_personagens(nome, arma, habilidade, fraqueza, defesa, ataque, classe_id)VALUES("Finn","Mochila", "Aventureiro", " Princesa Jujuba", 1000, 4000, 3);
INSERT INTO tb_personagens(nome, arma, habilidade, fraqueza, defesa, ataque, classe_id)VALUES("Ponyo","Balde de Praia", "Virar peixinha", " Papai", 5000, 3000, 4);
INSERT INTO tb_personagens(nome, arma, habilidade, fraqueza, defesa, ataque, classe_id)VALUES("Mickey","Orelhas", "Ser um rato", " Miney", 1000, 2000, 5);
INSERT INTO tb_personagens(nome, arma, habilidade, fraqueza, defesa, ataque, classe_id)VALUES("Cebolinha","Planos infaliveis", "Irritar  a Monica", " Sansão", 2000, 2000, 6);
INSERT INTO tb_personagens(nome, arma, habilidade, fraqueza, defesa, ataque, classe_id)VALUES("Gatinho Harry","Unhas", "Ser fofo", "Lucas", 1000, 1000, 7);
INSERT INTO tb_personagens(nome, arma, habilidade, fraqueza, defesa, ataque, classe_id)VALUES("Lucas"," Aperriar", "Ser Criança", " Gatinho Harry", 2000, 1000, 8);

SELECT * FROM tb_personagens WHERE ataque >2000; 
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.id =2 ;

DROP TABLE tb_personagens;

