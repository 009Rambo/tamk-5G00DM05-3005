-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-11-21
-- File: 014-query2.sql

SELECT
    ename AS ename,
    COALESCE(sal, 0) * 3 AS "first quarter"
FROM
    emp;


-- End of file

