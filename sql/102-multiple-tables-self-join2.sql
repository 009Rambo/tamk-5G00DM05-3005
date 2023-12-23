-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 102-multiple-tables-self-join2.sql

SELECT DISTINCT
    Dept,
    Employee,
    Colleague
FROM (
    SELECT
        e.deptno AS "Dept",
        CASE WHEN e1.ename < e2.ename THEN e1.ename ELSE e2.ename END AS "Employee",
        CASE WHEN e1.ename < e2.ename THEN e2.ename ELSE e1.ename END AS "Colleague"
    FROM
        emp e
    JOIN
        emp e1 ON e.deptno = e1.deptno
    JOIN
        emp e2 ON e.deptno = e2.deptno
    WHERE
        e1.empno < e2.empno
) AS T
ORDER BY
    "Dept" ASC, "Employee" ASC, "Colleague" ASC;

-- End of file

