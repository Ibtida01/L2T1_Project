import React, { useState, useEffect } from 'react';
import { Redirect } from 'react-router-dom';

const LoginPage = () => {
  const [user_name, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [redirectToProfile, setRedirectToProfile] = useState(false);
  const [refreshed, setRefreshed] = useState(false);

  const handleLogin = async (e) => {
    e.preventDefault();
    try {
      const body = { user_name, password };
      const response = await fetch('http://localhost:5000/login', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(body),
      });

      if (response.ok) {
        // Redirect to the profile page upon successful login
        setRedirectToProfile(true);
      } else {
        console.error('Login failed');
      }
    } catch (error) {
      console.error('Error during login:', error.message);
    }
  };

  useEffect(() => {
    // Check if redirected and not yet refreshed
    if (redirectToProfile && !refreshed) {
      // Refresh the page
      window.location.reload();
      // Set refreshed to true to avoid further refreshes
      setRefreshed(true);
    }
  }, [redirectToProfile, refreshed]);

  if (redirectToProfile) {
    return <Redirect to={`/home/${user_name}`} />;
  }

  return (
    <div style={{ textAlign: 'center', padding: '20px', position: 'relative' }}>
      <img src={require('./Images/codeforceLogo.jpg')} alt="Codeforces Logo" />
      <p>
        <b>Fill in the form to log in to Codeforces. You can use Gmail as an alternative way to enter.</b>
        <br />
      </p>
      <h2>Login into Codeforce</h2>
      <form onSubmit={handleLogin}>
        <label>
          Handle:
          <input
            type="text"
            value={user_name}
            onChange={(e) => setUsername(e.target.value)}
          />
        </label>
        <br />
        <label>
          Password:
          <input
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
          />
        </label>
        <br />
        <button type="submit">Login</button>
      </form>
      <p>
        <input type="checkbox" name="rememberMe" value="rememberMe" />
        Remember me for a month
        <br />
        Don't have an account? <a href="/signup">Register</a>
      </p>
    </div>
  );
};

export default LoginPage;
