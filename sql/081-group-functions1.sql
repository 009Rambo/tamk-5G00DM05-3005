-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 081-group-functions1.sql

SELECT
    COUNT(DISTINCT empno) AS "count of managers"
FROM
    emp
WHERE
    UPPER(job) IN ('MANAGER', 'PRESIDENT');


-- End of file

