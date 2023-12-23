-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 092-multiple-tables2.sql

SELECT DISTINCT
    e.job AS "job"
FROM
    emp e
JOIN
    dept d ON e.deptno = d.deptno
WHERE
    UPPER(d.loc) IN ('BOSTON', 'NEW YORK')
ORDER BY
    "job" ASC;

-- End of file
