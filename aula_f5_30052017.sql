drop table autores2;

--ex1
create table autores2
(codigo_autor2 int not null,
nome varchar(50),
n_contribuinte int,
morada varchar(50),
idade int check(idade<200),
sexo char(1),
nacionalidade char(20),
genero_preferido varchar(20),
primary key (codigo_autor2)
);

--ex1 alt

CREATE TABLE autores2
(
nome varchar2(50),
idade number(3) check(idade >= 0 and (idade <200)),
n_contribuinte number(38) unique,
codigo_autor number(2) unique
);

--ex1 alt2

CREATE TABLE autores2
(
nome varchar2(50),
idade number(3) check(idade >= 0 and (idade <200))
);


--ex2
/*Apaga a tabela avaliacoes caso esta exista*/
drop table avaliacoes;


create table avaliacoes
(codigo_livro int not null,
codigo_cliente int not null,
nota int check(nota >=1 and nota <=5),
primary key(codigo_livro, codigo_cliente),
Foreign key(codigo_livro) references livros(codigo_livro),
Foreign key(codigo_cliente) references clientes(codigo_cliente)
);


--ex3 
/*Apaga a tabela livros backup caso esta exista*/
drop table livros_backup;

 /*cria tabela livros backup, com tudo o que ta na tabela livros*/
create table livros_backup as (
select * 
from livros
);


--ex4

alter table livros_backup
modify codigo_livro not null;

alter table livros_backup
add foreign key (


;


--ex5

insert into livros_backup values(51,1,1,'Informatica para todos',123434,'Informática',24.00,430,50,0,sysdate);


--ex5 alt
insert into livros_backup
(codigo_autor,titulo,codigo_editora,preco_tabela,paginas,isbn,codigo_livro,unidades_vendidas)
values
(1,'Informatica para todos',1,24,430,123434,51,0);

--ex6

insert into autores2
(nome,n_contribuinte,codigo_autor)
values
('Josede Magalheis',87987897,51);

--ex7

delete from Livros_backup
where codigo_livro = 50;

--ex8

update livros_backup
set preco_tabela = preco_tabale*1.1;
where genero = 'Aventura';


--ex9

delete from livros_backup
where genero = 'Informática'  and preco_tabela < (select avg(preco_tabela) from livros_backup);

--ex10
create table as vendas_backup as select *
from vendas where 1=0;

--ex11 /*  */
update vendas_backup
set total_vendas = preco_unitario * quantidade;

--ex12 /* apaga todas as vendas que tenham sido feitas no mes de janeiro */ 
delete from vendas_backup
where data_venda like '%.01.%';

--ex13 /* apaga a tabela vendas_backup*/
drop table vendas_backup;

--ex14 /*add nlivros que sera 0 por defeito mas que mais tarde tera um valor entre 0 e 150*/
alter table autores2
add nlivros number(4) default 0 not null check (nlivros > 0 and nlivros < 150);

--ex15 /*Cria a tabela editoras_backup*/
create table editoras_backup as select *
from editoras where 1 = 0;

--ex16


