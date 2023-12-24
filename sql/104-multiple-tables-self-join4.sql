-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 104-multiple-tables-self-join4.sql

SELECT DISTINCT
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
    salgrade AS sg ON m.sal > sg.hisal
JOIN
    (SELECT MAX(hisal) AS max_hisal FROM salgrade WHERE grade = 3) AS max_sal ON m.sal > max_sal.max_hisal
WHERE
    LOWER(m.ename) IN ('blake', 'ford', 'jones')
ORDER BY
    "Location" ASC, "Manager" ASC, "Employee" ASC;


-- End of file

