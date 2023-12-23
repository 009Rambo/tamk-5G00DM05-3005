-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 104-multiple-tables-self-join4.sql

SELECT
    d.loc AS "Location",
    d.dname AS "Department",
    e.ename AS "Employee",
    m.ename AS "Manager"
FROM
    emp AS e
JOIN
    emp AS m ON e.mgr = m.empno
JOIN
    dept AS d ON e.deptno = d.deptno
JOIN
    salgrade AS sg ON e.sal BETWEEN sg.losal AND sg.hisal
WHERE
    LOWER(m.ename) IN ('blake', 'ford', 'jones')
    AND m.sal > sg.hisal
    AND e.sal BETWEEN sg.losal AND sg.hisal 
ORDER BY
    "Location" ASC, "Manager" ASC, "Employee" ASC;


-- End of file

