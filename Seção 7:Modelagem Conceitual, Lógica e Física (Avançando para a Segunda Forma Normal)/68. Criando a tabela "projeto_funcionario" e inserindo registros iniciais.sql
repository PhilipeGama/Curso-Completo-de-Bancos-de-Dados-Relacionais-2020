use universidade_u;

create table projeto_funcionario(
	codigo_projeto int,
    matricula_funcionario int,
    nome_projeto varchar(100) not null,
    nome_funcionario varchar(50) not null,
    funcao_funcionario varchar(50) not null,
    telefone_funcionario varchar(20),
    data_criacao_projeto datetime default current_timestamp,
    horas_estimadas int not null,
    horas_realizadas int
);

alter table projeto_funcionario add constraint pk_projeto_funcionario 
primary key(codigo_projeto,matricula_funcionario);

desc projeto_funcionario;

alter table projeto_funcionario change column data_cricao_projeto 
data_criacao_projeto datetime default current_timestamp;

insert into projeto_funcionario (
	codigo_projeto, matricula_funcionario, nome_projeto,
    nome_funcionario, funcao_funcionario, horas_estimadas
) values(
	1,100,'Matricula Online',
    'Bianca', 'Analista de Atendimento', 200
);

insert into projeto_funcionario (
	codigo_projeto, matricula_funcionario, nome_projeto,
    nome_funcionario, funcao_funcionario, horas_estimadas
) values(
	1,110,'Matricula Online',
    'Fátima', 'Gerente de Atendimento', 100
);

insert into projeto_funcionario (
	codigo_projeto, matricula_funcionario, nome_projeto,
    nome_funcionario, funcao_funcionario, horas_estimadas
) values(
	1,127,'Matricula Online',
    'Miguel', 'Analista Programador Sênior', 500
);

insert into projeto_funcionario (
	codigo_projeto, matricula_funcionario, nome_projeto,
    nome_funcionario, funcao_funcionario, horas_estimadas
) values(
	2,221,'Economia de Papel',
    'Laura', 'Analista de Qualidade', 200
);

insert into projeto_funcionario (
	codigo_projeto, matricula_funcionario, nome_projeto,
    nome_funcionario, funcao_funcionario, horas_estimadas
) values(
	3,221,'Notas Online',
    'Carlos', 'Analista Administrativo', 150
);

select *from projeto_funcionario;