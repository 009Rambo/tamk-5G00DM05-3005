-- Author: Ramesh Pandey <ramesh.pandey@tuni.fi>
-- Date: 2023-12-07
-- File: 113-create-table3.sql

CREATE TABLE weather (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
  time_of_reading TIMESTAMP NOT NULL,
  high NUMERIC,
  low NUMERIC,
  sig TEXT NOT NULL,
  comment VARCHAR(255)
);

CREATE TRIGGER sig_length_check
BEFORE INSERT OR UPDATE
ON weather
FOR EACH ROW
BEGIN
  IF (LENGTH(NEW.sig) <> 2) THEN
    RAISE EXCEPTION 'The SIG column must be of length 2';
  END IF;
END;


-- End of file


