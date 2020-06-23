/* Escolhendo um Banco de Dados */
USE
db_biblioteca;


/* Criando uma Procedure */
DELIMITER $$
CREATE PROCEDURE
	acumula_repita (limite TINYINT UNSIGNED)
BEGIN
	DECLARE
		contador TINYINT UNSIGNED DEFAULT 0;
	DECLARE
		soma INT DEFAULT 0;
	REPEAT
		SET
			contador = contador +1;
        SET
			soma = soma + contador;
	UNTIL
		contador >= limite
	END REPEAT;
    SELECT
		soma;
END
$$
DELIMITER ;
            
            
 /* Chamando uma Procedure */
 CALL
	acumula_repita(10);
    

CALL
	acumula_repita(0);
    
    
 /* Excluindo uma Procedure */
 DROP PROCEDURE IF EXISTS
	acumula_repita;


/* Criando uma Procedure */
DELIMITER $$
CREATE PROCEDURE
	acumula_repita(limite TINYINT UNSIGNED)
main: BEGIN
	DECLARE
		contador TINYINT UNSIGNED DEFAULT 0;
	DECLARE
		soma INT DEFAULT 0;
	IF
		limite < 1 THEN
			SELECT
				'O valor deve ser maior que zero.' AS ERRO;
			LEAVE
				main;
	END IF;
    REPEAT
		SET
			contador = contador + 1;
        SET
			soma = soma + contador;
	UNTIL
		contador >= limite
    END REPEAT;
    SELECT
		soma;
END
$$

DELIMITER ;


/* Chamando uma Procedure */
CALL
	acumula_repita(10);
    
    
CALL
	acumula_repita(0);   