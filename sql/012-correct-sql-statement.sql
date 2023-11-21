-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-11-21
-- File: 012-correct-sql-statement.sql

SELECT empno,
       ename,
       salary * 12 AS "ANNUAL SALARY"
FROM emp;


-- End of file

