use universidade_u;

select *from gasto;

-- delete 
-- drop table / create table
-- truncate table

truncate table gasto;


-- truncando a tabela onde está a fk
select *from telefone;
desc telefone;

truncate table telefone;

-- truncado a tabela referência
select *from aluno;
-- desligar integridade referêncial
set foreign_key_ckecks = 0;
-- ligar integridade referêncial
set foreign_key_ckecks = 1;
truncate table aluno;



create table telefone_2(
	idtelefone int auto_increment,
    numero varchar(20),
    tipo char(3),
    fk_idaluno int,
    primary key(idtelefone)
);

insert into telefone_2(idtelefone, numero, tipo, fk_idaluno)

(select *from telefone);

alter table telefone_2 add constraint fk_aluno_telefone 
foreign key(fk_idaluno) references aluno(idaluno);

