// client/src/HomePage.js
import React, { useState, useEffect } from 'react';
import { Link, useParams } from 'react-router-dom';
import '../styles/HomePage.css';
import { useAuth } from '../auth.js';

const HomePage = () => {
  const [userProfile, setUserProfile] = useState(null);
  const auth = useAuth(); // Using the auth context
  const { user_name } = useParams(); // Extract user_name from the URL

  const [localUserName, setLocalUserName] = useState(auth.user ? auth.user.user_name : '');
  useEffect(() => {
    const fetchUserProfile = async () => {
      try {
        // Check if the user is logged in before making the request
        if (auth.user) {
          const response = await fetch(`http://localhost:5000/home?user_name=${user_name}`);
          if (response.ok) {
            const userData = await response.json();
            setUserProfile(userData);
            console.log('home page loaded');
          } else {
            console.error(`Failed to fetch user profile. Status: ${response.status}`);
          }
        }
      } catch (error) {
        console.error('Error fetching user profile:', error.message);
      }
    };

    fetchUserProfile();
  }, [auth.user, user_name]); // Include auth.user and user_name in the dependency array

  useEffect(() => {
    // Update the localUserName state based on the authenticated user's information
    setLocalUserName(auth.user ? auth.user.user_name : '');
  }, [auth.user]);

  return (
    <div className="home-page">
      <div className="header">
        <div className="options-bar">
          <Link to="/contests" className="option">Contest</Link>
          <Link to="/gym" className="option">Gym</Link>
          <Link to="/blogs" className="option">Blogs</Link>
        </div>
        <div className="profile-option">
          <Link to={`/profile/${user_name}`}>User Profile</Link>
        </div>
      </div>
      <div className="content">
        <h2>Welcome to Codeforces Home!</h2>
      </div>
    </div>
  );
};

export default HomePage;
