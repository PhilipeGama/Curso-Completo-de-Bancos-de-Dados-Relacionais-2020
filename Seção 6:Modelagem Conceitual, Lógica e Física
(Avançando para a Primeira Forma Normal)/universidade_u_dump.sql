/* universidade_u_logico: */
CREATE DATABASE universidade_u;

USE universidade_u;

CREATE TABLE aluno (
    sexo char(1),
    data_nascimento date,
    data_inscricao_curso date,
    telefone varchar(20),
    valor_pago_curso float(10,2),
    ativo_sn int,
    nome varchar(25),
    cpf varchar(14),
    email varchar(150),
    idaluno int auto_increment PRIMARY KEY
);

CREATE TABLE telefone (
    idtelefone int auto_increment PRIMARY KEY,
    numero varchar(20),
    tipo enum('res','com','cel'),
    fk_idaluno int
);

CREATE TABLE endereco (
    idendereco int PRIMARY KEY,
    logradouro varchar(100),
    numero varchar(10),
    complemento varchar(20),
    bairro varchar(100),
    cidade varchar(50),
    estado char(2),
    fk_idaluno int
);

CREATE TABLE curso(
	idcurso int auto_increment,
    descricao varchar(50),
    primary key(idcurso)
);



CREATE TABLE aluno_curso(
	id_alunocurso int auto_increment,
    fk_idaluno int,
    fk_idcurso int,
    data_inscricao_curso date,
    valor_pago_curso float(10,2),
    primary key(id_alunocurso)
);
 
ALTER TABLE telefone ADD CONSTRAINT fk_aluno_telefone
    FOREIGN KEY (fk_idaluno)
    REFERENCES aluno (idaluno);
 
ALTER TABLE endereco ADD CONSTRAINT fk_aluno_endereco
    FOREIGN KEY (fk_idaluno)
    REFERENCES aluno (idaluno);
    

    
use universidade_u;

insert into aluno(
	sexo, data_nascimento,data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, nome
)values(
	'M', '2018-12-01','1980-06-12', '11 5555-2222', 645.22, 
    1, 'João'
);

insert into aluno(
	data_inscricao_curso,data_nascimento, telefone, valor_pago_curso,
    ativo_sn, nome, 
    sexo
)values(
	'2018-11-01','1980-06-12' ,'11 3333-2222', 589.12, 
    1, 'Fernanda', 
    'F'
);


insert into aluno(
	data_inscricao_curso,data_nascimento, telefone, valor_pago_curso,
    ativo_sn, nome, 
    sexo
)values(
	'2018-12-02', '1982-01-07','11 3333-7777', 600.55, 
    0,  'José', 'M'
);


insert into aluno(
	data_inscricao_curso, data_nascimento, telefone, valor_pago_curso,
    ativo_sn, nome, 
    sexo
)values(
	'2018-12-02', '1985-11-05','11 7777-7777', 655.45, 
    1, 'Maria','F'
);


insert into aluno(
	data_inscricao_curso,data_nascimento,telefone, valor_pago_curso,
    ativo_sn, nome, 
    sexo
)values(
	'2018-11-15','1985-12-05','11 1111-7777', 612.99, 
    1,'Marcelo', 'M'
);

update telefone set fk_idaluno = 1
where numero in('11 5555-2222', '11 3333-4444');

insert into telefone(numero, tipo, fk_idaluno) 
values('11 5555-2222', 'res', 4);

insert into telefone(numero, tipo, fk_idaluno) 
values('11 5555-7777', 'res', 3);

insert into telefone(numero, tipo, fk_idaluno) 
values('11 5555-8888', 'res', 3);

insert into telefone(numero, tipo, fk_idaluno) 
values('11 5555-9999', 'res', 3);

select *from telefone;

insert curso(idcurso) values (1),(2),(3),(4);
			
select * from curso;

insert into curso(descricao)
values('Curso Completo do Desenvolvedor NodeJS e MongoDB');

insert into curso(descricao)
values('Desenvolvedor Multiplataforma Android e IOS');

insert into curso(descricao)
values('Desenvolvimento Web com Angular');

insert into curso(descricao)
values('Desenvolvimento Web Completo 2019');


insert into aluno_curso(id_alunocurso,fk_idaluno,fk_idcurso) values ()