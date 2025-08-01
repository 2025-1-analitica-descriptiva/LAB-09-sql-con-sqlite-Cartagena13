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
--  Escriba una consulta que retorne por cada letra de la
--  columna K0 de la tabla tbl1, el valor promedio de la 
--  columna c21 en la tabla tbl2, para aquellos registros
--  con c13 mayor a 400.
--
--  Rta/
--  K0    avg(c21)
--  0  A  593.495000
--  1  B  575.470000
--  2  C  530.753000
--  3  D  655.612500
--  4  E  555.323077
--
--  >>> Escriba su codigo a partir de este punto <<<
--
SELECT 
  tbl1.K0,
  ROUND(AVG(tbl2.c21), 2) AS "avg(c21)"
FROM tbl1
JOIN tbl2 ON tbl1.K1 = tbl2.K1
WHERE tbl1.c13 > 400
GROUP BY tbl1.K0
ORDER BY tbl1.K0;
