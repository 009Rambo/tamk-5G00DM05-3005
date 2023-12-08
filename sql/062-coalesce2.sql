-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-08
-- File: 062-coalesce2.sql


SELECT
    ename AS "Name",
    (COALESCE(sal, 0) + COALESCE(comm, 0) * 0.8) AS "Net Income",
    COALESCE(comm, 0) * 0.2 AS "Tax"
FROM
    emp
ORDER BY
    "Net Income" ASC;


-- End of file

