-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-07
-- File: 113-create-table3.sql

CREATE TABLE weather (
    id VARCHAR(255) PRIMARY KEY UNIQUE NOT NULL,
    time_of_reading DATETIME,
    high INTEGER,
    low INTEGER,
    sig VARCHAR(2) NOT NULL,
    comment VARCHAR (255)
);



-- End of file


