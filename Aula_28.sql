/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;


/* Criando uma Função */
DELIMITER $$
CREATE FUNCTION aumenta_preco (
	preco DECIMAL(10,2),
    taxa DECIMAL(10,2))
BEGIN
	RETURN
		preco + preco * taxa / 100;
END
$$
DELIMITER ;


/* Chamando uma Função */
SELECT
	aumenta_preco (50.00, 10.00) AS Resultado;
    
    
/* Criando uma Procedure */
DELIMITER $$
CREATE PROCEDURE verPreço (
	varLivro SMALLINT)
BEGIN
	SELECT
		CONCAT('O preço é ', Preco_Livro) AS Preço
	FROM
		tbl_livro
	WHERE
		ID_Livro = varLivro;
	SELECT
		'Procedimento executado com sucesso!';
END
$$
DELIMITER ;


/* Chamado uma Procedure */
CALL
	verPreço(3);