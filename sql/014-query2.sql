-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-11-21
-- File: 014-query2.sql

SELECT
  ename AS "ename",
  (CASE
    WHEN strftime('%m', hiredate) = '01' THEN sal
    WHEN strftime('%m', hiredate) = '02' THEN sal
    WHEN strftime('%m', hiredate) = '03' THEN sal
    ELSE 0
  END) AS "first quarter"
FROM emp;


-- End of file

