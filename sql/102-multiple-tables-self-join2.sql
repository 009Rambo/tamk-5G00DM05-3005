-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 102-multiple-tables-self-join2.sql

SELECT
    e.deptno AS "Dept",
    e.ename AS "Employee",
    c.ename AS "Colleague"
FROM
    emp e
JOIN
    emp c ON e.deptno = c.deptno AND e.empno <> c.empno
ORDER BY
    "Dept" ASC, "Employee" ASC, "Colleague" ASC;

-- End of file

