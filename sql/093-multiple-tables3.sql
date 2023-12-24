-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 093-multiple-tables3.sql

SELECT
    e.ename AS "ename",
    d.dname AS "dname",
    d.loc AS "loc"
FROM
    emp AS e
JOIN
    dept AS d ON e.deptno = d.deptno
WHERE
    e.comm IS NOT NULL AND e.comm > 100 
ORDER BY
    "ename" ASC;

-- End of file
