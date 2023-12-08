-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-08
-- File: 052-case2.sql


SELECT
    ename AS "ename",
    CASE
        WHEN deptno = 30 AND (comm IS NULL OR comm = 0) THEN 100
        WHEN deptno = 30 AND comm IS NOT NULL THEN comm * 1.05
        ELSE comm
    END AS "comm"
FROM
    emp
ORDER BY
    "comm" ASC,
    ename ASC;


-- End of file

