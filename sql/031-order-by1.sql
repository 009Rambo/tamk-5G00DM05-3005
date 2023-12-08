-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-08
-- File: 031-order-by1.sql


SELECT
    ename AS "ename",
    sal AS "sal",
    sal * 1.15 AS "new salary"
FROM
    emp
WHERE
    mgr = (SELECT empno FROM emp WHERE ename = UPPER('BLAKE'))
ORDER BY
    "new salary" ASC,
    "ename" ASC;



-- End of file

