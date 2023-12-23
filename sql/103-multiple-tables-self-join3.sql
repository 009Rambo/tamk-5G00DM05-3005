-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 103-multiple-tables-self-join3.sql

SELECT DISTINCT
    emp.ename AS "Employee Name"
FROM
    emp AS emp
JOIN
    emp AS manager ON emp.mgr = manager.empno
WHERE
    emp.sal > manager.sal
   AND emp.comm IS NULL
ORDER BY
    "Employee Name" ASC;

-- End of file

