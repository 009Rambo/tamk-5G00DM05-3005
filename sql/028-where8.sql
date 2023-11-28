-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-11-21
-- File: 028-where8.sql


SELECT ename AS "ename"
       , sal AS "sal"
       , COALESCE(comm, 0)
       AS "comm"
FROM emp
WHERE comm IS NOT NULL
;


-- End of file

