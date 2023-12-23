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
    LOWER(d.loc) = 'dallas' OR LOWER(d.dname) = 'sales'
ORDER BY
    "ename" ASC;


-- End of file

