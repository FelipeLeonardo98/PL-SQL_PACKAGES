-- user_dev: dando permissão para o user_app VER e INSERIR na table SEGMERCADO
GRANT SELECT ON SEGMERCADO TO user_app;  -- GRANT PARA VER
GRANT INSERT ON SEGMERCADO TO user_app;  -- GRANT PARA INSERIR
-- OR 
GRANT SELECT, INSERT ON SEGMERCADO TO user_app;  -- GRANT PARA INSERIR

-- Agora, vamos dar um sinônimo a table SEGMERCADO para o user_app acessar com mais facilidade
CREATE PUBLIC SYNONYM SEGMERCADO FOR user_dev.SEGMERCADO;

-- Vamos dar privilégio de execução ao pacote de exceção
-- Adicionar para um usuário individual:
 --   GRANT EXECUTE ON EXCEPTION_PAC TO user_app;
-- Para todos users, GLOBAL
    GRANT EXECUTE ON EXCEPTION_PAC TO PUBLIC;
    
-- Vamos dar SINÔNIMO ao pacote de exceção
CREATE PUBLIC SYNONYM EXCEPTION_PAC FOR user_dev.EXCEPTION_PAC;
