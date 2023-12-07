-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-07
-- File: 111-create-table1.sql

CREATE TABLE person (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    last_name VARCHAR,
    first_name VARCHAR,
    phone VARCHAR CHECK (phone GLOB '+[ 0-9]*' AND LENGTH(phone) >= 2),
    zip VARCHAR,
    city VARCHAR,
    address VARCHAR
);


-- End of file


