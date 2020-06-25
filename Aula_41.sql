/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;
    
    
/* Criando uma Tabela */
CREATE TABLE camisas (
	idCamisa TINYINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(25),
    tamanho ENUM('Pequena', 'Média', 'Grande', 'Extra-Grande')
);	

    
/* Inserindo Dados na Tabela */
INSERT INTO camisas (
	nome,
    tamanho
)
VALUES (
	'regata',
    'grande'
);


/* Selecionando Dados de uma Tabela */
SELECT
	*
FROM
	camisas;


/* Inserindo Dados na Tabela */
INSERT INTO camisas (
	nome,
    tamanho
)
VALUES (
	'social',
    'Média'
), (
	'Polo',
    'Pequena'
), (
	'Polo',
    'Grande'
), (
	'Camiseta',
    'Extra-Grande'
);


/* Selecionando Dados da Tabela */
SELECT
	*
FROM
	camisas;


/* Consultando os Valores Permissíveis na Coluna */
SHOW
	COLUMNS
FROM
	camisas
LIKE
	'tamanho';   