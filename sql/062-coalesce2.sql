-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-08
-- File: 062-coalesce2.sql

SELECT
    ename AS "Name",
    COALESCE((sal - (sal * 0.31)), 0) + COALESCE((comm - (comm * 0.2)), 0) AS "Net Income",
    COALESCE((sal * 0.31), 0) + COALESCE((comm * 0.2), 0) AS "Tax"
FROM
    emp
ORDER BY
    "Net Income" ASC;


-- End of file

