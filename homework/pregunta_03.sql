-- 
--  La tabla `tbl1` tiene la siguiente estructura:
-- 
--    K0  CHAR(1)
--    K1  INT
--    c12 FLOAT
--    c13 INT
--    c14 DATE
--    c15 FLOAT
--    c16 CHAR(4)
-- 
--  Escriba una consulta que retorne los primeros cinco
--  registros de la tabla `tbl1` ordenados por fecha.
-- 
--  Rta/
--    K0  K1     c12  c13         c14   c15   c16
--  0  A  20  938.16  300  2016-09-12  0.19  BECB
--  1  C  15  370.58  900  2016-10-01  0.11  GCDD
--  2  E  22  118.77  900  2016-10-29  0.32  GEFE
--  3  B  12  999.72  800  2016-11-09  0.26  FCGD
--  4  E  14  832.44  800  2016-11-22  0.39  EGFD
--
--  >>> Escriba su codigo a partir de este punto <<<
--  
SELECT K0, K1, c12, c13, c14, c15, c16
FROM tbl1
ORDER BY c14
LIMIT 5;
--
