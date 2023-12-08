-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-08
-- File: 062-coalesce2.sql

SELECT
    ename AS "Name",
    ROUND(sal - (sal * 0.31)) AS "Net Income",
    ROUND((sal * 0.31), 2) AS "Tax"
FROM
    emp
ORDER BY
    "Net Income" ASC,
    ename ASC;


-- End of file

