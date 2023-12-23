-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 093-multiple-tables3.sql

SELECT
    e.ename AS "ename",
    d.dname AS "dname",
    d.loc AS "location"
FROM
    emp e
JOIN
    dept d ON e.deptno = d.deptno
WHERE
    e.comm IS NOT NULL
ORDER BY
    "ename" ASC;

-- End of file
