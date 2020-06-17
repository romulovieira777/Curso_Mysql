/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;


/* Selecionando Dados de uma Tabela Usando Left Join */
SELECT
	*
FROM
	tbl_autores
LEFT JOIN
	tbl_livro
ON
	tbl_livro.ID_Autor = tbl_autores.ID_Autor;
    

/* Excluindo Correspondências */
SELECT
	*
FROM
	tbl_autores
LEFT JOIN
	tbl_livro
ON
	tbl_livro.ID_Autor = tbl_autores.ID_Autor
WHERE
	tbl_Livro.ID_Autor IS NULL;


SELECT
	*
FROM
	tbl_livro AS Li
RIGHT JOIN
	tbl_editoras AS Ed
ON
	Li.ID_editora = Ed.ID_editora
WHERE
	Li.ID_editora IS NULL;
    
    
/* Inserindo Dados na Tabela */
INSERT INTO tbl_editoras (
	ID_editora,
    Nome_Editora
)
VALUES (
	6,
    'Companhia das Letras'
);