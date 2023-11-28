-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-11-21
-- File: 027-where7.sql


SELECT ename
       , job
       , sal
FROM emp
WHERE (job = 'CLERK' OR job = 'ANALYST')
AND (sal <> 1000 AND sal <> 5000)
;



-- End of file

