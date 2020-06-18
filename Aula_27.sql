/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;


/* Criando uma Procedure */
CREATE PROCEDURE
	verPreço (varLivro SMALLINT)
SELECT
	CONCAT('O preço é ', Preco_Livro) AS Preço
FROM
	tbl_livro
WHERE
	ID_Livro = varLivro;
    
    
/* Chamando uma Procedure */
CALL verPreço(3);


/* Excluindo uma Procedure */
DROP PROCEDURE
	verPreço;