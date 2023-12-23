-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 081-group-functions1.sql

SELECT
    job AS "Job Title",
    COUNT(*) AS "Count of Managers"
FROM
    emp
WHERE
    UPPER(job) IN ('MANAGER', 'PRESIDENT')
GROUP BY
    job;


-- End of file

