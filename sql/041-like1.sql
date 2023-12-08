-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-08
-- File: 041-like1.sql


SELECT
    ename
FROM
    emp
WHERE
    SUBSTR(ename, 3, 1) LIKE '%a%';


-- End of file

