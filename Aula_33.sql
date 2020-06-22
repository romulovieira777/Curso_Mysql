/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;
    

/* Criando uma Procedure */
DELIMITER $$
CREATE PROCEDURE
	acumula (limite INT)
BEGIN
	DECLARE
		contador INT DEFAULT 0;
	DECLARE
		soma INT DEFAULT 0;
	loop_teste: LOOP
		SET
			contador = contador + 1;
        SET
			soma = soma + contador;
        IF
			conatdor >= limite THEN
				LEAVE
					loop_teste;
        END IF;
	END LOOP
		loop_teste;
	SELECT
		soma;
END
$$
DELIMITER ;


/* Chamando uma Procedure */
CALL 
	acumula(10);