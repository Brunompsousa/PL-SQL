--ficha3

-- exercicio 6
-- output -> lista de autores e num de livros, caso nao tenha livros aparece "nenhum"

select distinct NOME
from autores
where codigo_autor not in(select codigo_autor from livros)
order by nome;

/*
Result
----
Christian Crumush
Eurico Fonseca
Luis Gomes
Norberto Candeias
Pedro Coelho
Tânia Azevedo
*/

--exercicio 6

select distinct NOME, lpad(nvl(count(codigo_livro),0),10) as "Num. Livros"
from autores,livros
where autores.codigo_autor=livros.codigo_autor
group by nome
order by nome;

/*
Result
----
Alves Marques	       1
Ana Capucho	         1
Carlos Milheiro	     1
Cláudio Tereso	     2
Fernando Tavares     1
José Luis Pereira	   1
Maria José Sousa     1
Paulo Loureiro	     3
Robert Cowart	       1
Rui Lemos	           1
Rui Vega	           1
Samuel Santos	       1
Sérgio Sousa	       2
Vitor Beça	         1
*/

-- exercicio 7

select titulo, trunc(preco_tabela,0) as "PRECO TABELA"
from livros
where exists(select preco_tabela from livros where genero='Informática') and genero='Informática'
order by preco_tabela desc;

/*
Result
----
Oracle 8 - Curso completo	                    44
Windows NT Server 4 para profissionais	      40
TCP/IP em redes Microsoft para profissionais	33
Microsoft Office 2000 sem fronteiras	        32
Windows NT Server 4 Curso Completo	          32
Microsoft Office 2000 para todos	            28
Tecnologia dos Sistemas Distribuidos	        25
Tecnologia de Base de Dados	                  25
Fundamental do Word 2000                     	24
Redes Locais em Windows 98 e 95             	22
Domine a 110% Word 2000                     	22
*/

--exercicio 8 

select distinct NOME  
from AUTORES,livros
where LIVROS.PAGINAS > (select avg(paginas) from livros) and autores.CODIGO_AUTOR=livros.CODIGO_AUTOR;

/*
Result
----
Alves Marques
José Luis Pereira
Rui Lemos
Robert Cowart
Fernando Tavares
Sérgio Sousa
Paulo Loureiro
Ana Capucho
Vitor Beça
Cláudio Tereso
*/

--exercicio 9


select titulo, preco_tabela as "Preço", sum(vendas.PRECO_UNITARIO) as "Total"
from livros,vendas
where genero='Informática' and livros.codigo_livro=vendas.codigo_livro
group by titulo, preco_tabela;

select titulo, preco_tabela as "Preço", sum(vendas.PRECO_UNITARIO) as "Total"
from livros,vendas
where genero='Informática' and livros.codigo_livro=vendas.codigo_livro
group by titulo, preco_tabela;



--Exercicio 10
--DW 21.4.2017 TPSI 2.5.2017
select genero, titulo
from livros
where genero='Informática'
order by titulo desc;


select 'Informática' as genero, '###########################################' as Titulo
from dual
union
select ' " ', titulo
from livros
where genero='Informática'
--order by 1 desc;
ORDER BY 1 desc, titulo desc;


--exercicio 12
select distinct nome
from autores,livros
where autores.codigo_autor(+) = livros.codigo_autor
order by nome;



--Aula DW em 21/04/2017


--Exercicio 13
--DW 21.4.2017
--TPSI 2.5.2017
select livros.genero, titulo, unidades_vendidas
from livros, (select genero, max(unidades_vendidas) as maximo
from livros
group by genero) x
where livros.genero=x.genero and x.maximo=unidades_vendidas
order by livros.genero;


--Exercicio 14
--DW 21.4.2017
select titulo, round(unidades_vendidas/929874*100,2) as "Percent"
from livros
group by titulo, round(unidades_vendidas/929874*100,2)
order by "Percent" desc;

--exercicio 15

select distinct titulo
from livros,clientes,(select max(unidades_vendidas) as maximo from livros)x,
                    (select morada as morada from clientes where morada like '%Lisboa')y
where unidades_vendidas=x.maximo and clientes.morada=y.morada;



--Exercicio 16

select x.total as "Total de Livros", y.total_autores as "Total de Autores", z.total_editoras as "Total de Editoras"
from (select count(codigo_livro) as total from livros)x,
(select count(codigo_autor) as total_autores from autores)y,
(select count(codigo_editora) as total_editoras from editoras)z;