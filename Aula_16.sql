/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;

/* Selecionando Dados da Tabela com Like e Not Like */
SELECT
	*
FROM
	tbl_livro
WHERE
	Nome_Livro
LIKE
	'F%';

SELECT
	*
FROM
	tbl_livro
WHERE
	Nome_Livro
NOT LIKE
	'S%';
    
SELECT
	Nome_Livro
FROM
	tbl_livro
WHERE
	Nome_Livro
LIKE
	'_i%';