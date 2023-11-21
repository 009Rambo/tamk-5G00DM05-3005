-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-11-21
-- File: 029-where9.sql


SELECT ename AS "Employee Name"
       , job AS "Job"
FROM emp
WHERE mgr IS NULL
;


-- End of file

