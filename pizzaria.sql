CREATE DATABASE db_pizzaria_dom;

USE db_pizzaria_dom;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao_categoria VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT,
    sabor_pizza VARCHAR(255) NOT NULL,
    preco_pizza DECIMAL(6,2),
    tamanho_pizza  VARCHAR(255) NOT NULL,
    id_categoria BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY  (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES 
('Vegana', 'Pizzas sem origem animal.'),
('Carnes', 'Pizzas com diversas opções de carnes, como pepperoni, presunto e bacon.'),
('Frutos do Mar', 'Pizzas com frutos do mar.'),
('Queijos', 'Pizzas com diferentes tipos de queijos.'),
('Especiais', 'Pizzas especial do Chefe.');

INSERT INTO tb_pizzas (sabor_pizza, preco_pizza, tamanho_pizza, id_categoria) VALUES
('Pizza Margherita', 40.50, 'Média', 1),
('Pizza Pepperoni', 50.00, 'Grande', 2),
('Pizza de Camarão', 45.00, 'Média', 3),
('Pizza Quatro Queijos', 30.00, 'Pequena', 4),
('Pizza Portuguesa', 60.50, 'Grande', 2),
('Pizza Vegana', 50.00, 'Média', 1),
('Pizza Frutos do Mar Especial', 70.00, 'Grande', 3),
('Pizza Especial do Chefe', 43.00, 'Grande', 5);

SELECT * FROM tb_pizzas WHERE preco_pizza > 45;

SELECT * FROM tb_pizzas WHERE preco_pizza BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE sabor_pizza LIKE '%M%';

SELECT *  FROM tb_pizzas  INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id;

SELECT *  FROM tb_pizzas  INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id WHERE id_categoria = 2;tb_categorias