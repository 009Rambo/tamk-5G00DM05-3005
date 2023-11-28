-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-11-21
-- File: 024-where4.sql


SELECT ename AS "ename"
       , job AS "job"
       , hiredate AS "hiredate"
FROM emp
WHERE hiredate BETWEEN '1981-02-20' AND '1981-05-01'
;


-- End of file

