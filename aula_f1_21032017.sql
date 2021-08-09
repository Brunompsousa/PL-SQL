--Ficha 1
--Aula de BD pratica - 07/03/2017 

--Exercicio1
--Informacao relativa aos autores
select *        --Selecciona todo da tabela autores
from autores;
--RESULTADOS:#21
/*
1	Sérgio Sousa	1101	Cova da Piedade - 1000 Lisboa	39	M	Portuguesa	Informática
2	Vitor Gonçalves	1102	Baixa da Banheira - 1200 Lisboa	41	M	Portuguesa	Informática
3	Carlos Milheiro	1103	Rua do Infante - 2000 Porto	64	M	Portuguesa	Policial
4	Maria José Sousa	1104	Av. Fernã Magalhães - 3000 Coimbra	22	F	Portuguesa	Policial
5	Luis Gomes	1105	Rua do Ouro - 1100 Lisboa	59	M	Portuguesa	Informática
6	Fernando Tavares	1106	Rua do Brasil - 3000 Coimbra	31	M	Portuguesa	Aventura
7	Pedro Coelho	1107	Alameda Calouste Gulbenkian - 3200 Coimbra	24	M	Portuguesa	Informática
8	Ana Capucho	1108	Rua Ferreira Borges - 3200 Coimbra	36	F	Portuguesa	Romance
9	Tânia Azevedo	1109	Praça da República  - 2750 Leiria	28	F	Portuguesa	Romance
10	Christian Crumush	1110	Rue de Brussels - 3344433-21 Brussels	52	M	Belga	Policial
11	Rui Lemos	1111	Rua Augusta - 1100 Lisboa	29	M	Portuguesa	Policial
12	Vitor Beça	1112	Largo da Rua Direita, 2-Esq. - 1300 Cascais	33	M	Portuguesa	Informática
13	Robert Cowart	1113	Trafalgar Square 3328893 London	37	M	Inglesa	Informática
14	Eurico Fonseca	1114	Rua Enfanta Dª Maria - 1000 Lisboa	32	M	Portuguesa	Aventura
15	Norberto Candeias	1115	Av. da Bavista - 2000 Porto	46	M	Portuguesa	Romance
16	Rui Vega	1116	Alameda Afonso Henriques  - 3000 Lisboa	51	M	Portuguesa	Policial
17	Paulo Loureiro	1117	Rua do Nascimento - 1300 Lisboa	50	M	Portuguesa	Poesia
18	Samuel Santos	1118	Rua da Jaqueta aberta - 3320 Aljubarrota	57	M	Portuguesa	Policial
19	Alves Marques	1119	Largo do Mosteiro - 4550 Tomar	33	M	Portuguesa	Informática
20	Cláudio Tereso	1120	Castelo da Encosta - 2300 Leiria	54	M	Portuguesa	Informática
21	José Luis Pereira	1121	Palácio de Belem  - 1000 Lisboa	34	M	Portuguesa	Informática
*/


--Exercicio2
--Todos os titulos dos livros  
select titulo   --Selecciona todos os titulos da tabela livros
from livros;
--RESULTADOS:#19
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

--Exercicio3
--Todos os generos de livros editados, sem repeticoes
select distinct (genero) --Todos os resultados iguais sao omitidos graças ao DISTINCT
from livros;
--RESULTADOS:#4
/*
Policial
Romance
Aventura
Informática
*/

--Exercicio4
--Titulo do Livros cujo preco e entre 20 e 30
select TITULO           --Todos os TITULOS que o preço varia entre os precos assumidos
from LIVROS
where preco_tabela>20 and preco_tabela<30;
--RESULTADOS:#8
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

--Exercicio5
--Mostrar codigo e titulos de livros do genero informatico
select CODIGO_LIVRO,TITULO  
from LIVROS
where GENERO='Informática';
--RESULTADOS:#11
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

--Exercicio6
--Titulos dos livros policiais com mais de 500 paginas
select TITULO
from LIVROS
where PAGINAS>500 and GENERO='Policial';
--RESULTADOS:#2
/*
A balada de Hill Street
A balada de Nova Iorque
*/

--Exercicio7
--Titulo e Generos de livros que tenham mais de 700 paginas ou precos de tabela superios a 30
select titulo, GENERO
from LIVROS
where PAGINAS>700 or PRECO_TABELA>30;
--RESULTADOS:#11
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

