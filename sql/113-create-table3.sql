-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-07
-- File: 113-create-table3.sql

CREATE TABLE weather (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
  time_of_reading TIMESTAMP NOT NULL,
  high NUMERIC,
  low NUMERIC,
  sig VARCHAR(255) CHECK(length(sig) = 2),
  comment VARCHAR(255)
);


-- End of file


