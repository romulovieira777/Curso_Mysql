/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca;
    
/* Selecionando Dados da Tabela */
SELECT
	Nome_Livro,
    Data_Pub
FROM
	tbl_livro
WHERE
	ID_Autor = 1;

SELECT
	ID_Autor,
    Nome_Autor
FROM
	tbl_autores
WHERE
	Sobrenome_Autor = 'Stanek';