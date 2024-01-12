const express = require('express');
const sqlite3 = require('sqlite3');
const path = require('path');

const app = express();
const port = 8000;

// Middleware to parse JSON in the request body
app.use(express.json());

// Use a persistent SQLite database file
const dbPath = path.join(__dirname, 'database.db');
const db = new sqlite3.Database(dbPath, (err) => {
  if (err) {
    console.error('Error opening database:', err.message);
  } else {
    console.log(`Connected to SQLite database at ${dbPath}`);

    // Create users table if not exists
    db.run(`
      CREATE TABLE IF NOT EXISTS users (
        id INTEGER PRIMARY KEY,
        first_name TEXT,
        last_name TEXT,
        city TEXT,
        department INTEGER
      )
    `, (createTableError) => {
      if (createTableError) {
        console.error('Error creating table:', createTableError.message);
      } else {
        console.log('Users table created or already exists');

        // Insert sample data
        db.run(`
          INSERT INTO users (first_name, last_name, city, department)
          VALUES ('Rohan', 'Dutta', 'Kolkata', 20)
        `);
      }
    });
  }
});

// CRUD Operations -------------------------------------------

// Create - Add a new user
app.post('/users', (req, res) => {
  const { first_name, last_name, city, department } = req.body;

  if (!first_name || !last_name || !city || !department) {
    return res.status(400).json({ error: 'All fields are required', code: 400 });
  }

  const insertQuery = `
    INSERT INTO users (first_name, last_name, city, department)
    VALUES (?, ?, ?, ?)
  `;

  db.run(insertQuery, [first_name, last_name, city, department], function (err) {
    if (err) {
      console.error(err.message);
      return res.status(500).json({ error: 'Internal Server Error', code: 500 });
    }

    res.status(201).json({ message: 'User added successfully', userId: this.lastID });
  });
});



// Get all users or users by criteria (AND and OR)
app.get('/users', (req, res) => {
  const queryParams = req.query;

  // If there are query parameters, construct the WHERE clause
  let whereClause = '';
  const values = [];

  Object.keys(queryParams).forEach((key, index) => {
    if (index > 0) {
      whereClause += ' AND ';
    }

    const valuesArray = queryParams[key].split(',');

    if (valuesArray.length > 1) {
      // Handle OR condition
      whereClause += `${key} IN (${valuesArray.map(() => '?').join(', ')})`;
      values.push(...valuesArray);
    } else {
      // Handle AND condition
      whereClause += `${key} = ?`;
      values.push(valuesArray[0]);
    }
  });

  // Query to retrieve user data
  let selectQuery = 'SELECT * FROM users';

  // If there is a WHERE clause, append it to the query
  if (whereClause !== '') {
    selectQuery += ` WHERE ${whereClause}`;
  }

  db.all(selectQuery, values, (err, rows) => {
    if (err) {
      console.error(err.message);
      return res.status(500).json({ error: 'Internal Server Error' });
    }

    if (rows.length === 0) {
      return res.status(404).json({ error: 'No matching users found', code: 404 });
    }

    res.json({ users: rows });
  });
});




// GET route for a single user by ID
app.get('/users/:id', (req, res) => {
  const userId = req.params.id;

  // Query to retrieve a single user by ID
  const selectQuery = 'SELECT * FROM users WHERE id = ?';

  db.get(selectQuery, [userId], (err, row) => {
    if (err) {
      console.error(err.message);
      return res.status(500).json({ error: 'Internal Server Error' });
    }

    if (!row) {
      return res.status(404).json({ error: 'User not found', code: 404 });
    }

    console.log('Retrieved user data:', row); // Logging for verification

    res.json({ user: row });
  });
});



// Update - Modify user information
app.patch('/users/:id', (req, res) => {
  console.log('PATCH Request Received'); // log for testing purpose
  console.log('User ID from URL:', req.params.id); // log for testing purpose
  console.log('Request Body:', req.body); // log for testing purpose

  const { first_name, last_name, city, department } = req.body;

  const updateFields = [];
  const updateValues = [];

  // Check if each field is provided and add to the update query
  if (first_name !== undefined) {
    updateFields.push('first_name = ?');
    updateValues.push(first_name);
  }
  if (last_name !== undefined) {
    updateFields.push('last_name = ?');
    updateValues.push(last_name);
  }
  if (city !== undefined) {
    updateFields.push('city = ?');
    updateValues.push(city);
  }
  if (department !== undefined) {
    updateFields.push('department = ?');
    updateValues.push(department);
  }

  const updateQuery = `
    UPDATE users
    SET ${updateFields.join(', ')}
    WHERE id = ?
  `;

  console.log('Generated SQL Query:', updateQuery);

  db.run(
    updateQuery,
    [...updateValues, req.params.id],
    function (err) {
      if (err) {
        console.error('Error during update', err.message);
        return res.status(500).json({ error: 'Internal Server Error', code: 500 });
      }

      res.json({ message: `User with ID ${req.params.id} updated successfully` });
    }
  );
});



// Update - Modify user information with PUT
app.put('/users/:id', (req, res) => {
  console.log('PUT Request Received');
  console.log('User ID from URL:', req.params.id);
  console.log('Request Body:', req.body);

  const { first_name, last_name, city, department } = req.body;

  const updateQuery = `
    UPDATE users
    SET first_name = ?, last_name = ?, city = ?, department = ?
    WHERE id = ?
  `;

  console.log('Generated SQL Query:', updateQuery);

  db.run(
    updateQuery,
    [first_name, last_name, city, department, req.params.id],
    function (err) {
      if (err) {
        console.error('Error during update', err.message);
        return res.status(500).json({ error: 'Internal Server Error', code: 500 });
      }

      res.json({ message: `User with ID ${req.params.id} updated successfully` });
    }
  );
});



// Delete - Remove a user
app.delete('/users/:id', (req, res) => {
  const deleteQuery = 'DELETE FROM users WHERE id = ?';

  db.run(deleteQuery, [req.params.id], function (err) {
    if (err) {
      console.error(err.message);
      return res.status(500).json({ error: 'Internal Server Error', code:500 });
    }

    res.json({ message: `User with ID ${req.params.id} deleted successfully` });
  });
});



// Default error handler for non-existing routes
app.use((req, res, next) => {
  const error = new Error(`Bad Request: ${req.url} is not a known endpoint`);
  error.statusCode = 400;
  next(error);
});

// Improved Error Handling Middleware
app.use((err, req, res, next) => {
  console.error(err.stack);

  const statusCode = err.statusCode || 500;
  res.status(statusCode).json({ error: err.message, code: statusCode });
});



// Listen for requests
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});


