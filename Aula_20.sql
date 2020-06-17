/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;

/* Selecionando Dados com Having */
SELECT
	Cidade,
    SUM(Quantidade) AS Total
FROM
	Vendas
GROUP BY
	Cidade
HAVING
	SUM(Quantidade) < 2500;
    
    
SELECT
	Cidade,
    SUM(Quantidade) AS Total_Teclados
FROM
	Vendas
WHERE
	Produto = 'Teclado'
GROUP BY
	Cidade
HAVING
	SUM(Quantidade) < 1500;