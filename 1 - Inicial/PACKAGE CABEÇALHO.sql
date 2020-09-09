create or replace PACKAGE CLIENTE_PAC
IS

PROCEDURE INCLUIR_CLIENTE 
        (p_id in cliente.id%type,
         p_razao_social in cliente.razao_social%type,
         p_CNPJ cliente.CNPJ%type ,
         p_segmercado_id cliente.segmercado_id%type,
        p_faturamento_previsto cliente.faturamento_previsto%type);
        
PROCEDURE ATUALIZAR_CLI_SEG_MERCADO
    (p_id cliente.id%type,
     p_segmercado_id cliente.segmercado_id%type);


PROCEDURE ATUALIZAR_FATURAMENTO_PREVISTO
    (p_id in cliente.id%type,
     p_faturamento_previsto in cliente.faturamento_previsto%type);
     
PROCEDURE EXCLUIR_CLIENTE
    (p_id in cliente.id%type);
    
 -- OVERLOAD (SOBRECARGA) DA PROCEDURE INCLUIR_CLIENTE
PROCEDURE INCLUIR_CLIENTE 
        (p_id in cliente.id%type,
         p_razao_social in cliente.razao_social%type,
         p_segmercado_id cliente.segmercado_id%type);   
END;