-- 
--  Sea el siguiente conjunto de tablas en una base de datos:
-- 
--    tbl0
--    ------------------------
--    K0  CHAR(1)
--    c01 INT
--    c02 INT
--    c03 CHAR(4)
--    c04 FLOAT
--        
--    tbl1
--    ------------------------
--    K0  CHAR(1)
--    K1  INT
--    c12 FLOAT
--    c13 INT
--    c14 DATE
--    c15 FLOAT
--    c16 CHAR(4)
--
--    tbl2
--    ------------------------
--    K1  INT,
--    c21 FLOAT,
--    c22 INT,
--    c23 DATE,
--    c24 FLOAT,
--    c25 CHAR(5)
--
--  Escriba una consulta que retorne todos los campos de 
--  la tabla tbl1 ordenada por fecha (c14) para los 
--  registros con K0 igual a A
-- 
--  Rta/
--    K0  K1     c12  c13         c14   c15   c16
--  0  A  20  938.16  300  2016-09-12  0.19  BECB
--  1  A  30  135.80  900  2017-01-26  0.23  EGAB
--  2  A  18  142.99  100  2017-02-12  0.48  GGFD
--  3  A  26  456.47  400  2018-01-28  0.11  FGED
--  4  A   6  391.42  300  2018-05-15  0.22  BFGB
--  5  A  10  816.51  600  2019-04-25  0.40  DAGC
--
--  >>> Escriba su codigo a partir de este punto <<<
-- 
SELECT *
FROM tbl1   
WHERE K0 = 'A' 
ORDER BY c14;

