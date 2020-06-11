/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;

/* Contagem dos Registros */
SELECT
	COUNT(*)
FROM
	tbl_autores;

/* Contagem Distinta */
SELECT
	COUNT(DISTINCT id_autor)
FROM
	tbl_livro;

/* Preço mais Alto */
SELECT
	MAX(Preco_Livro)
FROM
	tbl_livro;

/* Preço mais Baixo */
SELECT
	MIN(Preco_Livro)
FROM
	tbl_livro;

/* Média dos Preços */
SELECT
	AVG(Preco_Livro)
FROM
	tbl_livro;

/* Soma Total dos Valores */
SELECT
	SUM(Preco_Livro)
FROM
	tbl_livro;