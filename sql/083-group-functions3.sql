-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 083-group-functions3.sql

SELECT
    deptno AS "Department",
    MAX(sal) AS "high",
    MIN(sal) AS "low"
FROM
    emp
WHERE
    deptno IN (10, 30)
GROUP BY
    deptno;


-- End of file
