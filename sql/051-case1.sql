-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-08
-- File: 051-case1.sql


UPDATE emp
SET job = 'SALES PERSON'
WHERE UPPER(job) = 'SALESMAN';

SELECT
    ename AS "Name",
    job AS "New Job Name"
FROM
    emp
ORDER BY
    job ASC,
    ename ASC;



-- End of file

