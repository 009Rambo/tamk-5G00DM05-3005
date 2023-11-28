-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-11-21
-- File: 025-where5.sql



SELECT ename AS "ename"
       , deptno AS "deptno"
FROM emp
WHERE deptno IN (10, 30)
;


-- End of file

