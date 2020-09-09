-- user_dev: dando permiss�o para o user_app VER e INSERIR na table SEGMERCADO
GRANT SELECT ON SEGMERCADO TO user_app;  -- GRANT PARA VER
GRANT INSERT ON SEGMERCADO TO user_app;  -- GRANT PARA INSERIR
-- OR 
GRANT SELECT, INSERT ON SEGMERCADO TO user_app;  -- GRANT PARA INSERIR

-- Agora, vamos dar um sin�nimo a table SEGMERCADO para o user_app acessar com mais facilidade
CREATE PUBLIC SYNONYM SEGMERCADO FOR user_dev.SEGMERCADO;

-- Vamos dar privil�gio de execu��o ao pacote de exce��o
-- Adicionar para um usu�rio individual:
 --   GRANT EXECUTE ON EXCEPTION_PAC TO user_app;
-- Para todos users, GLOBAL
    GRANT EXECUTE ON EXCEPTION_PAC TO PUBLIC;
    
-- Vamos dar SIN�NIMO ao pacote de exce��o
CREATE PUBLIC SYNONYM EXCEPTION_PAC FOR user_dev.EXCEPTION_PAC;
