-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 095-multiple-tables5.sql

SELECT
    e.ename AS "Employee Name",
    e.job AS "Job",
    e.deptno AS "Department Number",
    d.dname AS "Department Name"
FROM
    emp e
JOIN
    dept d ON e.deptno = d.deptno
WHERE
    (UPPER(d.dname) = 'ACCOUNTING' AND e.sal > 1000)
    OR (UPPER(d.dname) = 'SALES' AND e.sal > 1000)
    OR (UPPER(d.dname) = 'OPERATIONS' AND e.sal > 1000)
ORDER BY
    "Employee Name" ASC;

-- End of file
