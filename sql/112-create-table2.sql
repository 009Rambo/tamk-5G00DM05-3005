-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-07
-- File: 112-create-table2.sql

CREATE TABLE football (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
  last VARCHAR(255),
  first VARCHAR(255),
  team VARCHAR(255),
  comment TEXT

);


-- End of file


