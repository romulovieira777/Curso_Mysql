/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;

/* Selecionando Dados da Tabela */
SELECT
	Nome_Livro AS Livros,
    Preco_Livro AS Preço
FROM
	tbl_livro;