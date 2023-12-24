-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 104-multiple-tables-self-join4.sql

SELECT DISTINCT
    d.loc AS "Location",
    d.dname AS "Department",
    e.ename AS "Employee",
    m.ename AS "Manager"
FROM
    emp e
JOIN
    emp m ON e.mgr = m.empno
JOIN
    dept d ON e.deptno = d.deptno
WHERE
    m.ename IN ('BLAKE', 'FORD', 'JONES')
    AND m.sal > (SELECT MAX(hisal) FROM salgrade WHERE grade = 3)
ORDER BY
    "Location" ASC, "Manager" ASC, "Employee" ASC;


-- End of file

