-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-07
-- File: 113-create-table3.sql

CREATE TABLE weather (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    time_of_reading TEXT,
    high NUMERIC,
    low NUMERIC,
    sig CHAR(2),
    comment TEXT
);



-- End of file


