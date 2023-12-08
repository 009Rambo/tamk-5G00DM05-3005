-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-08
-- File: 061-coalesce1.sql


SELECT
    deptno,
    ename,
    COALESCE(comm, 0) AS comm
FROM
    emp
WHERE
    deptno = 30
ORDER BY
    ename ASC,
    comm ASC;


-- End of file

