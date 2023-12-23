-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 102-multiple-tables-self-join2.sql

SELECT
    d.deptno AS "Dept",
    e.ename AS "Employee",
    e1.ename AS "Colleague"
FROM
    Dept d
JOIN
    emp e ON d.deptno = e.deptno
JOIN
    emp e1 ON d.deptno = e1.deptno AND e.empno < e1.empno
ORDER BY
    d.deptno ASC,
    e.ename ASC,
    e1.ename ASC;


-- End of file

