const express = require('express');
const cors = require('cors');
const pool = require('./db'); // Make sure to have your db.js file that exports a pool object

const app = express();

// Middleware
app.use(cors());
app.use(express.json());

// Routes

// Sign Up
app.post('/signup', async (req, res) => {
  try {
    const { user_name, password, email } = req.body;
    const userName = await pool.query(
      'INSERT INTO users (user_name, password, email, color, current_rating, max_rating, country, institution, contribution, problems_solved) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10) RETURNING *',
      [user_name, password, email, 'grey', 0, 0, 'Unspecified', 'Unspecified', 0, 0]
    );
    console.log(`Signing up with username: ${user_name}, password: ${password}, and email: ${email}`, userName.rows[0]);
    res.json(userName.rows[0]);
  } catch (err) {
    console.error(err.message);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

// Login
app.post('/login', async (req, res) => {
  try {
    const { user_name, password } = req.body;
    const result = await pool.query('SELECT * FROM users WHERE user_name = $1 AND password = $2', [user_name, password]);
    console.log(`Logging in with username: ${user_name} and password: ${password}`, result.rows[0]);
    if (result.rows.length > 0) {
      res.json(result.rows[0]);
      console.log('Login successful');
    } else {
      res.status(401).json({ error: 'Invalid username or password' });
    }
  } catch (err) {
    console.error(err.message);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

// User Profile
app.get('/userprofile', async (req, res) => {
  try {
    const { user_name } = req.query; // Change to req.query to get parameters from the query string

    // Fetch user profile data based on user_name
    const userProfileData = await pool.query('SELECT * FROM users WHERE user_name = $1', [user_name]);
    console.log('Fetching user profile:', userProfileData.rows[0]);
    res.json(userProfileData.rows[0]);
  } catch (error) {
    console.error('Error fetching user profile:', error.message);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

// Start the server
const PORT = 5000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
