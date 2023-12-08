-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-07
-- File: 113-create-table3.sql

CREATE TABLE weather (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    time_of_reading DATETIME,
    high NUMERIC(3,1),
    low NUMERIC(3,1),
    sig TEXT(2),
    comment VARCHAR(255)
);



-- End of file


