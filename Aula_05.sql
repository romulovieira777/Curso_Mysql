/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;
    
/* Selecionando Dados da Tabela */
SELECT
	Nome_Autor
FROM
	tbl_autores;

SELECT
	*
FROM
	tbl_autores;

SELECT
	Nome_Livro
FROM
	tbl_livro;
    
SELECT
	Nome_Livro,
    ISBN
FROM
	tbl_livro;