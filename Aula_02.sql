/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca;

/* Criando Tabelas */
CREATE TABLE IF NOT EXISTS tbl_Livro (
    ID_Livro SMALLINT AUTO_INCREMENT PRIMARY KEY,
    Nome_Livro VARCHAR(50) NOT NULL,
    ISBN VARCHAR(30) NOT NULL,
    ID_Autor SMALLINT NOT NULL,
    Data_Pub DATE NOT NULL,
    Preco_Livro DECIMAL NOT NULL
);

/* Mostrar Tabelas do Banco de Dados */
SHOW TABLES;

/* Criando Tabelas */
CREATE TABLE tbl_autores (
    ID_Autor SMALLINT PRIMARY KEY,
    Nome_Autor VARCHAR(50),
    Sobrenome_Autor VARCHAR(60)
);

CREATE TABLE tbl_editoras (
    ID_Editora SMALLINT PRIMARY KEY AUTO_INCREMENT,
    Nome_Editora VARCHAR(50) NOT NULL
);