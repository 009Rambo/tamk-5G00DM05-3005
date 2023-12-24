-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 095-multiple-tables5.sql

SELECT
    e.ename AS "ename",
    e.job AS "job",
    e.deptno AS "deptno",
    d.dname AS "dname"
FROM
    emp AS e
JOIN
    dept AS d ON e.deptno = d.deptno
WHERE
    (UPPER(d.dname) = 'ACCOUNTING' AND e.sal > 1000)
    OR (UPPER(d.dname) = 'SALES' AND e.sal > 1000)
    OR (UPPER(d.dname) = 'OPERATIONS' AND e.sal > 1000)
ORDER BY
    "ename" ASC;

-- End of file
