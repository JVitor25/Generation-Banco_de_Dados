CREATE DATABASE db_quitandageneration;

USE db_quitandageneration;

CREATE TABLE tb_produtosquit(
	id bigint(5) AUTO_INCREMENT,
    nome_produto varchar(20) not NULL,
    valor decimal(4,2), -- em quilos
    fruta boolean,
    legume boolean,
    verdura boolean,
    quantidade decimal(4,2), -- em quilos
    
    PRIMARY KEY (id)
);

INSERT INTO tb_produtosquit (nome_produto,valor,fruta,legume,verdura,quantidade) VALUES("Couve",2.39,false,false,true,11.2); -- Verdura
INSERT INTO tb_produtosquit (nome_produto,valor,fruta,legume,verdura,quantidade) VALUES("Banana",2.39,true,false,false,15.3); -- fruta.
INSERT INTO tb_produtosquit (nome_produto,valor,fruta,legume,verdura,quantidade) VALUES("Tomate",2.39,false,true,false,23.1); -- fruta (mas coloquei como legume).
INSERT INTO tb_produtosquit (nome_produto,valor,fruta,legume,verdura,quantidade) VALUES("Abóbora",2.39,false,true,false,5.7); -- legume.
INSERT INTO tb_produtosquit (nome_produto,valor,fruta,legume,verdura,quantidade) VALUES("Cará",2.39,false,true,false,7.9); -- legume.
INSERT INTO tb_produtosquit (nome_produto,valor,fruta,legume,verdura,quantidade) VALUES("Alface",2.39,false,false,true,6.8); -- Verdura.
INSERT INTO tb_produtosquit (nome_produto,valor,fruta,legume,verdura,quantidade) VALUES("Maça",2.39,true,false,false,3.6); -- fruta.
INSERT INTO tb_produtosquit (nome_produto,valor,fruta,legume,verdura,quantidade) VALUES("Batata",2.39,false,true,false,3.12); -- legume.

SELECT * from tb_produtosquit; -- conferindo se ta tudo certinho

SELECT * from tb_produtosquit where fruta = true;

SELECT * from tb_produtosquit where legume = true;

UPDATE tb_produtosquit SET fruta = true, legume = false where id = 3;

set sql_safe_updates = 0; -- desabilitando safemode.

DELETE FROM tb_produtosquit where verdura = true;

SELECT * from tb_produtosquit;