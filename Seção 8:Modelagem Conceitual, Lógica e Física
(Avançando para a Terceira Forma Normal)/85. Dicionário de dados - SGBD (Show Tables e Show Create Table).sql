use universidade_u;

/*
1) - descrever as tabelas do banco
2) - descrever as atributos das tabelas
3) - descrever os relacionamentos entre as tabelas
*/

desc disciplina;

show tables;
show create table telefone;

CREATE TABLE `telefone` (
  `idtelefone` int NOT NULL AUTO_INCREMENT,
  `numero` varchar(20) DEFAULT NULL,
  `tipo` char(3) DEFAULT NULL,
  `fk_idaluno` int DEFAULT NULL,
  PRIMARY KEY (`idtelefone`),
  KEY `fk_aluno_telefone` (`fk_idaluno`),
  CONSTRAINT `fk_aluno_telefone` FOREIGN KEY (`fk_idaluno`) REFERENCES `aluno` (`idaluno`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;