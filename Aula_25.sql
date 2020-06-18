/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;
    
    
/* Multiplicação */
SELECT
	Nome_Livro,
    Preco_Livro * 5 AS 'Preço de 5 Unidades'
FROM
	tbl_livro;
    
    
/* Divisão */
SELECT
	Nome_livro,
    TRUNCATE(Preco_Livro / 2, 2) AS 'Preço com 50% de desconto'
FROM
	tbl_livro;


/* Arredondar para cima */
SELECT
	Nome_Livro,
    CEILING(Preco_Livro * 5) AS 'Preço Arredondado'
FROM
	tbl_livro;
    
    
/* Traz o Valor de PI */
SELECT PI();


/* Traz o Valor de X Elevado Y */
SELECT POW(2, 4);


/* Traz o Valor da Raiz Quadrada */
SELECT SQRT(81);


/* Retorna o Número em Radianos */
SELECT SIN(PI());


/* Retorna a Representação Hexadecimal de um Valor */
SELECT HEX(1200);