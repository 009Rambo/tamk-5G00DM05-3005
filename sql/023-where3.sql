-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-11-21
-- File: 023-where3.sql


SELECT ename AS "Employee Name"
       , sal AS "Salary"
FROM emp
WHERE sal < 1500 OR sal > 2850 OR sal IS NULL
;

-- End of file

