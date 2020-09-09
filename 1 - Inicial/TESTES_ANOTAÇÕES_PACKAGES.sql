-- área de código do user: user_app, para testar  se o acesso ao pacote deu certo
EXECUTE USER_DEV.cliente_pac.INCLUIR_CLIENTE(10,'Primeiro cliente incluido por user_app via PACKAGE','45678',2,1200000);

SELECT * FROM CLIENTE;
-- Testando agora o acesso ao pacote e procedure porém com o sinônimo criado
EXECUTE CLIENTE_PAC.INCLUIR_CLIENTE(11,'Segundo cliente incluido por user_app via package','23456',2,1300000);
-- APÓS COMPLETAR O PACKAGE COM AS DEMAIS PROCEDURES: VAMOS TESTAR DE TUDO DEU CERTO, TESTAR A PROCEDURE DE EXCLUSÃO
EXECUTE CLIENTE_PAC.EXCLUIR_CLIENTE(10);
-- Após o OVERLOAD(SOBRECARGA) da Procedure Incluir_cliente, vamos testar os dois modelos de parametros
EXECUTE CLIENTE_PAC.INCLUIR_CLIENTE(15, 'INCLUIR CLIENTE COM 5 PARAMETROS', '99999',2, 90000);

SELECT * FROM CLIENTE;

EXECUTE CLIENTE_PAC.INCLUIR_CLIENTE(16, 'INCLUIR CLIENTE COM 3 PARAMETROS', 2);