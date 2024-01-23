import React, { useState } from 'react';

const LoginPage = () => {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');

  const handleLogin = async(e) => {
    // Implement login functionality here
    e.preventDefault();
    try {
        //send post request
        const body = {username, password};
        const response = await fetch("http://localhost:5000/login", {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify(body)
        });
    } catch (error) {
        
    }
    console.log(`Logging in with username: ${username} and password: ${password}`);
  };

  return (
    <div style={{ textAlign: 'center', padding: '20px', position: 'relative'}}>
        <img src={require('./codeforceLogo.jpg')} alt="Codeforces Logo" />
      <p><b>
        Fill in the form to login into Codeforces.
You can use Gmail as an alternative way to enter.</b><br />
        </p>
      <h2>Login into Codeforce</h2>
      <form>
        <label>
          Handle:
          <input
            type="text"
            value={username}
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
        <button type="button" onClick={handleLogin}>
          Login
        </button>
      </form>
      <p>
        <input type="checkbox" name="rememberMe" value="rememberMe" />
        Remember me for a month<br />
        Don't have an account? <a href="/register">Register</a>
      </p>
    </div>
  );
};

export default LoginPage;
