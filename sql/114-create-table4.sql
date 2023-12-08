-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-07
-- File: 114-create-table4.sql

CREATE TABLE inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL,
    item VARCHAR(255),
    worth INTEGER NOT NULL,
    comment VARCHAR(255)
);




-- End of file


