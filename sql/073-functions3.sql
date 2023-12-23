-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 073-functions3.sql

SELECT
    empno,
    ename,
    ROUND(sal * 1.15) AS "new salary",
    ROUND((sal * 1.15) - sal) AS increase
FROM
    emp
ORDER BY
    ename ASC, "new salary" ASC;


-- End of file

