/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;
    
    
/* Criando uma Tabela */
CREATE TABLE tbl_mult (
	ID SMALLINT PRIMARY KEY AUTO_INCREMENT,
    NUM1 SMALLINT NOT NULL,
    NUM2 SMALLINT NOT NULL,
    NUM3 SMALLINT GENERATED ALWAYS AS (NUM1 * NUM2) VIRTUAL
);


/* Inserindo Dados na Tabela */
INSERT INTO tbl_mult (
	num1,
    num2
)
VALUES (
	2,
	1
), (
	2,
	2
), (
	2,
	3
), (
	2,
    4
);


/* Selecionando Dados de uma Tabela */
SELECT
	*
FROM
	tbl_mult;


/* Atualizando Valores da Tabela */
UPDATE
	tbl_mult
SET
	num2 = 8
WHERE
	ID = 2;


/* Criando uma Tabela */
CREATE TABLE tbl_vendas (
	ID_Venda SMALLINT PRIMARY KEY AUTO_INCREMENT,
    Preco_Produto DECIMAL(6,2) NOT NULL,
    Qtde TINYINT NOT NULL,
    Desconto DECIMAL(4,2) NOT NULL,
    Preco_Total DECIMAL(6,2) AS (Preco_Produto * Qtde * (1 - Desconto / 100)) STORED
);


/* Inserindo Dados na Tabela */
INSERT INTO tbl_vendas (
	Preco_Produto,
    Qtde,
    Desconto
)
VALUES (
	50.00,
    2, 
    20
), (
	65.00,
    3,
    15
), (
	100.00,
    1,
    12
), (
	132.00,
    3,
    18
);


/* Selecionando Dados da Tabela */
SELECT
	*
FROM
	tbl_vendas;