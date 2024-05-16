CREATE DATABASE db_mercadorh;
USE db_mercadorh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL, 
email VARCHAR (255), 
salario DECIMAL (10,2),
PRIMARY KEY (id)
); 
 INSERT INTO tb_colaboradores (nome, cargo, email, salario)
 VALUES ("Gabriela", "Gerente", "gabii", 2000.00),
 ("Ana Juloia", "atendente de caixa" , "juju09@gmail.com", 1500.00),
 ("kesy", "ajudadora geral", "kesy08@gmail.com", 2000.00),
 ("Beatriz", "repositor", "biazinha09@gmail.com", 3000.00),
 ("Agatha", "padeira", "aas297@gmail.com", 5000.00);
 
 SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
 
 SELECT * FROM tb_colaboradores WHERE salario < 2000.00;
 
 SELECT * FROM tb_colaboradores;
 