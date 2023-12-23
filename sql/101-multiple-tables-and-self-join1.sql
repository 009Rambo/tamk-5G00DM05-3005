-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 101-multiple-tables-self-join1.sql

SELECT
    mgr.ename AS "Manager",
    mgr.empno AS "Mgr#",
    emp.ename AS "Employee",
    emp.empno AS "Emp#"
FROM
    emp AS mgr
JOIN
    emp AS emp ON mgr.empno = emp.mgr
WHERE
    LOWER(mgr.ename) IN ('blake', 'ford', 'scott')
ORDER BY
    "Manager" ASC, "Employee" ASC;

-- End of file

