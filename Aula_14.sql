/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;
    
/* Atualizando um Registro */
UPDATE
	tbl_livro
SET
	Nome_Livro = 'SSH, o Shell Seguro'
WHERE
	ID_Livro = 2;    