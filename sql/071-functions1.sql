-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 071-functions1.sql

SELECT
    LOWER(ename) AS Name,
    LOWER(job) AS Job,
    sal AS Salary
FROM
    emp
ORDER BY
    Name ASC, Job ASC;


-- End of file

