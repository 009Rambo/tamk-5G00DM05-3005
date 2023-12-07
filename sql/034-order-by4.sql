-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-08
-- File: 034-order-by4.sql


SELECT
    ename AS "Employee",
    sal AS "Monthly Salary",
    sal * 1.1 AS "Sal 10%",
    comm AS "Comm"
FROM
    emp
WHERE
    comm > sal * 1.1
ORDER BY
    "Employee" ASC,
    "Monthly Salary" ASC,
    "Comm" ASC;


-- End of file

