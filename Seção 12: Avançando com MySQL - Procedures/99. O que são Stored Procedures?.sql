/*
O que são Stored Procedures?
Procedimentos armazenados são pequenos programas armazenados no banco de dados que podem ser chamados a qualquer momento.
*/
CREATE PROCEDURE <proc_nome>(<parametros>)
BEGIN 

END

CALL <proc_nome>(<parametros>)

/*
Regras de negócio
Banco de dados

Desvantagem 
Necessidade de reescrita dos procedimentos para migração de banco de dados.

Vantagem 
Por estarem armazenados no banco de dados é mais fácil trocar as tecnologias da aplicação.
*/
