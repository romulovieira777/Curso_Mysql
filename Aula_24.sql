/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;
    

/* Concatenado uma String */
SELECT
	CONCAT('Rômulo ', 'Vieira') AS Meu_Nome;


SELECT
	CONCAT(Nome_autor, ' ', Sobrenome_autor) AS 'Nome Completo'
FROM
	tbl_autores;
    
    
SELECT
	CONCAT('Eu gosto do livro ', Nome_livro) AS Nome
FROM
	tbl_livro
WHERE
	ID_autor = 2;
    
    
/* Criando uma Tabela */
CREATE TABLE teste_nulos (
	id SMALLINT PRIMARY KEY AUTO_INCREMENT,
    item VARCHAR(20),
    quantidade SMALLINT NULL
);


/* Inserindo Valores na Tabela */
INSERT INTO teste_nulos (
	id,
    item,
    quantidade
)
VALUES (
	1,
    'Pen Drive',
    5
);


INSERT INTO teste_nulos (
	id,
    item,
    quantidade
)
VALUES (
	2,
    'Monitor',
    7
);


INSERT INTO teste_nulos (
	id,
    item,
    quantidade
)
VALUES (
	3,
    'Teclado',
    null
);


/* Selecionando uma Tabela */
SELECT
	*
FROM
	teste_nulos;
    

SELECT
	CONCAT('A quantidade adquirida é ', ' ', quantidade) AS TESTE
FROM
	teste_nulos
WHERE
	item = 'Monitor';
    
    
/* Se o Campo na Tabela for Nulo na Concatenação ficará como Nulo */
SELECT
	CONCAT('A quantidade adquirida é ', ' ', quantidade) AS Teste
FROM
	teste_nulos
WHERE
	item = 'Teclado';
    

/* Para Substituir o Nulo na Tabela */
SELECT
	CONCAT('A quantidade adquirida é ', ' ', IFNULL(quantidade, 0)) AS Teste
FROM
	teste_nulos
WHERE
	item = 'Teclado';
    

SELECT
	CONCAT('A quantidade adquirida é ', ' ', COALESCE(NULL, quantidade, NULL, 0)) AS Teste
FROM
	teste_nulos
WHERE
	item = 'Teclado';