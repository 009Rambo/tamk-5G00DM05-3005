-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 094-multiple-tables4.sql

SELECT
    e.ename AS "Employee Name",
    d.dname AS "Department Name"
FROM
    emp e
JOIN
    dept d ON e.deptno = d.deptno
WHERE
    LOWER(e.ename) LIKE '%a%' AND e.sal > 1100 AND e.sal <= 2200
ORDER BY
    "Employee Name" ASC;

-- End of file

