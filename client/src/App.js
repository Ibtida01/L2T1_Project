//App.js
import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import LoginPage from './Components/LoginPage';
import SignUpPage from './Components/SignUpPage';
import ProfilePage from './Components/ProfilePage';
import HomePage from './Components/HomePage';
import { AuthProvider } from './auth'; // Import the AuthProvider

const App = () => (
  <AuthProvider> {/* Wrap the Router with the AuthProvider */}
    <Router>
      <Switch>
        <Route path="/signup" component={SignUpPage} />
        <Route path="/login" exact component={LoginPage} />
        <Route path="/profile/:user_name" component={ProfilePage} />
        <Route path="/home" component={HomePage} />
        <Route path="/" component={HomePage} />
        <Route path="*" component={() => '404 NOT FOUND'} />
        <Route path="/contests" component={() => 'Contests'} />
        <Route path="/gym" component={() => 'Gym'} />
        <Route path="/blogs" component={() => 'Blogs'} />
        <Route  path="/problems" component={() => 'ProblemSet'} />
      </Switch>
    </Router>
  </AuthProvider>
);

export default App;
