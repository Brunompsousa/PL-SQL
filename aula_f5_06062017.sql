--ex14 /*add nlivros que sera 0 por defeito mas que mais tarde tera um valor entre 0 e 150*/
alter table autores2
add nlivros number(4) default 0 not null check (nlivros > 0 and nlivros < 150);

--ex15 /*Cria a tabela editoras_backup*/
create table editoras_backup as select *
from editoras where 1 = 0;

--ex16

CREATE SEQUENCE SEQ_EDITBACK  
    START WITH 4  
    INCREMENT BY 1;
    
--ex17

insert into editoras_backup values (seq_editback.nextval,'D.Quixote',901111111,'Rua Cidade de Córdova, n.2 2610-038 Alfragide',707252252,707252253);
insert into editoras_backup values (seq_editback.nextval,'Almedina',901212121,'Rua Fernandes Tomás, n.76 a 80, 3000-167 Coimbra',239851903,239851904);

--ex18
select seq_editback.currval as valoractual from dual;
select seq_editback.nextval as seguinte from dual;

--ex19
drop sequence seq_editback;