/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;
    
    
/* Criando uma Função */
CREATE FUNCTION fn_teste (
	a Decimal(10,2),
    b INT)
RETURNS INT
RETURN
	a * b;


/* Chamando uma Função */
SELECT
	fn_teste (2.5, 4) AS Resultado;
    
    
/* Apagando um Função */
DROP FUNCTION fn_teste;