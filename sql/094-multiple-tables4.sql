-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 094-multiple-tables4.sql

SELECT
    e.ename AS "ename",
    d.dname AS "dname"
FROM
    emp AS e
JOIN
    dept AS d ON e.deptno = d.deptno
WHERE
    LOWER(e.ename) LIKE '%a%' AND e.sal > 1100 AND e.sal <= 2200
ORDER BY
    "ename" ASC;

-- End of file

