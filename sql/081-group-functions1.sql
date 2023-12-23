-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 081-group-functions1.sql

SELECT
    job AS "Job Title",
    COUNT(*) AS "count of managers"
FROM
    emp
WHERE
    job IN ('MANAGER', 'PRESIDENT')
GROUP BY
    job;

-- End of file

