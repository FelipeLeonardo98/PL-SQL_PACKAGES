-- PACKAGE'S EXCEPTIONS
CREATE OR REPLACE PACKAGE EXCEPTION_PAC
IS
   -- variaveis que recebem exceptions
    e_null exception;
    -- o erro Oracle correspondente a inserir NULL aonde não pode, é ORA-1400
    -- vamos referencia-lo à var e_null
    PRAGMA exception_init (e_null, -1400);
    e_fk exception;
    PRAGMA exception_init (e_fk, -2291);
END;