-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-11-21
-- File: 025-where5.sql



SELECT ename AS "Employee Name"
       , deptno AS "Department Number"
FROM emp
WHERE deptno IN (10, 30)
;


-- End of file

