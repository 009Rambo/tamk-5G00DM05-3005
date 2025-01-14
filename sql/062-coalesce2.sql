-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-08
-- File: 062-coalesce2.sql

SELECT
    ename AS "Name",
    COALESCE((COALESCE(sal, 0) - (COALESCE(sal, 0) * 0.31)), 0) + COALESCE((COALESCE(comm, 0) - (COALESCE(comm, 0) * 0.2)), 0) AS "Net Income",
    COALESCE((COALESCE(sal, 0) * 0.31), 0) + COALESCE((COALESCE(comm, 0) * 0.2), 0) AS "Tax"
FROM
    emp
ORDER BY
    "Net Income" ASC;


-- End of file

