-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-11-21
-- File: 033-order-by3.sql


SELECT
    deptno AS "Dept",
    ename AS "Employee",
    sal * 12 * 0.31 AS "Taxes"
FROM
    emp
WHERE
    deptno = 10
ORDER BY
    "Dept" ASC, "Employee" ASC;

-- End of file

