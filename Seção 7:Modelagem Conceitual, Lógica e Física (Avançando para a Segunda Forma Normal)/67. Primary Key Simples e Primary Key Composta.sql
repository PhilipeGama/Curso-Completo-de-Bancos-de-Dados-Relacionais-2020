use universidade_u;

alter table aluno_curso drop primary key;

alter table aluno_curso add constraint
pk_aluno_curso primary key(fk_idaluno,fk_idcurso,data_inscricao_curso);

select *from aluno_curso;
desc aluno_curso;