-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-08
-- File: 043-like3.sql


SELECT
    ename AS "ename"
FROM
    emp
WHERE
     LOWER (ename) LIKE '%L%L%'
    AND (deptno = 10 OR mgr = 7782)
ORDER BY
    ename;



-- End of file

