/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;

/* Excluindo uma Coluna da Tabela */
ALTER TABLE
	tbl_Livro
DROP COLUMN
	id_autor;

/* Adicionando uma Coluna na Tabela */
ALTER TABLE
	tbl_Livro
ADD
	ID_Autor SMALLINT NOT NULL;
    
/* Adicionando Chave Estrangeira na Tabela */
ALTER TABLE
	tbl_Livro
ADD CONSTRAINT
	fk_ID_Autor
FOREIGN KEY
	(ID_Autor)
REFERENCES
	tbl_autores (ID_autor);

/* Selecionando uma Tabela */
SELECT
	*
FROM
	tbl_Livro;

/* Adicionando uma Coluna na Tabela */
ALTER TABLE
	tbl_Livro
ADD
	ID_editora SMALLINT NOT NULL;

/* Adicionando Chave Estrangeira na Tabela */
ALTER TABLE
	tbl_Livro
ADD CONSTRAINT
	fk_id_editora
FOREIGN KEY
	(ID_editora)
REFERENCES
	tbl_editoras (ID_editora);