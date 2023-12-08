-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-08
-- File: 042-like2.sql


SELECT
    ename AS "Name",
    deptno AS "Department"
FROM
    emp
WHERE
    UPPER(SUBSTR(ename, 2, 1)) IN ('A', 'E', 'I', 'O', 'U','Y')
    AND job LIKE LOWER('SALESMAN') OR job like LOWER('ANALYST')

ORDER BY
    deptno ASC,
    ename ASC;



-- End of file

