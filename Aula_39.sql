/* Selecionando Usuários do Banco de Dados */
SELECT
	USER
FROM
	mysql.user;


/* Visualizar os Privilégios do Usuário */
SHOW GRANTS FOR usuario@localhost;


/* Criando Privilégio para um Usuário */
GRANT USAGE 
ON *.*
TO
	amanda@localhost
IDENTIFIED BY PASSWORD
	'123';
    
    
/* Criando um Usuário com Privilégio Global */
GRANT ALL
ON
	*.*
TO
	alexandre
IDENTIFIED BY
	'123'
WITH GRANT OPTION;


/* Mostrando todos os Banco de Dados */
SHOW DATABASES;


/* Criando um Usuário */
CREATE USER
	ana@localhost;


/* Concedendo Privilégio para o Usuário */
GRANT
	SELECT,
    INSERT,
    UPDATE,
    DELETE
ON
	db_biblioteca.*
TO
	ana@localhost;


/* Privilégio de Consulta e Alterações em uma Tabela */
GRANT
	SELECT(nome_autor, Sobrenome_autor),
    UPDATE(nome_autor)
ON
	db_biblioteca.tbl_autores
TO
	ana@localhost;
    
    
/* Removendo Privilégio de Delete */
REVOKE
	DELETE
ON
	db_biblioteca.*
FROM
	ana@localhost;
    
    
/* Removendo Todos os Privilégios */
REVOKE
	ALL,
    GRANT OPTION
FROM
	ana@localhost;