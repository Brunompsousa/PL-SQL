--EXERCICIO#1
--Obter a data e hora do sistema
select to_char(sysdate,'DD-MM-YYYY HH24:MI:SS') as "hora actual"
from dual;
--RESOLUCAO:
/*
21-03-2017 16:30:56
*/

--EXERCICIO#2
--Obter dia por nome
select to_char(SYSDATE,'Day, DDth, "de" Month,YYYY') as "Data Actual"
from dual;
--RESOLUCAO:
/*
Terça-Feira  , 21ST, de Março    ,2017
*/

--EXERCICIO#3
--Obter dia por nome
select to_char(to_date('01-01-2000','DD-MM-YY'),'Day') as "Dia da semana"
from dual;
/*select to_char(to_date('09-01-1991','DD-MM-YY'),'Day') as "Dia da semana"
from dual;*/
--RESOLUCAO:
/*
Sábado
*/

--EXERCICIO#4
--Selecione o titulo e o preco dos livros editados ha menos de 90dias
select TITULO, PRECO_TABELA
from LIVROS,dual
where ;


--EXERCICIO#5
--Selecione os titulos editados em 2001
select TITULO
from LIVROS
where 


--EXERCICIO#6
--Mostrar nome completo e as 5 primeiras letras do nome de cada autor
select nome, 
from autores
where 

--EXERCICIO#7
--Mostrar nome completo e o primeiro nome de cada autor
select nome
from autores


--EXERCICIO#8
--