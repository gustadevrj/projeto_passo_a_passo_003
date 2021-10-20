
/* DATABASE projeto_teste_002 */
--DROP DATABASE projeto_teste_002;


CREATE DATABASE projeto_teste_002;
--utf8 - utf8mb4
--CREATE DATABASE projeto_teste_002 CHARACTER SET utf8 COLLATE utf8_general_ci;
--CREATE DATABASE projeto_teste_002 CHARACTER SET utf8mb4 COLLATE utf8_general_ci;


/* TABELA PRODUTOS - tb_produtos */
--DROP TABLE IF EXISTS `tb_produtos`;

/* TABELA CATEGORIAS - tb_categorias */
--DROP TABLE IF EXISTS `tb_categorias`;


--TABELA DE CATEGORIAS
CREATE TABLE tb_categorias( 
	id_categoria INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	categoria VARCHAR(50) NOT NULL, 
	descricao VARCHAR(250) NOT NULL 
);

--utf8 - utf8mb4
/*
CREATE TABLE tb_categorias( 
	id_categoria INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	categoria VARCHAR(50) NOT NULL, 
	descricao VARCHAR(250) NOT NULL 
) ENGINE=InnoDB CHARACTER SET=utf8mb4;
*/


--TABELA CATEGORIAS
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Padaria", "Setor de Pães e Bolos");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Carnes", "Setor de Carnes e Peixes");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Mercearia", "Setor de Mercearia em Geral");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Matinais", "Setor de Matinais em Geral");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Frios e Laticínios", "Setor de Queijos, Presuntos, Salames, Iogurtes, Leites, Etc");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Bebidas", "Setor de Bebidas em Geral");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Utilidades Domésticas", "Setor de Utilidades");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Limpeza", "Setor de Material de Limpza");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Higiene", "Setor de Higiene em Geral");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Hortifruti", "Setor de Frutas, Legumes e Verduras");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Pet Shop", "Setor de Pet Shop em Geral");


--TABELA DE PRODUTOS
CREATE TABLE tb_produtos( 
	id_produto INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	produto VARCHAR(50) NOT NULL, 
	id_categoria INT NOT NULL,
	FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria) 
) ENGINE=InnoDB CHARACTER SET=utf8mb4;


--TABELA PRODUTOS
INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Pão Francês", 1);
INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Pão de Forma", 1);
INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Broa de Milho", 1);

INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Bife", 2);
INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Frango", 2);
INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Peixe", 2);

--INSERT INTO tb_produtos (produto, id_categoria) VALUES ("XXXXXXXXXX", 3);

--INSERT INTO tb_produtos (produto, id_categoria) VALUES ("XXXXXXXXXX", 4);

INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Iogurte", 5);
INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Queijo Minas", 5);
INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Salame", 5);

INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Refrigerante", 6);
INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Vinho", 6);
INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Mate", 6);

--INSERT INTO tb_produtos (produto, id_categoria) VALUES ("XXXXXXXXXX", 7);

INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Sabão", 8);
INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Cloro", 8);
INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Pinho", 8);

INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Sabonete", 9);
INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Pasta de Dente", 9);
INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Desodorante", 9);

INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Banana", 10);
INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Morango", 10);
INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Alface", 10);

INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Ração", 11);
INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Coleira", 11);
INSERT INTO tb_produtos (produto, id_categoria) VALUES ("Anti Pulga", 11);
