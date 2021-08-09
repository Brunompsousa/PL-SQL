--5. Para cada cliente, mostre qual o livro de Informática editado pela FCA adquirido à menos tempo?

Select DISTINCT CLIENTES.NOME, LIVROS.TITULO
FROM CLIENTES, LIVROS, EDITORAS, VENDAS
WHERE GENERO='Informática' AND EDITORAS.CODIGO_EDITORA = (SELECT CODIGO_EDITORA FROM EDITORAS WHERE EDITORAS.NOME LIKE '%FCA%');

Select DISTINCT CLIENTES.NOME, LIVROS.TITULO
FROM CLIENTES, LIVROS, EDITORAS, VENDAS,
(SELECT DISTINCT LIVROS.TITULO AS tituloLivro, EDITORAS.NOME AS nomeEditora
from livros, editoras
where livros.codigo_editora = (select editoras.codigo_editora from editoras where editoras.nome LIKE '%FCA%' and livros.coDIGO_EDITORA = EDITORAS.CODIGO_EDITORA AND LIVROS.GENERO = 'Informática')) X,
(Select to_char(sysdate, 'YY-MM-DD') as currTime
from dual) Y,
(SELECT MAX(VENDAS.DATA_VENDA) AS ULTIMADATA
FROM VENDAS) Z,
WHERE LIVROS.CODIGO_LIVRO = VENDAS.CODIGO_LIVRO and vendas.data_venda = Z.ULTIMADATA AND VENDAS.CODIGO_CLIENTE = CLIENTES.CODIGO_CLIENTE;

--Exercicio 6 6. Qual o melhor cliente da livraria considerando a quantidade de livros comprados?

SELECT clientes.nome
from clientes, vendas
where vendas.quantidade = (select Max(SUM(vendas.Quantidade)) from vendas GROUP BY QUANTIDADE) and ROWNUM = 1;

--Exercicio 7 Qual o livro mais recente escrito por cada autor? Ordene os resultados pelo nome.

SELECT livros.TITULO, autores.Nome
from LIVROS, autores
WHERE LIVROS.CODIGO_AUTOR = AUTORES.CODIGO_AUTOR AND LIVROS.DATA_EDICAO = (SELECT MAX(LIVROS.DATA_EDICAO) AS ULTIMADATA from livros where LIVROS.CODIGO_AUTOR = AUTORES.CODIGO_AUTOR)
order by Nome;