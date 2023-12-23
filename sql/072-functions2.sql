-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 072-functions2.sql

SELECT
    LOWER(ename) AS Name,
    LENGTH(ename) AS Characters
FROM
    emp
ORDER BY
    Characters ASC, Name ASC;


-- End of file

