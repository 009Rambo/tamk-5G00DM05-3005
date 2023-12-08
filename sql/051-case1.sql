-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-08
-- File: 051-case1.sql


SELECT
    ename AS "Name",
    CASE
        WHEN UPPER(job) = 'SALESMAN' THEN 'SALES PERSON'
        ELSE job
    END AS "New Job Name"
FROM
    emp
ORDER BY
    "New Job Name" ASC,
    ename ASC;




-- End of file

