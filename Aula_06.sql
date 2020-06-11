/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;

/* Selecionando Dados da Tabela */
SELECT
	*
FROM
	tbl_livro
ORDER BY
	Nome_Livro ASC;

SELECT
	*
FROM
	tbl_livro
ORDER BY
	Nome_Livro DESC;

SELECT
	Nome_Livro,
    ID_Editora
FROM
	tbl_livro
ORDER BY
	ID_editora;

SELECT
	Nome_Livro,
    Preco_Livro
FROM
	tbl_livro
ORDER BY
	Preco_Livro ASC;