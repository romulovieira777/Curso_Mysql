/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;


/* Criando uma Função */
DELIMITER $$
CREATE FUNCTION 
	calcula_desconto (
		livro INT,
        desconto DECIMAL(10,2))
RETURNS DECIMAL(10,2)
BEGIN
	DECLARE
		preco DECIMAL(10,2);
	SELECT
		Preco_Livro
	FROM
		tbl_livro
	WHERE
		ID_Livro = livro INTO preco;
	RETURN
		preco - desconto;
END
$$
DELIMITER ;


/* Usando a Função */
SELECT
	calcula_desconto(4, 10.00);