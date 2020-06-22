/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;
    
    
/* Criando uma Função */
DELIMITER $$
CREATE FUNCTION
	calcula_imposto (
    salario DEC(8,2))
RETURNS DEC(8,2)
BEGIN
	DECLARE 
		valor_imposto DEC(8,2);
	IF salario < 1000.00 THEN
		SET valor_imposto = 0.00;
	ELSEIF salario < 2000.00 THEN
		SET valor_imposto = salario * 0.15;
	ELSEIF salario < 3000.00 THEN
		SET valor_imposto = salario * 0.22;    
    ELSE
		SET valor_imposto = salario * 0.27;
	END IF;
    RETURN
		valor_imposto;
END
$$
DELIMITER ;


/* Criando uma Função Usando Case */
DELIMITER $$
CREATE FUNCTION calcula_imposto_case (salario DECIMAL(8,2))
RETURNS DECIMAL(8,2)
BEGIN
	DECLARE	valor_imposto DECIMAL(8,2);
	CASE
    WHEN salario < 1000.00 THEN
		SET valor_imposto = salario * 0.00;
	WHEN salario < 2000.00 THEN
		SET valor_imposto = salario * 0.15;
    WHEN salario < 3000.00 THEN
		SET valor_imposto = salario * 0.22;
    ELSE
		SET valor_imposto = salario * 0.27;
    END CASE;
    RETURN valor_imposto;
END
$$
DELIMITER ;