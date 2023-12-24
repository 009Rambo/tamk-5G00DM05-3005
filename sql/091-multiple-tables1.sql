-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 091-multiple-tables1.sql

SELECT
    e.ename AS "Employee Name",
    e.deptno AS "Department Number",
    d.dname AS "Department Name"
FROM
    emp e
JOIN
    dept d ON e.deptno = d.deptno
WHERE
    LOWER(d.loc) = 'dallas' OR LOWER(e.job) = 'salesman'
ORDER BY
    "Employee Name" ASC;



-- End of file

