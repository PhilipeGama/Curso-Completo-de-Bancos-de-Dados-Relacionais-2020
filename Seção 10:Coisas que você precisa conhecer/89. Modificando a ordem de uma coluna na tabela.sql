use universidade_u;

select *from aluno;
desc aluno;
show create table aluno;

alter table aluno modify `idaluno` int NOT NULL AUTO_INCREMENT first;

alter table aluno modify   `ativo_sn` int DEFAULT '1' after email;

