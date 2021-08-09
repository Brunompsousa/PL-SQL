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

select district nome, NVL(x.gen_pref,0) as Genero_preferido, NVL(y.total,0) as Toatal_livros
FROM autores, Livros, (SELECT DISTRICT) autores.codigo_autor as autor, COUNT(*) as gen_pref
  FROM autores.livros
  WHERE autores.codigo_autor = Livros.codigo_autor and autores.genero_
  Group by autores.codigo_autor, genero_preferido)x,
  (select distinct autores.codigo_autor as autor, COUNT(*) as total
    from livros,autores
    Where livros.codigo_autor = autores.codigo_autor
    group by autores.codigo_autor, genero_preferido)y
where autores.codigo_autor = x.autor(+) and autores.codigo_autor = y.autor(+)
order by nome;

--exercicio3

select sum(unidades_vendidas) as soma, editoras.codigo_editora
from livros, editoras
where livros.codigo_editora = editoras.codigo_editora
group by editoras.codigo_editora;



select min(x.soma) as minimo
from livros(select sum(unidades_vendidas) as soma, editoras.codigo_editora as editora, editoras.nome as nome
          from livros, editoras
          where livros.codigo_editora =  editoras.codigo_editora
          group by editoras.codigo_editora,editora.nome)x
where livros.codigo_editora = x.editora;



select distinct autores.codigo_autor as autor, count(*) as total
              from livros, autores
              where 
              
              
                    group by editoras.codigo_editora = editora.codigo
              where livros.codigo_editora = x.editora)x
              (select DISTINCT autores.codigo_autor as autor, count(*) as 
              from livros, autores
              where livros.codigo_autor = autores.codigo_autor
              group by autores.codigo_autor)y
              (select codigo_autor as autor, count(*) as num_livroseditora
              from livros,editoras
              where livros.codigo_editora = editora.codigo_editora
              group by codigo_autor)z
where editoras.codigo_editora = autores.codigo_autor
and autores.codigo_autor = y.autor
and autores.codigo_autor = z.autor;
              
              
--exercicio4


select titulo, codigo_autor
from livros
where genero like 'Informática'
order by codigo_autor;

