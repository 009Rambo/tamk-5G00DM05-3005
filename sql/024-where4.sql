-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-11-21
-- File: 024-where4.sql


SELECT ename AS "Employee Name"
       , job AS "Job"
       , hiredate AS "Hire Date"
FROM emp
WHERE hiredate BETWEEN '1981-02-20' AND '1981-05-01'
;


-- End of file

