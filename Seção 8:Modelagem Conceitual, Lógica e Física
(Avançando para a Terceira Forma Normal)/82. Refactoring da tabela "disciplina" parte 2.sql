use universidade_u;
desc disciplina;
alter table disciplina rename column codigo_professor to fk_idprofessor;

alter table disciplina add constraint fk_disciplina_professor 
foreign key(fk_idprofessor) references professor(idprofessor);

desc disciplina;

