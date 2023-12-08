-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-08
-- File: 062-coalesce2.sql

SELECT
    ename AS "Name",
    ROUND(COALESCE(sal, 0) - COALESCE(sal, 0) * 0.31, 2) AS "Net Income",
    ROUND(COALESCE(sal, 0) * 0.31, 2) AS "Tax"
FROM
    emp
ORDER BY
    "Net Income" ASC;


-- End of file

