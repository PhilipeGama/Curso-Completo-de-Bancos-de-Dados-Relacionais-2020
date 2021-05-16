use  universidade_u;

create table professor(
	idprofessor int auto_increment,
    nome varchar(50) not null,
    email varchar(100),
    constraint pk_professor primary key(idprofessor)
);

desc professor;
insert into professor
select  distinct codigo_professor,nome_professor,email_professor
from disciplina
group by codigo_professor;

select *from professor; 
update disciplina set email_professor = 'jorge@teste.com.br'
where codigo_professor = 100;

select  distinct
codigo_professor, count(*) as repeticoes,nome_professor,email_professor
from disciplina
group by codigo_professor;
 
 
alter table disciplina drop column nome_professor;
alter table disciplina drop column email_professor;


select *from disciplina;