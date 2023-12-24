-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-07
-- File: 113-create-table3.sql

CREATE TABLE weather (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    time_of_reading VARCHAR(255) NOT NULL,
    high NUMERIC,
    low NUMERIC,
    sig TEXT(2) NOT NULL,
    comment VARCHAR(512) NULL
);


-- End of file


