--exer8
select titulo, semana,max(soma) as maximo
from editoras,livros,(select codigo_livro,TO_CHAR(data_venda,'WW') as semana, sum(quantidade) as soma
        from vendas
        group by codigo_livro,TO_CHAR(data_venda,'WW'))x
where livros.codigo_livro = x.codigo_livro
and editoras.CODIGO_EDITORA = livros.CODIGO_EDITORA
and genero='Informática'
and nome like 'FCA%'
group by titulo,semana;


--exercicio9

select cidade, titulo
from livros,autores,(select codigo_livro,vendas.codigo_cliente,morada as cidade
from vendas,clientes
where clientes.codigo_cliente= vendas.codigo_cliente
and morada not like '%Paris'
and total_venda = (select max(total_venda) from vendas))x
where livros.codigo_livro=x.codigo_livro
and livros.codigo_autor=autores.codigo_autor
and nacionalidade = 'Portuguesa'
and genero= 'Informática';


--alt1
select cidade, titulo
          from livros,autores,(select codigo_livro,vendas.codigo_cliente,morada as cidade
          from vendas,clientes
          where clientes.codigo_cliente = vendas.codigo_cliente
          and morada not like '%paris'
and total_venda = (select max(total_venda) from vendas))x
where livros.codigo_livro = x.codigo_livro
and livros.codigo_autor = autores.codigo_autor
and nacionalidade = 'Portuguesa'
and genero = 'Informática';

--alt2
select distinct  cidade, titulo
          from livros,autores,(select codigo_livro,vendas.codigo_cliente,morada as cidade
          from vendas,clientes
          where clientes.codigo_cliente = vendas.codigo_cliente
          and morada not like '%paris'
and total_venda = (select max(total_venda) from vendas))x
where livros.codigo_livro = x.codigo_livro
and livros.codigo_autor = autores.codigo_autor
and nacionalidade = 'Portuguesa'
and genero = 'Informática';

--exercicio10

select distinct titulo,genero
from livros;

select titulo
from livros
where genero like 'Informática';

select titulo
from livros
where genero like 'Aventura';

select titulo
from livros
where genero like 'Policial';

select titulo
from livros
where genero like 'Romance';

