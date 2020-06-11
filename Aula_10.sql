/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;
    
/* Excluir Registro da Tabela */
DELETE FROM
	tbl_autores
WHERE
	ID_Autor = 2;

/* Excluir Registro da Tabela */
TRUNCATE TABLE
	tbl_autores;