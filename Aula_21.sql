/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;


/* Criando uma View */
CREATE VIEW
	vw_LivrosAutores
AS
	SELECT
		tbl_Livro.Nome_Livro AS Livro,
        tbl_autores.Nome_Autor AS Autor
	FROM
		tbl_livro
	INNER JOIN
		tbl_autores
	ON
		tbl_livro.ID_Autor = tbl_autores.ID_Autor;


/* Chamando uma View */
SELECT
	Livro,
    Autor
FROM
	vw_LivrosAutores
ORDER BY
	Autor;
    

/* Excluir uma View */
DROP VIEW
	vw_LivrosAutores;