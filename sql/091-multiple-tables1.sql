-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 091-multiple-tables1.sql

SELECT
    e.ename AS "ename",
    e.deptno AS "deptno",
    d.dname AS "dname"
FROM
    emp e
JOIN
    dept d ON e.deptno = d.deptno
WHERE
    d.loc = 'DALLAS' OR d.dname = 'SALES'
ORDER BY
    "ename" ASC;


-- End of file

