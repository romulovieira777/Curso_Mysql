/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;

/* Verificando os Índices */
SHOW INDEX FROM
	tbl_editoras;

/* Criando um Índice */
CREATE INDEX
	idx_editora
ON
	tbl_editoras (
    Nome_Editora);