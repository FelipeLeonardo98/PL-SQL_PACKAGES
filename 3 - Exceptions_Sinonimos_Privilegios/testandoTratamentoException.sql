-- testando tratamento de exception no momento de inserir cliente, inserindo errado, com id NULL

EXECUTE APP_INCLUIR_CLIENTE (NULL, 'INCLUIDO POR USER_APP PARA TESTAR VALOR NULO', '23456', 1, 100000);