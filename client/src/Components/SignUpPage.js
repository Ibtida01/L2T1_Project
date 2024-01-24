//this is the sign up page
import React, {useState} from 'react';

const SignUpPage = () => {
    const [user_name, setUsername] = useState('');
    const [password, setPassword] = useState('');
    const [email, setEmail] = useState('');

  const handleSignUp = async(e) => {
    // Implement login functionality here
    e.preventDefault();
    try {
        //send post request
        const body = {user_name, password, email};
        const response = await fetch("http://localhost:5000/signup", {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify(body)
        });
    } catch (error) {
        
    }
    console.log(`Signing up with username: ${user_name}, password: ${password}, and email: ${email}`);
  };

  return (
    <div style={{ textAlign: 'center', padding: '20px', position: 'relative'}}>
        <img src={require('./Images/codeforceLogo.jpg')} alt="Codeforces Logo" />
      <p><b>
        Fill in the form to register into Codeforces.
You can use Gmail as an alternative way to enter.</b><br />
        </p>
      <h2>Register into Codeforce</h2>
      <form onSubmit={handleSignUp}>
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
        <label>
          Email:
          <input
            type="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
          />
        </label>
        <br />
        <button type="button" onClick={handleSignUp}>
          Register
        </button>
      </form>
      <p>
        <input type="checkbox" name="rememberMe" value="rememberMe" />
        Remember me for a month<br />
        Already have an account? <a href="/login">Login</a>
      </p>
    </div>
  );
} ;
 
export default SignUpPage;