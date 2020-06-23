/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;
    

/* Criando uma Procedure com While */
DELIMITER $$
CREATE PROCEDURE
	acumula_while (limite TINYINT UNSIGNED)
BEGIN
	DECLARE
		contador TINYINT UNSIGNED DEFAULT 0;
	DECLARE
		soma INT DEFAULT 0;
	WHILE
		contador < limite DO
        SET
			contador = contador + 1;
        SET
			soma = soma + contador;
	END WHILE;
    SELECT
		soma;
END
$$

Delimiter ;


/* Chamando uma Procedure */
CALL
	acumula_while(10);
    
    
CALL
	acumula_while(0);