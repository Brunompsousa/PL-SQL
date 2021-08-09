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
where data_edicao >= sysdate -90;
--RESOLUCAO:
/*
*/

--EXERCICIO#5
--Selecione os titulos editados em 2001
select TITULO
from LIVROS
where data_edicao like '01%';
--RESOLUCAO:
/*
*/

--EXERCICIO#6
--Mostrar nome completo e as 5 primeiras letras do nome de cada autor
select NOME as Nome_Completo , SUBSTR(NOME,1,5) as Primeiro_Nome
from AUTORES;
--RESULTADO:
/*
Sérgio Sousa	Sérgi
Vitor Gonçalves	Vitor
Carlos Milheiro	Carlo
Maria José Sousa	Maria
Luis Gomes	Luis 
Fernando Tavares	Ferna
Pedro Coelho	Pedro
Ana Capucho	Ana C
Tânia Azevedo	Tânia
Christian Crumush	Chris
Rui Lemos	Rui L
Vitor Beça	Vitor
Robert Cowart	Rober
Eurico Fonseca	Euric
Norberto Candeias	Norbe
Rui Vega	Rui V
Paulo Loureiro	Paulo
Samuel Santos	Samue
Alves Marques	Alves
Cláudio Tereso	Cláud
José Luis Pereira	José 
*/

--EXERCICIO#7
--Mostrar nome completo e o primeiro nome de cada autor
select nome,SUBSTR(NOME,1,INSTR(NOME,' ',1)-1) as Primeiro_Nome -- '-1' e para que o espaco nao conte no nome
from autores;
--RESULTADO:
/*
Sérgio Sousa	Sérgio
Vitor Gonçalves	Vitor
Carlos Milheiro	Carlos
Maria José Sousa	Maria
Luis Gomes	Luis
Fernando Tavares	Fernando
Pedro Coelho	Pedro
Ana Capucho	Ana
Tânia Azevedo	Tânia
Christian Crumush	Christian
Rui Lemos	Rui
Vitor Beça	Vitor
Robert Cowart	Robert
Eurico Fonseca	Eurico
Norberto Candeias	Norberto
Rui Vega	Rui
Paulo Loureiro	Paulo
Samuel Santos	Samuel
Alves Marques	Alves
Cláudio Tereso	Cláudio
José Luis Pereira	José
*/


--EXERCICIO#8
--Mostrar nome completo e o primeiro e ultimo nome de cada autor
select nome,SUBSTR(NOME,1,INSTR(NOME,' ',1)-1) as Primeiro_Nome, SUBSTR(NOME,INSTR(NOME,' ',-1)+1,length(nome)-INSTR(NOME,' ',-1)) as Ultimo_Nome
from autores;
--RESULTADO:
/*
Sérgio Sousa	Sérgio	Sousa
Vitor Gonçalves	Vitor	Gonçalves
Carlos Milheiro	Carlos	Milheiro
Maria José Sousa	Maria	Sousa
Luis Gomes	Luis	Gomes
Fernando Tavares	Fernando	Tavares
Pedro Coelho	Pedro	Coelho
Ana Capucho	Ana	Capucho
Tânia Azevedo	Tânia	Azevedo
Christian Crumush	Christian	Crumush
Rui Lemos	Rui	Lemos
Vitor Beça	Vitor	Beça
Robert Cowart	Robert	Cowart
Eurico Fonseca	Eurico	Fonseca
Norberto Candeias	Norberto	Candeias
Rui Vega	Rui	Vega
Paulo Loureiro	Paulo	Loureiro
Samuel Santos	Samuel	Santos
Alves Marques	Alves	Marques
Cláudio Tereso	Cláudio	Tereso
José Luis Pereira	José	Pereira
*/


--EXERCICIO#9
--Mostrar nome completo e nome completo alinhado a direita
select NOME, LPAD(NOME,30,' ')as Alinhado_direita --LDAP alinha RIGHT / RPAD alinha LEFT 
from AUTORES;
--RESULTADO:
/*
Sérgio Sousa	                  Sérgio Sousa
Vitor Gonçalves	               Vitor Gonçalves
Carlos Milheiro	               Carlos Milheiro
Maria José Sousa	              Maria José Sousa
Luis Gomes	                    Luis Gomes
Fernando Tavares	              Fernando Tavares
Pedro Coelho	                  Pedro Coelho
Ana Capucho	                   Ana Capucho
Tânia Azevedo	                 Tânia Azevedo
Christian Crumush	             Christian Crumush
Rui Lemos	                     Rui Lemos
Vitor Beça	                    Vitor Beça
Robert Cowart	                 Robert Cowart
Eurico Fonseca	                Eurico Fonseca
Norberto Candeias	             Norberto Candeias
Rui Vega	                      Rui Vega
Paulo Loureiro	                Paulo Loureiro
Samuel Santos	                 Samuel Santos
Alves Marques	                 Alves Marques
Cláudio Tereso	                Cláudio Tereso
José Luis Pereira	             José Luis Pereira
*/


--EXERCICIO#10
--Mostrar Titulo dos livros cujo ultimo nome do autor e Loureiro
select TITULO
from LIVROS
where AUTORES.CODIGO_AUTOR = LIVROS.CODIGO_AUTOR and AUTORES.NOME like '%Loureiro';

--EXERCICIO#11
select NOME
from autores,livros
where 


--EXERCICIO#12
select distinct nome "Nome autor"
from autores,livros
where not (livros.codigo_autor=autores.codigo_autor and to_char(to_date(livros.data_edicao,'YY,MM,DD'), 'YY') = to_char(sysdate, 'YY'));

--EXERCICIO#13
select count(data_edicao) "Total de Livros"
from livros;
--RESULTADO:
/*
19
*/

--EXERCICIO#14
select count(genero) 
from livros
where genero='Informática';
--RESULTADO:
/*
11
*/

--EXERCICIO#15
select count(LIVROS.CODIGO_LIVRO) "Livros", ROUND(avg(preco_tabela),5) "PRECO MEDIO" ,sum(VENDAS.QUANTIDADE) "Total Livros vendidos"
from VENDAS,LIVROS;

--EXERCICIO#16
select (MIN)
