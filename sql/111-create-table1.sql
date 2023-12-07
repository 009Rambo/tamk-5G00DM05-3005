-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-07
-- File: 111-create-table1.sql

CREATE TABLE person (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    last VARCHAR(255),
    first VARCHAR(255),
    phone VARCHAR(20) CHECK (phone GLOB '+[ 0-9]*' AND LENGTH(phone) >= 2),
    zip VARCHAR(10),
    city VARCHAR(255),
    address VARCHAR(255)
);



-- End of file


