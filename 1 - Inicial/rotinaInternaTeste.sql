-- Para uso do DBMS_OUTPUT
SET SERVEROUTP ON
EXECUTE CLIENTE_PAC.INCLUIR_CLIENTE(18,'INCLUIR CLIENTE PELO PACOTE, USANDO FUNCTION INTERNA',2);
select * from cliente;