/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;

/* Selecionando Dados de uma Tabela */
SELECT
	*
FROM
	tbl_livro
WHERE
	ID_Livro > 2
AND
	ID_Autor < 3;

SELECT
	*
FROM
	tbl_livro
WHERE
	ID_Livro > 2
OR
	ID_Autor < 3;

SELECT
	*
FROM
	tbl_livro
WHERE
	ID_Livro > 2
AND NOT
	ID_Autor < 3;