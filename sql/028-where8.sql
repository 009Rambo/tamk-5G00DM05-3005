-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-11-21
-- File: 028-where8.sql


SELECT ename AS "Employee Name"
       , sal AS "Salary"
       , COALESCE(comm, 0)
       AS "Commission"
FROM emp
WHERE comm IS NOT NULL
;


-- End of file

