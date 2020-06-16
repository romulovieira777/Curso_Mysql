/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;
    
/* Cirando um Padrão */
ALTER TABLE
	tbl_autores
MODIFY COLUMN
	Sobrenome_Autor VARCHAR(60)
DEFAULT
	'da Silva';
    
/* Inserindo um Registro */
INSERT INTO tbl_autores (
	ID_Autor,
    Nome_Autor
)
VALUES (
	8,
    'João'
);

INSERT INTO tbl_autores (
	ID_Autor,
    Nome_Autor,
    Sobrenome_Autor
)
VALUE (
	6,
    'Rita',
    'de Souza'
);

/* Alterando o Padrão */
ALTER TABLE
	tbl_autores
MODIFY COLUMN
	Sobrenome_Autor VARCHAR(60);
    
/* Inserindo um Registro */
INSERT INTO tbl_autores (
	ID_Autor,
    Nome_Autor
)
VALUES (
	7,
    'Ana'
);

/* Selecionando Dados da Tabela */
SELECT
	*
FROM
	tbl_autores;