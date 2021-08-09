--Ficha 1

--Aula de BD pratica - 07/03/2017 

--1.Informacao relativa aos autores

select *        --Selecciona todo da tabela autores
from autores;
-- #21

--1	Sérgio Sousa	1101	Cova da Piedade - 1000 Lisboa	39	M	Portuguesa	Informática
--2	Vitor Gonçalves	1102	Baixa da Banheira - 1200 Lisboa	41	M	Portuguesa	Informática
--3	Carlos Milheiro	1103	Rua do Infante - 2000 Porto	64	M	Portuguesa	Policial
--4	Maria José Sousa	1104	Av. Fernã Magalhães - 3000 Coimbra	22	F	Portuguesa	Policial
--5	Luis Gomes	1105	Rua do Ouro - 1100 Lisboa	59	M	Portuguesa	Informática
--6	Fernando Tavares	1106	Rua do Brasil - 3000 Coimbra	31	M	Portuguesa	Aventura
--7	Pedro Coelho	1107	Alameda Calouste Gulbenkian - 3200 Coimbra	24	M	Portuguesa	Informática
--8	Ana Capucho	1108	Rua Ferreira Borges - 3200 Coimbra	36	F	Portuguesa	Romance
--9	Tânia Azevedo	1109	Praça da República  - 2750 Leiria	28	F	Portuguesa	Romance
--10	Christian Crumush	1110	Rue de Brussels - 3344433-21 Brussels	52	M	Belga	Policial
--11	Rui Lemos	1111	Rua Augusta - 1100 Lisboa	29	M	Portuguesa	Policial
--12	Vitor Beça	1112	Largo da Rua Direita, 2-Esq. - 1300 Cascais	33	M	Portuguesa	Informática
--13	Robert Cowart	1113	Trafalgar Square 3328893 London	37	M	Inglesa	Informática
--14	Eurico Fonseca	1114	Rua Enfanta Dª Maria - 1000 Lisboa	32	M	Portuguesa	Aventura
--15	Norberto Candeias	1115	Av. da Bavista - 2000 Porto	46	M	Portuguesa	Romance
--16	Rui Vega	1116	Alameda Afonso Henriques  - 3000 Lisboa	51	M	Portuguesa	Policial
--17	Paulo Loureiro	1117	Rua do Nascimento - 1300 Lisboa	50	M	Portuguesa	Poesia
--18	Samuel Santos	1118	Rua da Jaqueta aberta - 3320 Aljubarrota	57	M	Portuguesa	Policial
--19	Alves Marques	1119	Largo do Mosteiro - 4550 Tomar	33	M	Portuguesa	Informática
--20	Cláudio Tereso	1120	Castelo da Encosta - 2300 Leiria	54	M	Portuguesa	Informática
--21	José Luis Pereira	1121	Palácio de Belem  - 1000 Lisboa	34	M	Portuguesa	Informática


--2. Todos os titulos dos livros  

select titulo   --Selecciona todos os titulos da tabela livros
from livros;

--#19

/*
Microsoft Office 2000 para todos
Microsoft Office 2000 sem fronteiras
Fundamental do Word 2000
Domine a 110% Word 2000
Windows NT Server 4 para profissionais
Windows NT Server 4 Curso Completo
Tecnologia dos Sistemas Distribuidos
TCP/IP em redes Microsoft para profissionais
Redes Locais em Windows 98 e 95
Tecnologia de Base de Dados
O mistério da porta trancada
Os cinco na praia
A outra cara metade
A balada de Hill Street
A balada de Nova Iorque
O Corsário Negro
Tu, eu e mais uns quantos
Oracle 8 - Curso completo
A vizinha do lado
*/

--3. Todos os generos de livros editados, sem repeticoes

select distinct (genero) --Todos os resultados iguais sao omitidos
from livros;
--#4

/*
Policial
Romance
Aventura
Informática
*/

--4.Titulo do Livros cujo preco e entre 5K e 7K

select TITULO
from LIVROS
where preco_tabela>20 and preco_tabela<30;
--#8

/*
Microsoft Office 2000 para todos
Fundamental do Word 2000
Domine a 110% Word 2000
Tecnologia dos Sistemas Distribuidos
Redes Locais em Windows 98 e 95
Tecnologia de Base de Dados
O mistério da porta trancada
O Corsário Negro
*/

--5.mostrar codigo e titulos de livros do genero informatico

select CODIGO_LIVRO,TITULO  
from LIVROS
where GENERO='Informática';

--#11

/*
1	Microsoft Office 2000 para todos
2	Microsoft Office 2000 sem fronteiras
3	Fundamental do Word 2000
4	Domine a 110% Word 2000
5	Windows NT Server 4 para profissionais
6	Windows NT Server 4 Curso Completo
7	Tecnologia dos Sistemas Distribuidos
8	TCP/IP em redes Microsoft para profissionais
9	Redes Locais em Windows 98 e 95
10	Tecnologia de Base de Dados
19	Oracle 8 - Curso completo
*/

--6. titulos dos livros policiais com mais de 500 paginas

select TITULO
from LIVROS
where PAGINAS>500 
and GENERO='Policial';

--#2

/*
A balada de Hill Street
A balada de Nova Iorque
*/

--7. generos de livros que tenham mais de 700 paginas ou precos de tabela superios a 30

select titulo, GENERO
from LIVROS
where PAGINAS>700
or PRECO_TABELA>30;

--#11
/*
Microsoft Office 2000 sem fronteiras	Informática
Windows NT Server 4 para profissionais	Informática
Windows NT Server 4 Curso Completo	Informática
TCP/IP em redes Microsoft para profissionais	Informática
Os cinco na praia	Aventura
A outra cara metade	Romance
A balada de Hill Street	Policial
A balada de Nova Iorque	Policial
Tu, eu e mais uns quantos	Aventura
Oracle 8 - Curso completo	Informática
A vizinha do lado	Romance
*/

--8. titulo dos livros informaticos e ordenalos na ordem desscendente pelo preco

select TITULO,PRECO_TABELA
from LIVROS
order by PRECO_TABELA desc;
--#19

/*
A outra cara metade	71
A balada de Hill Street	50
A vizinha do lado	45
Oracle 8 - Curso completo	44
Windows NT Server 4 para profissionais	40
TCP/IP em redes Microsoft para profissionais	33
Tu, eu e mais uns quantos	33
Windows NT Server 4 Curso Completo	32
Microsoft Office 2000 sem fronteiras	32
O mistério da porta trancada	29
Microsoft Office 2000 para todos	28
O Corsário Negro	27
Tecnologia dos Sistemas Distribuidos	25
Tecnologia de Base de Dados	25
Fundamental do Word 2000	24
Redes Locais em Windows 98 e 95	22
Domine a 110% Word 2000	22
A balada de Nova Iorque	18
Os cinco na praia	10
*/

-- 9 Mostrar o ISBN e os Titulos dos livros policiais, ordenar ascendente a quant. em stock e descendente o preço por tabela.

  select ISBN,TITULO
  from LIVROS
  where GENERO='Policial'
  order by QUANT_EM_STOCK asc, PRECO_TABELA desc;

