## README for Database Initialization

To set up the initial database, follow these steps:

1. Install SQLite: If you haven't installed SQLite,
download and install it from https://www.sqlite.org/download.html.

2. Navigate to the 'sql' directory in your terminal or command prompt.

3. Run the following SQL files in order:

    a. create.sql - Create table statements
    b. insert.sql - Insert statements for tables
    c. delete.sql - Delete statements to empty data in all tables

Example:

```bash
sqlite3 path/to/your/database.db < create.sql
sqlite3 path/to/your/database.db < insert.sql
sqlite3 path/to/your/database.db < delete.sql
