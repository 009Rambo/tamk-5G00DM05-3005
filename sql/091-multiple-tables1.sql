-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 091-multiple-tables1.sql

SELECT
    e.ename AS "Employee Name",
    e.deptno AS "Department Number",
    LOWER(d.dname) AS "Department Name"
FROM
    emp AS e 
JOIN
    dept AS d ON e.deptno = d.deptno
WHERE
    LOWER(d.loc) = 'dallas' OR UPPER(e.job) = 'SALESMAN'
ORDER BY
    "Employee Name" ASC;


-- End of file

