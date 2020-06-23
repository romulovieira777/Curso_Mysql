/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;
    
    
/* Criando uma Procedure com Iterate */
DELIMITER $$
CREATE PROCEDURE
	acumula_iterate(limite TINYINT UNSIGNED)
BEGIN
	DECLARE
		contador TINYINT UNSIGNED DEFAULT 0;
	DECLARE
		soma INT UNSIGNED DEFAULT 0;
	teste: LOOP
		SET
			contador = contador + 1;
        SET
			soma = soma + contador;
        IF
			contador < limite THEN
				ITERATE teste;
        END IF;
        LEAVE
			teste;
	END LOOP
		teste;
    SELECT
		soma;
END
$$
DELIMITER ;


/* Chamando uma Procedure */
CALL
	acumula_iterate(10);
    
    
/* Criando uma Procedure */
DELIMITER $$
CREATE PROCEDURE
	pares(limite TINYINT UNSIGNED)
main: BEGIN
	DECLARE
		contador TINYINT DEFAULT 0;
	meuloop: WHILE
		contador < limite DO
        SET
			contador = contador + 1;
        IF MOD(
			contador, 2) THEN
            ITERATE
				meuloop;
        END IF;
        SELECT
			CONCAT(contador, ' é um número par') AS Valor;
	END WHILE;
END
$$
DELIMITER ;


/* Chamando uma Procedure */
CALL
	pares(20);
    
    
/* Apagando uma Procedure */
DROP PROCEDURE
	pares;