-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 074-functions4.sql

SELECT
    ename,
    CASE
        WHEN LOWER(ename) LIKE 'a%' OR LOWER(ename) LIKE 'm%' OR LOWER(ename) LIKE 'j%' THEN LOWER(job)
        ELSE job
    END AS job
FROM
    emp
ORDER BY
    LOWER(ename) ASC, LOWER(job) ASC;



-- End of file

