-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-23
-- File: 102-multiple-tables-self-join2.sql

SELECT DISTINCT
    d.deptno AS "Dept",
    e.ename AS "Employee",
    e1.ename AS "Colleague"
FROM
    dept AS d
JOIN
    emp AS e ON d.deptno = e.deptno
JOIN
    emp AS e1 ON d.deptno = e1.deptno AND e.empno < e1.empno
WHERE
    e.ename != e1.ename  
ORDER BY
    d.deptno ASC,
    e.ename ASC,
    e1.ename ASC;


-- End of file

