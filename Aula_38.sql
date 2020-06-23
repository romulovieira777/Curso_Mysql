/* Escolhendo o Banco de Dados */
USE
	db_biblioteca;
    
    
/* Consultando Usuários no Sistema */
SELECT
	user, host
FROM
	mysql.user;
    
    
/* Criando Usuários no Banco de Dados */
CREATE USER
	usuario@host
IDENTIFIED BY
	'senha';
    
    
/* Criando Usuário com Acesso Total */
CREATE USER
	Sei
IDENTIFIED BY
	'123';


/* Inserindo uma Senha para o Usuário */
SET PASSWORD FOR
	'Sei' = PASSWORD ('123');


/* Alterando o Nome do Usuário */
RENAME USER
	Sei
TO
	Fulano;
    

/* Excluir Usuário */
DROP USER
	Fulano;