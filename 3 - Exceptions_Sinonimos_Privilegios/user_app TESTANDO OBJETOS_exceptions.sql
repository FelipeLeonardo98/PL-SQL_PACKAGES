-- SCRIPT user_app
-- Criando a procedure de incluir Segmento de mercado, por�m com o usu�rio user_app, AP�S o user_dev dar permiss�o
-- ap�s dar o sin�nimo de SEGMERCADO, para n�o precisar usar user_dev.SEGMERCADO, mesm coisa para o uso do PACKAGE EXCEPTION_PAC
CREATE OR REPLACE PROCEDURE INCLUIR_SEGMENTO
(p_ID IN SEGMERCADO.ID%type, p_DESCRICAO IN SEGMERCADO.DESCRICAO%type)
IS
BEGIN
    INSERT INTO SEGMERCADO (ID, DESCRICAO) VALUES (p_ID, p_DESCRICAO);
END;

SELECT * FROM SEGMERCADO;
-- TESTANDO
EXECUTE INCLUIR_SEGMENTO(NULL, 'SEGMENTO INCLUIDO PELO USER_APP');

-- ATUALIZANDO PROCEDURE, COM O TRATAMENTO DE EXCEPTION
CREATE OR REPLACE PROCEDURE INCLUIR_SEGMENTO
(p_ID IN SEGMERCADO.ID%type, p_DESCRICAO IN SEGMERCADO.DESCRICAO%type)
IS
BEGIN
    INSERT INTO SEGMERCADO (ID, DESCRICAO) VALUES (p_ID, p_DESCRICAO);
    EXCEPTION 
        WHEN EXCEPTION_PAC.e_null THEN
            RAISE_APPLICATION_ERROR(-20015, 'Campo de segmento com preenchimento obrigat�rio');
END;

-- TESTANDO
EXECUTE INCLUIR_SEGMENTO(NULL, 'SEGMENTO INCLUIDO PELO USER_APP');
