-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 082-group-functions2.sql

SELECT
    deptno AS "Department",
    COUNT(*) AS "count of dept 30"
FROM
    emp
WHERE
    deptno = 30
GROUP BY
    deptno;


-- End of file

