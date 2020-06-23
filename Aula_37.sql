/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;
    

/* Criando uma Tabela */
CREATE TABLE produto (
	idproduto INT NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(15) NULL,
    preco_normal DECIMAL(10,2) NULL,
    preco_desconto DECIMAL(10,2) NULL,
    PRIMARY KEY (idproduto)
);


/* Criando uma Trigger */
CREATE TRIGGER
	tr_desconto BEFORE INSERT
ON
	produto
FOR EACH ROW
SET
	NEW.preco_desconto = (NEW.preco_normal * 0.90);
    
    
/* Inserindo Dados na Tabela */
INSERT INTO produto (
	nome_produto,
    preco_normal
) 
VALUES (
	'Monitor',
    1.00
);


/* Selecionando Dados da Tabela */
SELECT
	*
FROM
	produto;
    

/* Inserindo Dados na Tabela */
INSERT INTO produto (
	nome_produto,
    preco_normal
)
VALUES (
	'DVD',
    1.00
),
(
	'Pendrive',
    18.00
);