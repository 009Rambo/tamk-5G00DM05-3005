-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 102-multiple-tables-self-join2.sql

SELECT
    d.deptno AS "Dept",
    e.ename AS "Employee",
    e1.ename AS "Colleague"
FROM
    dept AS d
JOIN
    emp AS e ON d.deptno = e.deptno
JOIN
    emp AS e1 ON d.deptno = e1.deptno AND e.empno <> e1.empno
ORDER BY
    "Dept" ASC,
    "Employee" ASC,
    "Colleague" ASC;



-- End of file

