use universidade_u;

-- auto_increment (valor padrão é 1);
desc telefone;
select *from  telefone;

insert into telefone (numero, fk_idaluno, tipo) values ('11 3333-4444', 1, 'res');
insert into telefone (idtelefone, numero, fk_idaluno, tipo) values (200,'11 3333-4444', 1, 'res');

alter table telefone auto_increment = 353;
select max(idtelefone) + 1 from telefone;
alter table telefone auto_increment = 300;
select *from aluno;