--Exercicio8
--Titulo dos livros informaticos e ordenalos na ordem desscendente pelo preco
select TITULO,PRECO_TABELA
from LIVROS
where GENERO='Informática'
order by PRECO_TABELA desc;
--RESULTADOS:#19
/*
Oracle 8 - Curso completo	                    44
Windows NT Server 4 para profissionais	      40
TCP/IP em redes Microsoft para profissionais	33
Microsoft Office 2000 sem fronteiras	        32
Windows NT Server 4 Curso Completo	          32
Microsoft Office 2000 para todos            	28
Tecnologia dos Sistemas Distribuidos	        25
Tecnologia de Base de Dados                 	25
Fundamental do Word 2000                    	24
Redes Locais em Windows 98 e 95             	22
Domine a 110% Word 2000                      	22
*/

--******************************--

--Aula de BD pratica - 13/03/2017 


--Ecercicio9
--Mostrar o ISBN e os Titulos dos livros policiais, ordenar ascendente a quant. em stock e descendente o preço por tabela.
  select ISBN,TITULO
  from LIVROS
  where GENERO='Policial'
  order by QUANT_EM_STOCK asc, PRECO_TABELA desc;
--RESULTADOS:#3
/*
9727221343	A balada de Hill Street
9721212232	O mistério da porta trancada
9727763764	A balada de Nova Iorque
*/


--Exercicio10
--Codigo de Autores que nao têm livros registados na tabela livros
select CODIGO_AUTOR   --Queremos os CODIGOS de autores
from AUTORES          --Da lista de Autores
WHERE NOT EXISTS      --Onde nao existe
    (SELECT LIVROS.CODIGO_AUTOR         --Na lista autores codigo igual ao que ha na lista livros
     FROM LIVROS 
     WHERE AUTORES.CODIGO_AUTOR = LIVROS.CODIGO_AUTOR)
     order by CODIGO_AUTOR asc;
--RESULTADOS:#6
/*
5
7
9
10
14
15
*/

--Exercicio11
--Titulos todos menos os policiais
select TITULO
from LIVROS
where GENERO != 'Policial'; -- podemos usar o sinal <> = diferente
--RESULTADOS:#16
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
Os cinco na praia
A outra cara metade
O Corsário Negro
Tu, eu e mais uns quantos
Oracle 8 - Curso completo
A vizinha do lado
*/


--Exercicio12
--Mostrar Nome dos Autores com idade superior a 30 e que o genero preferido é policial. Ascendente pelo nome.
select NOME
from AUTORES
where IDADE > 30 and GENERO_PREFERIDO='Policial'
order by NOME asc;
--RESULTADOS#4
/*
Carlos Milheiro
Christian Crumush
Rui Vega
Samuel Santos
*/

--Exercicio13
--Todos os Titulos excepto os policiais (usando o NOT)
select TITULO
from LIVROS
where not GENERO='Policial';
--RESULTADOS:#16
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
Os cinco na praia
A outra cara metade
O Corsário Negro
Tu, eu e mais uns quantos
Oracle 8 - Curso completo
A vizinha do lado
*/

--Exercicio14
--Nome dos autores que contenham 'c' ou 'f'
select NOME
from AUTORES
where NOME like '%c%' and NOME like '%f%';
--#0
/* ~ */

--Exercicio15
--Titulos dos Livros que comecem por 'O' e contenha a sequencia de letras 'st' e tambem os que comecam por 'M'  e contenham a sequencia 'to'

select TITULO
from LIVROS
where TITULO like 'O%st%' or TITULO like 'M%to%';
--#2
/*
Microsoft Office 2000 para todos
O mistério da porta trancada
*/

--Exercicio16
--Titulos dos Livros dos generos policiais,romance e informatica
select TITULO
from LIVROS
where GENERO='Policial' or GENERO='Romance' or GENERO='Informática';
--Podemos fazer tambem *where GENERO in ('Policial', 'Romance', 'Informática')
--RESULTADOS:#16
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
A outra cara metade
A balada de Hill Street
A balada de Nova Iorque
Oracle 8 - Curso completo
A vizinha do lado
*/

--Exercicio17
--Ter Output igual a como esta no inunciado.

