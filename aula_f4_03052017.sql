--ficha4
--exercicio1

select nome, titulo, y.num_livros as Livros, x.num_livroseditora as total_de_livros
from livros,autores, (select codigo_autor,count(*) as num_livros
  from livros
    group by codigo_autor)y,
    
    (select codigo_autor, count(*) as num_livroseditora
    from livros,editoras
    where livros.codigo_editora = 1 and editoras.codigo_editora = 1
    group by codigo_autor)x
    
where preco_tabela = (select max(preco_tabela) as maximo
from livros, editoras
where livros.codigo_editora = 1 and editoras.codigo_editora = 1)
and livros.codigo_editora = 1 and livros.codigo_autor = autores.codigo_autor
and livros.codigo_autor = x.codigo_autor and livros.codigo_autor = y.codigo_autor;


--exercicio2

select distinct nome, NVL(x.gen.pref,0) as genero_preferido, NVL(y.total,0) as total_livros
from autores,livros (select distinct
where count(livros.codigo_autor = autores.codigo_autor);

--exercicio3


