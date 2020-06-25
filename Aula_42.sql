/* Escolhendo um Banco de Dados */
USE
	db_biblioteca;


/* Selecionando Dados da Tabela Utilizando Union*/
SELECT
	Nome_Livro AS Livro,
    Preco_Livro AS Preço,
    'Livro Caro' AS Resultado
FROM
	tbl_livro
WHERE
	Preco_Livro >= 60.00
UNION
	SELECT
		Nome_Livro AS Livro,
        Preco_Livro AS Preço,
        'Preço Razoável' Resultado
	FROM
		tbl_livro
	WHERE
		Preco_Livro < 60.00
	ORDER BY
		Preço;


/* Selecionando Dados da Tabela Utilizando Union*/
SELECT
	Nome_Livro AS Livro,
    Data_Pub AS 'Data de Publicação',
	Preco_Livro AS 'Preço Normal',
	Preco_Livro * 0.90 AS 'Preço Ajustado'
FROM
	tbl_livro
WHERE
	Preco_Livro > 65.00
UNION
	SELECT
		Nome_Livro AS Livro,
        Data_Pub AS 'Data de Publicação',
        Preco_Livro AS 'Preço Normal',
        Preco_Livro * 1.15 AS 'Preço Ajustado'
	FROM
		tbl_livro
	WHERE
		Data_Pub < '20120415';