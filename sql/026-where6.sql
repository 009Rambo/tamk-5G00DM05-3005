-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-11-21
-- File: 026-where6.sql


SELECT ename AS "Employee"
       , sal AS "Monthly Salary"
FROM emp
WHERE sal > 1500 AND deptno IN (10, 30)
;

-- End of file

