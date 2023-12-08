-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-07
-- File: 113-create-table3.sql

CREATE TABLE weather (
    id INTEGER PRIMARY KEY UNIQUE NOT NULL,
    time_of_reading TEXT,
    high FLOAT INTEGER,
    low FLOAT INTEGER,
    sig VARCHAR(2),
    comment VARCHAR(255)
);



-- End of file


