/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;
    
    
/* Criando uma Procedure */
DELIMITER $$
CREATE PROCEDURE
	editora_livro (IN editora VARCHAR(50))
BEGIN
	SELECT
		L.Nome_Livro,
        E.Nome_Editora
	FROM
		tbl_livro AS L
	INNER JOIN
		tbl_editoras AS E
	ON
		L.ID_editora = E.ID_Editora
	WHERE
		E.Nome_Editora = editora;
END
$$
DELIMITER ;


/* Chamando uma Procedure */
CALL
	editora_livro('Wiley');


/* Criando uma Variável */
SET
	@minhaeditora = 'Wiley';


/* Chamando uma Variável */
CALL
	editora_livro(@minhaeditora);


/* Criando uma Procedure */
DELIMITER $$
CREATE PROCEDURE
	aumenta_preco (
		IN codigo INT,
        taxa DECIMAL(10,2))
BEGIN
	UPDATE
		tbl_livro
	SET
		Preco_Livro = tbl_livro.Preco_Livro + 
			tbl_livro.Preco_Livro *
            taxa / 100
	WHERE
		ID_Livro = codigo;
END
$$
DELIMITER ;


/* Criando uma Variável */
SET
	@livro = 4;


/* Criando uma Variável */
SET
	@aumento = 20;


/* Chamando uma Procedure e Variável */
CALL
	aumenta_preco(@livro, @aumento);
    

/* Selecionando Dados da Tabela */
SELECT
	*
FROM
	tbl_livro
WHERE
	ID_Livro = 4;
    

/* Criando uma Procedure */
DELIMITER $$
CREATE PROCEDURE
	teste_out (
		IN id INT,
		OUT livro VARCHAR(50))
BEGIN
	SELECT
		Nome_Livro
	INTO
		livro
	FROM
		tbl_livro
	WHERE
		ID_Livro = id;
END
$$
DELIMITER ;


/* Chamando uma Procedure */
CALL
	teste_out(3, @livro);


/* Selecionando uma Variável */ 
SELECT
	@livro;
    
    
/* Criando uma Procedure */
DELIMITER $$
CREATE PROCEDURE
	aumento (INOUT
		valor DECIMAL(10,2),
        taxa DECIMAL(10,2))
BEGIN
	SET
		valor = valor + valor * taxa / 100;
END
$$
DELIMITER ;


/* Criando uma Variável */
SET
	@valorinicial = 20.00;


/* Chamando uma Variável */
SELECT
	@valorinicial;


/* Chamando uma Procedure */
CALL
	aumento (
		@valorinicial,
        15.00);


/* Chmando a Variável */
SELECT
	@valorinicial;