select 'O titulo "'||TITULO||'" custa '||PRECO_TABELA||' euros' as DESCRICAO_PREÇO   --Usado PIPES para uma apresentacao bonita
from Livros;
--RESULTADOS:#19
/*
O titulo "Microsoft Office 2000 para todos" custa 28 euros
O titulo "Microsoft Office 2000 sem fronteiras" custa 32 euros
O titulo "Fundamental do Word 2000" custa 24 euros
O titulo "Domine a 110% Word 2000" custa 22 euros
O titulo "Windows NT Server 4 para profissionais" custa 40 euros
O titulo "Windows NT Server 4 Curso Completo" custa 32 euros
O titulo "Tecnologia dos Sistemas Distribuidos" custa 25 euros
O titulo "TCP/IP em redes Microsoft para profissionais" custa 33 euros
O titulo "Redes Locais em Windows 98 e 95" custa 22 euros
O titulo "Tecnologia de Base de Dados" custa 25 euros
O titulo "O mistério da porta trancada" custa 29 euros
O titulo "Os cinco na praia" custa 10 euros
O titulo "A outra cara metade" custa 71 euros
O titulo "A balada de Hill Street" custa 50 euros
O titulo "A balada de Nova Iorque" custa 18 euros
O titulo "O Corsário Negro" custa 27 euros
O titulo "Tu, eu e mais uns quantos" custa 33 euros
O titulo "Oracle 8 - Curso completo" custa 44 euros
O titulo "A vizinha do lado" custa 45 euros
*/

--Exercicio18
--Titulos dos livros policiais do Autor Cláudio Tereso
select LIVROS.TITULO,AUTORES.NOME
from LIVROS, AUTORES
where AUTORES.NOME='Cláudio Tereso' and LIVROS.GENERO='Policial' and LIVROS.CODIGO_AUTOR=AUTORES.CODIGO_AUTOR;
--RESULTADOS:#1
/*
A balada de Nova Iorque	Cláudio Tereso
*/

--Exercicio19
--Titulos dos livros policiais por autores de coimbra
select LIVROS.TITULO,AUTORES.NOME
from LIVROS, AUTORES
where LIVROS.GENERO='Policial' and AUTORES.MORADA like '%Coimbra' and LIVROS.CODIGO_AUTOR=AUTORES.CODIGO_AUTOR;
--RESULTADOS:#1
/*
O mistério da porta trancada - Maria José Sousa
*/

--Exercicio20
--Qual o nome dos autores que escreveram livros do seu tipo preferido
select distinct AUTORES.NOME
from AUTORES,LIVROS
where LIVROS.CODIGO_AUTOR=AUTORES.CODIGO_AUTOR and LIVROS.GENERO=AUTORES.GENERO_PREFERIDO;
--RESULTADOS:#10
/*
Maria José Sousa
Rui Lemos
Alves Marques
José Luis Pereira
Vitor Gonçalves
Fernando Tavares
Sérgio Sousa
Ana Capucho
Vitor Beça
Cláudio Tereso
*/

--Exercicio21
--livros que foram adquiridos por clientes em coimbra
select distinct TITULO,clientes.nome
from livros,clientes,vendas
where clientes.morada like '%Coimbra' and clientes.CODIGO_CLIENTE=vendas.CODIGO_CLIENTE and LIVROS.CODIGO_LIVRO=vendas.CODIGO_LIVRO;
--RESULTADOS:#1
/*
Microsoft Office 2000 para todos
*/

--Exercicio22
--titulo e genero do todos os livros excepto policiais e romance e ainda os que comecem por a letra 'O'
SELECT titulo,genero
from livros
where livros.genero not in ('Policial','Romance') and livros.TITULO like 'O%';
--RESULTADOS:#3
/*
Os cinco na praia	Aventura
O Corsário Negro	Aventura
Oracle 8 - Curso completo	Informática
*/

--Exercicio23
--autor recebe 30% do preco de tabela de cada livro, calcule quanto rendeu cada livro ao seu autor
SELECT distinct NOME,TITULO,LIVROS.CODIGO_LIVRO,PRECO_TABELA*0.3
FROM LIVROS, AUTORES
where AUTORES.CODIGO_AUTOR=LIVROS.CODIGO_AUTOR order by CODIGO_LIVRO;
--RESULTADOS:#
/*
Sérgio Sousa	      Microsoft Office 2000 para todos	            1	  8,4
Sérgio Sousa	      Microsoft Office 2000 sem fronteiras	        2	  9,6
Vitor Gonçalves	    Fundamental do Word 2000	                    3	  7,2
Carlos Milheiro	    Domine a 110% Word 2000	                      4	  6,6
Paulo Loureiro	    Windows NT Server 4 para profissionais	      5	  12
Samuel Santos	      Windows NT Server 4 Curso Completo	          6	  9,6
Alves Marques	      Tecnologia dos Sistemas Distribuidos	        7	  7,5
Paulo Loureiro	    TCP/IP em redes Microsoft para profissionais	8	  9,9
Cláudio Tereso	    Redes Locais em Windows 98 e 95	              9	  6,6
José Luis Pereira	  Tecnologia de Base de Dados	                  10	7,5
Maria José Sousa	  O mistério da porta trancada	                11	8,7
Fernando Tavares	  Os cinco na praia	                            12	3
Ana Capucho	        A outra cara metade	                          13	21,3
Rui Lemos	          A balada de Hill Street	                      14	15
Cláudio Tereso	    A balada de Nova Iorque	                      15	5,4
Paulo Loureiro	    O Corsário Negro	                            16	8,1
Robert Cowart	      Tu, eu e mais uns quantos	                    18	9,9
Vitor Beça	        Oracle 8 - Curso completo	                    19	13,2
Rui Vega	          A vizinha do lado	                            20	13,5
*/

