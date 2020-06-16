/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;

/* Criando uma Tabela */
CREATE TABLE Vendas (
	ID SMALLINT PRIMARY KEY,
    Nome_Vendedor VARCHAR(20),
    Quantidade INT,
    Produto VARCHAR(20),
    Cidade VARCHAR(20)
);

/* Inserindo Dados em uma Tabela */
INSERT INTO Vendas (
	ID,
    Nome_Vendedor,
    Quantidade,
    Produto,
    Cidade
)
VALUES (
	10,
    'Jorge',
    1400,
    'Mouse',
    'São Paulo'
);

INSERT INTO Vendas (
	ID,
    Nome_Vendedor,
    Quantidade,
    Produto,
    Cidade
)
VALUES (
	12,
    'Tatiana',
    1220,
    'Teclado',
    'São Paulo'
);

INSERT INTO Vendas (
	ID,
    Nome_Vendedor,
    Quantidade,
    Produto,
    Cidade
)
VALUES (
	14,
    'Ana',
    1700,
    'Teclado',
    'Rio de Janeiro'
);

INSERT INTO Vendas (
	ID,
    Nome_Vendedor,
    Quantidade,
    Produto,
    Cidade
)
VALUES(
	15,
    'Rita',
    2120,
    'Webcam',
    'Receife'
);

INSERT INTO Vendas (
	ID,
    Nome_Vendedor,
    Quantidade,
    Produto,
    Cidade
)
VALUES (
	18,
    'Marcos',
    980,
    'Mouse',
    'São Paulo'
);

INSERT INTO Vendas (
	ID,
    Nome_Vendedor,
    Quantidade,
    Produto,
    Cidade
)
VALUES (
	22,
    'Roberto',
    3145,
    'Mouse',
    'São Paulo'
);

/* Selecionando Dados de uma Tabela */
SELECT
	*
FROM
	Vendas;
    
/* Selecionado Dados Aplicando Filtros */
SELECT
	SUM(Quantidade) AS Total_Mouses
FROM
	Vendas
WHERE
	Produto = 'Mouse';

/* Selecionado Dados Aplicando Group By */    
SELECT
	Cidade,
	SUM(Quantidade) AS Total
FROM
	Vendas
GROUP BY
	Cidade;
    
SELECT
	Cidade,
    COUNT(*) AS Total
FROM
	Vendas
GROUP BY
	Cidade;