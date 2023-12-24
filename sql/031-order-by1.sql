-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-08
-- File: 031-order-by1.sql


SELECT
    e.ename AS "ename",
    e.sal AS "sal",
    e.sal * 1.15 AS "new salary"
FROM
    emp e
JOIN
    emp m ON e.mgr = m.empno
WHERE
    LOWER(m.ename) = 'blake'
ORDER BY
    "new salary" ASC, e.ename ASC;


-- End of file

