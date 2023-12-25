-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-07
-- File: 113-create-table3.sql

CREATE TABLE weather (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
  time_of_reading TIMESTAMP NOT NULL,
  high NUMERIC,
  low NUMERIC,
  sig TEXT NOT NULL CHECK(LENGTH(sig) = 2 AND typeof(sig) = 'text'),
  "comment" TEXT
);



-- End of file