--Exercicio24
--autor recebe 30% do preco de tabela de cada livro, calcule os livros que renderam mais de 100euros ao seu autor
SELECT distinct CODIGO_LIVRO, TITULO, round(PRECO_TABELA*0.3*UNIDADES_VENDIDAS,2) as RENDEU
FROM LIVROS
where (PRECO_TABELA*0.3)*UNIDADES_VENDIDAS>1000
order by codigo_livro;
--RESULTADOS:#18
/*
2	  Microsoft Office 2000 sem fronteiras	        3110,4
3 	Fundamental do Word 2000	                    3909,6
4	  Domine a 110% Word 2000	16071
6	  Windows NT Server 4 Curso Completo	          32880
7	  Tecnologia dos Sistemas Distribuidos	        3240
8	  TCP/IP em redes Microsoft para profissionais	54212,4
9	  Redes Locais em Windows 98 e 95	              4336,2
10	Tecnologia de Base de Dados	                  6576570
11	O mistério da porta trancada	                20131,8
12	Os cinco na praia	                            6942
13	A outra cara metade	                          97191,9
14	A balada de Hill Street	                      68445
15	A balada de Nova Iorque	                      4147,2
16	O Corsário Negro	                            7095,6
18	Tu, eu e mais uns quantos	                    43084,8
19	Oracle 8 - Curso completo	                    86407,2
20	A vizinha do lado	                            88330,5
*/

--Exercicio25
--para os livros com numero de paginas entre 400 e 700. calculamos o custo por pagina arredondado a 1 casa decimal . ordenado por custo de pagina
SELECT TITULO, round(PRECO_TABELA/PAGINAS,2) as "Custo por pagina"
FROM LIVROS
where paginas between 400 and 700
order by round(PRECO_TABELA/PAGINAS,5);
--RESULTADOS:#10
/*
Microsoft Office 2000 para todos	            0,05
Tecnologia dos Sistemas Distribuidos	        0,05
Tecnologia de Base de Dados	                  0,05
Microsoft Office 2000 sem fronteiras	        0,05
O Corsário Negro	                            0,06
Windows NT Server 4 para profissionais	      0,06
Windows NT Server 4 Curso Completo	          0,07
Oracle 8 - Curso completo	                    0,08
TCP/IP em redes Microsoft para profissionais	0,08
A balada de Hill Street	                      0,1
*/

--Exercicio26
--Obtenha o seguinte output
SELECT TITULO as "Titulo",round(PRECO_TABELA,2) as "Preço em Euros",round(PRECO_TABELA*200.482,2) as "Preço em Escudos"
FROM Livros
--RESULTADOS:#19
/*
Microsoft Office 2000 para todos	28	5613,5
Microsoft Office 2000 sem fronteiras	32	6415,42
Fundamental do Word 2000	24	4811,57
Domine a 110% Word 2000	22	4410,6
Windows NT Server 4 para profissionais	40	8019,28
Windows NT Server 4 Curso Completo	32	6415,42
Tecnologia dos Sistemas Distribuidos	25	5012,05
TCP/IP em redes Microsoft para profissionais	33	6615,91
Redes Locais em Windows 98 e 95	22	4410,6
Tecnologia de Base de Dados	25	5012,05
O mistério da porta trancada	29	5813,98
Os cinco na praia	10	2004,82
A outra cara metade	71	14234,22
A balada de Hill Street	50	10024,1
A balada de Nova Iorque	18	3608,68
O Corsário Negro	27	5413,01
*/

