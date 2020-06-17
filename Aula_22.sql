/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;


/* Selecionando Dados de Duas Tabelas */
SELECT
	*
FROM
	tbl_livro
INNER JOIN
	tbl_autores
ON
	tbl_livro.ID_Autor = tbl_autores.ID_Autor;
    
    
SELECT
	tbl_livro.Nome_Livro,
    tbl_livro.ISBN,
    tbl_autores.Nome_Autor
FROM
	tbl_livro
INNER JOIN
	tbl_autores
ON
	tbl_livro.ID_Autor = tbl_autores.ID_Autor;
    
    
SELECT
	L.Nome_Livro AS Livro,
    E.Nome_Editora AS Editoras
FROM
	tbl_livro AS L
INNER JOIN
	tbl_editoras AS E
ON
	L.ID_editora = E.ID_editora
WHERE
	E.Nome_Editora LIKE 'M%';


SELECT
	L.Nome_Livro AS Livro,
    A.Nome_Autor AS Autor,
    E.Nome_Editora AS Editora
FROM
	tbl_livro AS L
INNER JOIN
	tbl_autores AS A
ON
	L.ID_autor = A.ID_autor
INNER JOIN
	tbl_editoras AS E
ON
	L.ID_editora = E.ID_editora;