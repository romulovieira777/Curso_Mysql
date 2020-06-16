/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;

/* Selecionando Dados Usando o REGEXP que comecem com F ou S */
SELECT
	Nome_Livro
FROM
	tbl_livro
WHERE
	Nome_Livro
REGEXP
	'^[FS]';

/* Selecionando Dados que não comecem com F ou S */
SELECT
	Nome_Livro
FROM
	tbl_livro
WHERE
	Nome_Livro
REGEXP
	'^[^FS]';

/* Selecionando Dados que terminem com N ou G */    
SELECT
	Nome_Livro
FROM
	tbl_livro
WHERE
	Nome_Livro
REGEXP
	'[ng]$';
    
/* Selecionando Dados que comecem com a letra F ou S ou com a Sequência MI */
SELECT
	Nome_Livro
FROM
	tbl_livro
WHERE
	Nome_Livro
REGEXP
	'^[FS]|Mi';