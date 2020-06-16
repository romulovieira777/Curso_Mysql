/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;

/* Criando uma Tabela */
CREATE TABLE Clientes (
	ID_Cliente SMALLINT,
    Nome_Cliente VARCHAR(20),
    CONSTRAINT PRIMARY KEY (ID_Cliente)
);

/* Inserindo Valores na Tabela */
INSERT INTO
	Clientes
VALUES (
	22,
    'Fábio'
);

INSERT INTO
	Clientes
VALUES (
	34,
    'Alberto'
);

INSERT INTO
	Clientes
VALUES (
	63,
    'Eric'
);

/* Renomeando uma Tabela */
RENAME TABLE
	Clientes
TO
	Meus_Clientes;