/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;

/* Selecão de Dados com Between */
SELECT
	*
FROM
	tbl_livro
WHERE
	Data_Pub
BETWEEN
	'20040517' AND '20110517';

SELECT
	Nome_Livro AS Livro,
    Preco_Livro AS Preço
FROM
	tbl_livro
WHERE
	Preco_Livro
BETWEEN
	40.00 AND 60.00;