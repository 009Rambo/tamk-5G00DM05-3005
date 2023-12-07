-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-07
-- File: 111-Create-table-1.sql

CREATE TABLE person
(
    id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    last TEXT NOT NULL,
    first TEXT NOT NULL,
    phone INTEGER NOT NULL,
    zip INTEGER NOT NULL,
    city TEXT NOT NULL,
    address TEXT NOT NULL
);


INSERT INTO person
(
    id,
    last,
    first,
    phone,
    zip,
    city,
    address
)
VALUES
(
    1,
    'Doe',
    'John',
    1234567890,
    12345,
    'Cityville',
    '123 Main St'
);

-- End of file


