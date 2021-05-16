use universidade_u;

select *from funcionario;

alter table funcionario add column fk_idmatricula_supervisor int;

alter table funcionario add constraint fk_funcionario_supevisor
foreign key(fk_idmatricula_supervisor) references funcionario(idmatricula);

describe funcionario;

insert into funcionario(
	nome,funcao
) values (
	'Pedro', 'Gerente de TI'
);

update funcionario set fk_idmatricula_supervisor = 100
where idmatricula = 100;

