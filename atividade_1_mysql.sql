CREATE DATABASE db_empresa;
USE db_empresa;

CREATE TABLE tb_rh(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_funcionario VARCHAR (255),
salario DECIMAL (8,2),
cargo VARCHAR (255),
presenca BOOLEAN
);

SELECT * FROM tb_rh;
INSERT INTO tb_rh(nome_funcionario,salario,cargo,presenca)VALUES("Ana Vilela",2000.00,"Zeladora",false);
INSERT INTO tb_rh(nome_funcionario,salario,cargo,presenca)VALUES("Bruno Urbano",2500.00,"Promotor",true);
INSERT INTO tb_rh(nome_funcionario,salario,cargo,presenca)VALUES("Camila Miranda",3000.00,"Advogada",true);
INSERT INTO tb_rh(nome_funcionario,salario,cargo,presenca)VALUES("Dayane Santos",4500.00,"Ceo",true);
INSERT INTO tb_rh(nome_funcionario,salario,cargo,presenca)VALUES("Rebeka Sena",5000.00,"Java Developer",true);
INSERT INTO tb_rh(nome_funcionario,salario,cargo,presenca)VALUES("João Silva",1500.00,"Jovem Aprendiz",false);


SELECT * FROM tb_rh WHERE salario > 2000.00;
SELECT * FROM tb_rh WHERE salario < 2000.00;
UPDATE tb_rh SET presenca = true WHERE id = 5