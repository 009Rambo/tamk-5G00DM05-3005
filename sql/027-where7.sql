-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-11-21
-- File: 027-where7.sql


SELECT ename AS "Employee Name"
       , job AS "Job"
       , sal AS "Salary"
FROM emp
WHERE (job = 'CLERK' OR job = 'ANALYST')
AND
sal NOT IN (1000, 5000)
;


-- End of file

