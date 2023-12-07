-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-08
-- File: 032-order-by2.sql


SELECT
    empno AS "empno",
    ename AS "ename",
    deptno AS "depno",
    hiredate AS "hiredate"
FROM
    emp
WHERE
    empno > 7900 OR empno < 7600
ORDER BY
    "empno" ASC;


-- End of file

