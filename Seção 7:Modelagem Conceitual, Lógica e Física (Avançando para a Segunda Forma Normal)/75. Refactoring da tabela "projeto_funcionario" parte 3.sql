use universidade_u;

select *from projeto_funcionario;

select *from funcionario;

select 
	matricula_funcionario,
	nome_funcionario, 
    funcao_funcionario, 
    telefone_funcionario
from  
	projeto_funcionario;

insert into projeto_funcionario(
	codigo_projeto, matricula_funcionario, nome_projeto,
    nome_funcionario, funcao_funcionario, horas_estimadas
)values (
	 2, 100, 'Economia de Papel',
    'Bianca', 'Analista de Atendimento', 150
);

/* Query para a migração de registros de funcionarios */
insert into funcionario(
	idmatricula, nome,
	funcao, telefone
)
select  distinct 
	matricula_funcionario,nome_funcionario,
    funcao_funcionario, telefone_funcionario
from projeto_funcionario;

/* Query para a migração de registros de projetos */

insert into projeto(
	idcodigo, nome, data_criacao
)
select distinct 
	codigo_projeto, nome_projeto,
    data_criacao_projeto
from projeto_funcionario;


desc projeto_funcionario;
desc projeto;

select distinct 
	codigo_projeto,
	nome_projeto,
    data_criacao_projeto
from 
	projeto_funcionario;

select *from projeto_funcionario where codigo_projeto = 2 
order by data_criacao_projeto asc;

update projeto_funcionario 
set data_criacao_projeto = '2020-12-25 19:38:16'
where codigo_projeto = 2;

update projeto_funcionario set data_criacao_projeto = '2020-12-25 19:38:16',
nome_projeto = 'Matricula Online'
where codigo_projeto = 1;

/**/
select *from projeto;
select *from funcionario;

/* registros de relacionamento entre as tabelas */
insert into projeto_funcionario2(
	fk_idcodigo, fk_idmatricula,
    horas_estimadas, horas_realizadas
)
select codigo_projeto,matricula_funcionario,
		horas_estimadas, horas_realizadas
from projeto_funcionario;

select *from projeto_funcionario;
drop table projeto_funcionario;
select *from projeto_funcionario;
desc projeto_funcionario;

rename table projeto_funcionario2 to projeto_funcionario;