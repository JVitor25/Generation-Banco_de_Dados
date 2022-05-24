CREATE DATABASE db_brecho;

USE db_brecho;

CREATE TABLE tb_itens(
	id bigint(5) AUTO_INCREMENT,
    nome_item varchar(30) not NULL,
    marca varchar(20),
    valor decimal(4,2),
    dia boolean, -- dia que foi feito a venda
    
    PRIMARY KEY (id)
);

INSERT INTO tb_itens (nome_item) VALUES(); -- Verdura

SELECT * from tb_itens; -- conferindo se ta tudo certinho

SELECT * from tb_itens where valor > 50;

SELECT * from tb_itens where valor < 50;

SELECT * from tb_itens where id = 2;

UPDATE tb_itens SET nome_item = "Calça" where id = 4;

DELETE FROM tb_itens where id = 2;

DELETE FROM tb_itens where id = 2;

SELECT * from tb_itens;