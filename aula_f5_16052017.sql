--exercicio4

select livros.titulo
from AUTORES,livros,(select max(livros.unidades_vendidas) as Maximo from livros)x
where autores.codigo_autor = livros.codigo_autor and livros.genero='Informática' and livros.UNIDADES_VENDIDAS = x.Maximo;

select distinct livros.titulo,livros.codigo_autor,livros.codigo_livro
from livros,autores
where livros.codigo_autor = '17' and livros.genero='Informática';

select clientes.codigo_cliente
from clientes
where morada like '%Lisboa';


select distinct livros.titulo as titulo,vendas.quantidade
from livros,autores,clientes,vendas,(
        select distinct livros.titulo,livros.codigo_autor,livros.codigo_livro as codlivro
        from livros,autores
        where livros.codigo_autor = '17' and livros.genero='Informática')x,
        (
        select clientes.codigo_cliente as codCliente
        from clientes
        where morada like '%Lisboa' 
) y
where x.codLivro = vendas.codigo_livro and vendas.codigo_cliente = y.codCliente and x.codlivro = livros.codigo_livro and vendas.quantidade = (select max(vendas.quantidade) from vendas);


--exercicio5

select nome
from clientes;

select titulo
from livros, editoras
where livros.codigo_editora = editoras.CODIGO_EDITORA and editoras.NOME like 'FCA%';

